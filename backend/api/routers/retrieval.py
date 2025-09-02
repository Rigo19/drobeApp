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

# Define the login request model
class LoginRequest(BaseModel):
    email: str
    password: str

router = APIRouter()

# Login endpoint
@router.post("/loginAttempt/")
async def login_attempt(login_data: LoginRequest):
    try:
        # Query to check if user exists and password matches
        login_query = "SELECT userID FROM Users WHERE email = %s AND password = %s"
        
        drobeDatabaseCursor.execute(login_query, (login_data.email, login_data.password))
        user = drobeDatabaseCursor.fetchone()
        
        if not user:
            # Check if email exists
            email_check_query = "SELECT userID FROM Users WHERE email = %s"
            drobeDatabaseCursor.execute(email_check_query, (login_data.email,))
            email_exists = drobeDatabaseCursor.fetchone()
            
            if not email_exists:
                raise HTTPException(status_code=404, detail="No account with this email")
            else:
                raise HTTPException(status_code=401, detail="Incorrect password")
        
        userID = user[0]
        return {"userID": userID, "message": "Login successful"}
        
    except HTTPException:
        raise
    except Exception as e:
        print(f"Login error: {e}")
        raise HTTPException(status_code=500, detail="Internal server error")

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