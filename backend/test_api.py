from fastapi.testclient import TestClient

from .main import app
from fastapi.encoders import jsonable_encoder
from pydantic import BaseModel

client = TestClient(app)

def test_create_ClothingArticleGoodExample():
    #json_compatible = jsonable_encoder(clothingarticle)
    response = client.post("/createArticleOfClothing/",
        json={
                "clothingType":"t-shirt",
                "clothingArticleName":"Blake's Favorite Shirt",
                "userID":0,
                "clothingTypeID":0
            })
    
    assert response.status_code == 201
    assert response.json() == {"message": "Succesfully Uploaded clothing article to DB"}

def test_create_ClothingArticleBadExample1():
    response = client.post("/createArticleOfClothing/",
        json={
                "clothingType":"t-shirt",
                "clothingArticleName":"Blake's Favorite Shirt",
                "userID":0,
                "clothingTypeID":"testing"
            })
    assert response.status_code == 422

def test_create_ClothingArticleBadExample2():
    response = client.post("/createArticleOfClothin/",
        json={
                "clothingType":"t-shirt",
                "clothingArticleName":"Blake's Favorite Shirt",
                "userID":0,
                "clothingTypeID":0
            })
    assert response.status_code == 404
    assert response.json() == { "detail": "Not Found"}

