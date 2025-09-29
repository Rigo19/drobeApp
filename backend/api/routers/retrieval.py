from pydantic import BaseModel
import mysql.connector
from fastapi import APIRouter
from typing import Annotated, Optional
from fastapi import FastAPI, UploadFile, File, HTTPException, Response
from dotenv import load_dotenv
import os
from api.config.databaseconfig import get_connection

# Define the login request model
class LoginRequest(BaseModel):
    email: str
    password: str

router = APIRouter()

# Helper function to get database connection safely
def get_db_connection():
    try:
        return get_connection()
    except Exception as e:
        print(f"Database connection error: {e}")
        raise HTTPException(status_code=500, detail="Database connection failed")

# Login endpoint
@router.post("/loginAttempt/", status_code=201)
async def login_attempt(login_data: LoginRequest):
    try:
        # Get database connection
        drobeDatabaseConnection, drobeDatabaseCursor = get_db_connection()
        
        # Hash the provided password to compare with stored hash
        import hashlib
        hashed_password = hashlib.sha256(login_data.password.encode()).hexdigest()
        
        # Query to check if user exists and password matches
        login_query = "SELECT userID FROM UserInfo WHERE email = %s AND hashedPassword = %s"
        
        drobeDatabaseCursor.execute(login_query, (login_data.email, hashed_password))
        user = drobeDatabaseCursor.fetchone()
        
        if not user:
            # Check if email exists
            email_check_query = "SELECT userID FROM UserInfo WHERE email = %s"
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
    try:
        drobeDatabaseConnection, drobeDatabaseCursor = get_db_connection()
        
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
    except Exception as e:
        print(f"Error getting clothing articles: {e}")
        raise HTTPException(status_code=500, detail="Database error")

#Following would return the image/images for a single article of clothing
@router.get("/get_images_for_clothing_article/{clothingArticleID}")
async def get_images_for_clothing_article(clothingArticleID: int):
    try:
        drobeDatabaseConnection, drobeDatabaseCursor = get_db_connection()
        
        retrieve_images_query = "SELECT Image FROM ArticlesToImage WHERE clothingArticleID = %s"
        
        drobeDatabaseCursor.execute(retrieve_images_query, (clothingArticleID,))
        images = drobeDatabaseCursor.fetchall()

        if not images:
            raise HTTPException(status_code=404, detail="Clothing article not found")
        
        firstImage = images[0][0]

        return Response(content = firstImage, media_type = "image")
    except Exception as e:
        print(f"Error getting images: {e}")
        raise HTTPException(status_code=500, detail="Database error")

#Following code could be useful in testing frontend (Probably won't be used in final code)
@router.get("/getAllClothingArticles/")
async def get_all_clothing_articles():
    try:
        drobeDatabaseConnection, drobeDatabaseCursor = get_db_connection()
        
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
    except Exception as e:
        print(f"Error getting all clothing articles: {e}")
        raise HTTPException(status_code=500, detail="Database error")