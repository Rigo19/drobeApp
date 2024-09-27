# Use the following link as reference for initial API setup:
# https://fastapi.tiangolo.com/tutorial/first-steps/

from typing import Annotated
import os
from dotenv import load_dotenv
from fastapi import FastAPI, UploadFile, File, HTTPException
from pydantic import BaseModel
import mysql.connector
from datetime import datetime


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


app = FastAPI()

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
@app.get("/")
async def root():
    return {"message": "This is the root endpoint AKA path AKA route"}


@app.post("/createArticleOfClothing/")
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



    #return clothingArticle


# FastAPI documentation for dealing with files is a good reference:
# https://fastapi.tiangolo.com/tutorial/request-files/

@app.post("/createArticleOfClothingImage/{userID}")
async def createArticleOfClothingImage(image: Annotated[bytes,File ()], userID: int):
   
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
    drobeDatabaseCursor.execute(insertImage_Query, dataForQuery)

    drobeDatabaseConnection.commit()
    # save image to DB with corresponding clothingArticleID

    return "Succesful Image Upload"


    ## **NOTE**
    ## The "/createArticleOfClothingImage/{userID}" and "/createArticleOfClothing/" will 
    # each have to be called by the front end code at the same time "


