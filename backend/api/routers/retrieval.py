from pydantic import BaseModel
import mysql.connector
from fastapi import APIRouter
from typing import Annotated, Optional
from fastapi import FastAPI, UploadFile, File, HTTPException, Response
from dotenv import load_dotenv
import os
from api.config.databaseconfig import drobeDatabaseConnection, drobeDatabaseCursor
while drobeDatabaseConnection == None or drobeDatabaseCursor == None:
    print("waiting")
    from api.config.databaseconfig import drobeDatabaseConnection, drobeDatabaseCursor

    
router = APIRouter()


#Following code would return all clothing articles for a user.
@router.get("/getAllClothingArticlesByUserID/{userID}")
async def get_all_clothing_articles_by_userID(userID: int):
    retrieve_articles_by_userID_query = "SELECT * FROM ArticlesOfClothing WHERE userID = %s"
    
    drobeDatabaseCursor.execute(retrieve_articles_by_userID_query, (userID,))
    articles = drobeDatabaseCursor.fetchall()

    if not articles:
        raise HTTPException(status_code=404, detail="Clothing article not found")
    
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

    return {"message": result}

#Following would return the image/images for a single article of clothing
@router.get("/get_images_for_clothing_article/{clothingArticleID}")
async def get_images_for_clothing_article(clothingArticleID: int):
    retrieve_images_query = "SELECT Image FROM ArticlesToImage WHERE clothingArticleID = %s"
    
    drobeDatabaseCursor.execute(retrieve_images_query, (clothingArticleID,))
    images = drobeDatabaseCursor.fetchall()

    if not images:
        raise HTTPException(status_code=404, detail="Clothing article not found")
    
    firstImage = images[0][0]

    return Response(content = firstImage, media_type = "image")

#Following code could be useful in testing frontend (Probably won't be used in final code)
@router.get("/getAllClothingArticles/")
async def get_all_clothing_articles():
    retrieve_all_articles_query = "SELECT * FROM ArticlesOfClothing"
    
    drobeDatabaseCursor.execute(retrieve_all_articles_query)
    articles = drobeDatabaseCursor.fetchall()

    if not articles:
        raise HTTPException(status_code=404, detail="Clothing article not found")
    
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

    return {"message": result}