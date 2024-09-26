# Use the following link as reference for initial API setup:
# https://fastapi.tiangolo.com/tutorial/first-steps/

import os
from dotenv import load_dotenv
from fastapi import FastAPI, UploadFile
from pydantic import BaseModel
import mysql.connector
from datetime import datetime



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

    drobeDatabaseCursor.execute(createArticleOfClothing_SQL_Query, clothing_data)
    #print(clothingArticle)

    drobeDatabaseConnection.commit()

    return clothingArticle


# FastAPI documentation for dealing with files is a good reference:
# https://fastapi.tiangolo.com/tutorial/request-files/

@app.post("/createArticleOfClothingImage/")
async def createArticleOfClothingImage(image: UploadFile):
    ok = image.file
    print(ok)


