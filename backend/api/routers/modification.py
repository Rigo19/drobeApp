from pydantic import BaseModel
from fastapi import APIRouter
import mysql.connector
from typing import Annotated, Optional
from fastapi import FastAPI, UploadFile, File, HTTPException, Response
import api.config.databaseconfig
from dotenv import load_dotenv
import os

# DB setup
load_dotenv()
databaseHost = os.getenv('host')
databaseUser = os.getenv('user')
databasePassword = os.getenv('password')
drobeDatabaseConnection = mysql.connector.connect(host = databaseHost, user = databaseUser,password= databasePassword, database = 'drobeApp')
drobeDatabaseCursor = drobeDatabaseConnection.cursor()



router = APIRouter()

#Following code should update item type and name
class clothingArticleUpdate(BaseModel):
    clothingType: Optional[str] = None
    clothingArticleName: Optional[str] = None
    

@router.patch("/updateClothingArticleData/{clothingArticleId}")
async def update_clothing_article_data(clothingArticleId: int, clothingArticle: clothingArticleUpdate):

    update_query = "UPDATE ArticlesOfClothing SET "

    update_fields = []
    update_values = []

    if clothingArticle.clothingType is not None:
        update_fields.append("clothingType = %s")
        update_values.append(clothingArticle.clothingType)

    if clothingArticle.clothingArticleName is not None:
        update_fields.append("clothingArticleName = %s")
        update_values.append(clothingArticle.clothingArticleName)

    if not update_fields:
        raise HTTPException(status_code = 400, detail ="No data provided to update")
    
    update_query += ", ".join(update_fields) + " WHERE clothingArticleID = %s"
    update_values.append(clothingArticleId)

    try:
        drobeDatabaseCursor.execute(update_query, tuple(update_values))
        drobeDatabaseConnection.commit()

        if drobeDatabaseCursor.rowcount == 0:
            raise HTTPException(status_code=404, detail="Clothing article not found")
        
        return {"message": "Clothing article data updated successfully"}
    
    except mysql.connector.Error as err:
        raise HTTPException(status_code=500, detail=f"Database error: {str(err)}")
    
#Following code should update the image for an item

@router.patch("/updateClothingArticleImage/{clothingArticleID}")
async def update_clothing_article_image(clothingArticleID: int, image: Annotated[bytes,File(...)]):
    
    check_ID = "SELECT 1 FROM ArticlesOfClothing WHERE clothingArticleID = %s"

    try:
        drobeDatabaseCursor.execute(check_ID, (clothingArticleID,))
        exists = drobeDatabaseCursor.fetchone()

        if not exists:
            raise HTTPException(status_code=404, detail="Clothing article not found")
        
        insert_image_query = "UPDATE ArticlesToImage SET Image=%s WHERE clothingArticleID=%s"
        drobeDatabaseCursor.execute(insert_image_query, (image, clothingArticleID))

        drobeDatabaseConnection.commit()

        return {"message": "Image updated successfully"}
    
    except mysql.connector.Error as err:
        raise HTTPException(status_code=500, detail=f"Database error: {str(err)}")
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))