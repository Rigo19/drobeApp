from pydantic import BaseModel
from fastapi import APIRouter
from datetime import datetime
import mysql.connector
from typing import Annotated, Optional
from fastapi import FastAPI, UploadFile, File, HTTPException, Response
from dotenv import load_dotenv
import os
from api.config.databaseconfig import drobeDatabaseConnection, drobeDatabaseCursor
while drobeDatabaseConnection == None or drobeDatabaseCursor == None:
    print("waiting")
    from api.config.databaseconfig import drobeDatabaseConnection, drobeDatabaseCursor


# Queries Section
createArticleOfClothing_SQL_Query = ("INSERT INTO ArticlesOfClothing "
                                     "(clothingTypeID, clothingType, clothingArticleName, userID, timeAdded, numberOfOutfitsAssociatedWith) "
                                     "VALUES (%s, %s, %s, %s, %s, %s)")
createOutfit_SQL_Query = (
    "INSERT INTO Outfits (userID, outfitName) VALUES (%s, %s)"
)
selectingArticleID_Query = ("select clothingArticleID from ArticlesOfClothing where userID = %s ")
insertImage_Query = ("insert into ArticlesToImage values (%s, %s)")
insertOutfitItems_SQL_Query = (
    "INSERT INTO OutfitItems (outfitID, clothingArticleID) VALUES (%s, %s)"
)
deleteArticleIDBecauseDatabaseException_Query = ("DELETE from ArticlesOfClothing where clothingArticleID = %s ")


# this clothingArticle model below represents the fields that 
# will be received in the Request body sent from the UI
class clothingArticle(BaseModel):
    clothingTypeID: int
    clothingType: str
    clothingArticleName: str
    userID: int


router = APIRouter()


@router.post("/createArticleOfClothing/", status_code=201)
async def createArticleOfClothing(clothingArticle: clothingArticle):
    #line below creates the timestamp that will be stored in database
    timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    clothingType = clothingArticle.clothingType
    clothingTypeID = clothingArticle.clothingTypeID
    clothingArticleName = clothingArticle.clothingArticleName
    userID = clothingArticle.userID
    numberOfOutfitsAssociatedWith = 0

    #I highly recommend the link below to see official documentation on how mysql connector uses the execute function below
    # https://dev.mysql.com/doc/connector-python/en/connector-python-example-cursor-transaction.html

    #Essentially here, I am lining up the values to be inserted into the ArticlesOfClothing database table. This is used in 
    # conjunction with the 'createArticleOfClothing_SQL_Query' query defined higher in the program

    clothing_data = (clothingTypeID, clothingType, clothingArticleName, userID, timestamp, numberOfOutfitsAssociatedWith)

    try:
        drobeDatabaseCursor.execute(createArticleOfClothing_SQL_Query, clothing_data)
        #print(clothingArticle)

        drobeDatabaseConnection.commit()

    except mysql.connector.Error:
        
        raise HTTPException(status_code=500, detail="Failure saving to DB")
    
    return {"message": "Succesfully Uploaded clothing article to DB"}
   

# FastAPI documentation for dealing with files is a good reference:
# https://fastapi.tiangolo.com/tutorial/request-files/

@router.post("/createArticleOfClothingImage/{userID}" ,status_code=201)
async def createArticleOfClothingImage(image: Annotated[bytes,File ()], userID: int, response: Response):
    
    # It may seem strange but mysql requires a tuple to be used for the values when executing
    userID = (userID,)

    # needing to find out clothingArticleID from the ArticlesOfClothing table
    drobeDatabaseCursor.execute(selectingArticleID_Query, userID)
    
    # this code retrieves the clothingArticleID associated to the most recent creation by the user
    test = drobeDatabaseCursor.fetchall()
    clothingArticleID = test[-1][0]
    
    # running query that will save the clothingArticleID and image file to the db table
    # entitled 'ArticleToImage'
    dataForQuery = (clothingArticleID, image)

    try:
        drobeDatabaseCursor.execute(insertImage_Query, dataForQuery)
        drobeDatabaseConnection.commit()

    except mysql.connector.errors.IntegrityError:
        response.status_code = 200
        return {"message":"Image was previously saved in the database!"}
    # save image to DB with corresponding clothingArticleID

    except mysql.connector.errors.Error:
        # if there is an error saving the image, the clothing article will be deleted from the DB table

        clothingArticleID = (clothingArticleID,)
        
        drobeDatabaseCursor.execute(deleteArticleIDBecauseDatabaseException_Query, clothingArticleID)
        drobeDatabaseConnection.commit()

        response.status_code = 200
        return {"message":"Clothing Article was deleted from DB due to error in saving the image!"}

    return {"message":"Succesful Image Upload"}
    ## **NOTE**
    ## The "/createArticleOfClothingImage/{userID}" and "/createArticleOfClothing/" will 
    # each have to be called by the front end code at the same time "


class Outfit(BaseModel):
    userID: int
    outfitName: str
    clothingArticles: list[int]  # List of clothing article IDs

@router.post("/createOutfit/", status_code=201)
async def createOutfit(outfit: Outfit):
    try:
        # Insert the new outfit into the database
        drobeDatabaseCursor.execute(createOutfit_SQL_Query, (outfit.userID, outfit.outfitName))
        drobeDatabaseConnection.commit()

        # Get the ID of the newly created outfit
        outfitID = drobeDatabaseCursor.lastrowid

        # If there are clothing articles, link them to the new outfit
        if outfit.clothingArticles:
            for clothingID in outfit.clothingArticles:
                drobeDatabaseCursor.execute(insertOutfitItems_SQL_Query, (outfitID, clothingID))
            drobeDatabaseConnection.commit()

    except mysql.connector.Error as e:
        raise HTTPException(status_code=500, detail="Failed to create outfit: " + str(e))

    return {"message": "Outfit created successfully", "outfitID": outfitID}