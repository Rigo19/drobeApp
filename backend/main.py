# Use the following link as reference for initial API setup:
# https://fastapi.tiangolo.com/tutorial/first-steps/

import os
from dotenv import load_dotenv
from fastapi import FastAPI
from pydantic import BaseModel
import mysql.connector

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

print(drobeDatabaseConnection)

app = FastAPI()

class clothingArticle(BaseModel):
    clothingTypeID: int
    clothingType: str
    clothingArticleName: str
    userID: int


@app.get("/")
async def root():
    return {"message": "This is the root endpoint AKA path AKA route"}


@app.post("/createArticleOfClothing")
async def createArticleOfClothing(clothingArticle: clothingArticle):
    clothingType = clothingArticle.clothingType
    clothingTypeID = clothingArticle.clothingTypeID
    clothingArticleName = clothingArticle.clothingArticleName
    userID = clothingArticle.userID
    print(clothingArticle)


