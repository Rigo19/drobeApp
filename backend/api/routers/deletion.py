from pydantic import BaseModel
from fastapi import APIRouter
import mysql.connector
from typing import Annotated, Optional
from fastapi import FastAPI, UploadFile, File, HTTPException, Response
from dotenv import load_dotenv
import os


# DB setup
load_dotenv()
databaseHost = os.getenv('host')
databaseUser = os.getenv('user')
databasePassword = os.getenv('password')
drobeDatabaseConnection = mysql.connector.connect(host = databaseHost, user = databaseUser,password= databasePassword, database = 'drobeApp')
drobeDatabaseCursor = drobeDatabaseConnection.cursor()


delete_clothing_article_query = "DELETE FROM ArticlesOfClothing WHERE clothingArticleID = %s"
deleteArticleIDBecauseDatabaseException_Query = ("DELETE from ArticlesOfClothing where clothingArticleID = %s ")

router = APIRouter()

@router.delete("/deleteClothingArticle/{clothingArticleID}", status_code=200)
async def delete_clothing_article(clothingArticleID: int):

    try:
        # does clothing article exists
        drobeDatabaseCursor.execute("SELECT 1 FROM ArticlesOfClothing WHERE clothingArticleID = %s", (clothingArticleID,))
        article_exists = drobeDatabaseCursor.fetchone()

        if not article_exists:
            raise HTTPException(status_code=404, detail="Clothing article not found")

         # if the article exists, then delete it from the database
        drobeDatabaseCursor.execute(delete_clothing_article_query, (clothingArticleID,))
        drobeDatabaseConnection.commit()

        if drobeDatabaseCursor.rowcount == 0:
            raise HTTPException(status_code=404, detail="Clothing article not found")

        return {"message": "Clothing article deleted successfully"}

    except mysql.connector.Error as err:
        raise HTTPException(status_code=500, detail=f"Database error: {str(err)}")