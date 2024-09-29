# Use the following link as reference for initial API setup:
# https://fastapi.tiangolo.com/tutorial/first-steps/

from typing import Annotated
import os
from dotenv import load_dotenv
from fastapi import FastAPI, UploadFile, File, HTTPException, Response
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import mysql.connector
from datetime import datetime
import sys


from mysql.connector import errors
#
# 
# mysql.connector.Error
#errors.DatabaseError

load_dotenv()

databaseHost = os.getenv('host')
databaseUser = os.getenv('user')
databasePassword = os.getenv('password')



drobeDatabaseConnection = mysql.connector.connect(
    host = databaseHost,
    user = databaseUser,
    password= databasePassword,
    database = 'drobeApp'
)


# the cursor defined below is what you will 
# use to run queries with the database

drobeDatabaseCursor = drobeDatabaseConnection.cursor()

origins = ['*']

app = FastAPI()
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# this clothingArticle model below represents the fields that 
# will be received in the Request body sent from the UI

class clothingArticle(BaseModel):
    clothingTypeID: int
    clothingType: str
    clothingArticleName: str
    userID: int


createArticleOfClothing_SQL_Query = ("INSERT INTO ArticlesOfClothing "
                                     "(clothingTypeID, clothingType, clothingArticleName, userID, timeAdded, numberOfOutfitsAssociatedWith) "
                                     "VALUES (%s, %s, %s, %s, %s, %s)")
selectingArticleID_Query = ("select clothingArticleID from ArticlesOfClothing where userID = %s ")
insertImage_Query = ("insert into ArticlesToImage values (%s, %s)")
deleteArticleIDBecauseDatabaseException_Query = ("DELETE from ArticlesOfClothing where clothingArticleID = %s ")


@app.get("/")
async def root():
    return {"message": "This is the root endpoint AKA path AKA route"}


@app.post("/createArticleOfClothing/", status_code=201)
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
   

    #return clothingArticle


# FastAPI documentation for dealing with files is a good reference:
# https://fastapi.tiangolo.com/tutorial/request-files/

@app.post("/createArticleOfClothingImage/{userID}" ,status_code=201)
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
        return {"Message":"Clothing Article was deleted from DB due to error in saving the image!"}

    return {"message":"Succesful Image Upload"}


    ## **NOTE**
    ## The "/createArticleOfClothingImage/{userID}" and "/createArticleOfClothing/" will 
    # each have to be called by the front end code at the same time "


#Following code would return all clothing articles for a user.
@app.get("/getAllClothingArticlesByUser/")
async def get_all_clothing_articles_by_user(userID: int):
    retrieve_articles_by_user_query = "SELECT * FROM ArticlesOfClothing WHERE userID = %s"
    
    drobeDatabaseCursor.execute(retrieve_articles_by_user_query, (userID,))
    articles = drobeDatabaseCursor.fetchall()

    if not articles:
        return {"message": "No articles found in the user's closet"}
    
    result = []
    for article in articles:
        result.append({
            "clothingArticleID": article[0],
            "clothingTypeID": article[1],
            "clothingType": article[2],
            "clothingArticleName": article[3],
            "userID": article[4],
            "timeAdded": article[5],
            "numberOfOutfitsAssociatedWith": article[6]
        })

    return result

#Following would return the image/images for a single article of clothing
@app.get("/get_images_for_clothing_article/{clothingArticleID}")
async def get_images_for_clothing_article(clothingArticleID: int):
    retrieve_images_query = "SELECT * FROM ArticlesToImage WHERE clothingArticleID = %s"
    
    drobeDatabaseCursor.execute(retrieve_images_query, (clothingArticleID,))
    images = drobeDatabaseCursor.fetchall()

    if not images:
        return {"message": "No images found for this clothing article"}
    
    result = []
    for image in images:
        result.append({
            "clothingArticleID": image[0],
            "image": image[1]
        })

    return result

