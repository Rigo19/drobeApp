from fastapi.testclient import TestClient

from .main import app
from fastapi.encoders import jsonable_encoder
from pydantic import BaseModel
from os.path import dirname, abspath

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

# intentionally mispelling URL as part of the test
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


def test_create_ClothingArticleImageGoodExample1():
    # first part of function below gets the absolute path to the directory above this current file
    path = dirname(dirname(dirname(abspath(__file__)))) + "/images/sampleClothes/tshirts/tshirt1.jpg"
    with open(path, "rb") as image:
        f = image.read()
        byteImage = bytes(f)

    response = client.post("/createArticleOfClothingImage/0", data= {"image":f})
    assert response.status_code == 201

# intentionally misspelling image as imag
def test_create_ClothingArticleImageBadExample1():
    # first part of function below gets the absolute path to the directory above this current file
    path = dirname(dirname(dirname(abspath(__file__)))) + "/images/sampleClothes/tshirts/tshirt1.jpg"
    with open(path, "rb") as image:
        f = image.read()
        byteImage = bytes(f)

    response = client.post("/createArticleOfClothingImage/0", data= {"imag":f})
    assert response.status_code == 422

# missing the field name of 'image' in front of the image for the request
def test_create_ClothingArticleImageBadExample2():
    # first part of function below gets the absolute path to the directory above this current file
    path = dirname(dirname(dirname(abspath(__file__)))) + "/images/sampleClothes/tshirts/tshirt1.jpg"
    with open(path, "rb") as image:
        f = image.read()
        byteImage = bytes(f)

    response = client.post("/createArticleOfClothingImage/0", data = {" ":f})
    assert response.status_code == 422
    

def test_get_AllClothingArticlesByUserIDGoodExample1():
    response = client.get("/getAllClothingArticlesByUserID/0")
    
    assert response.status_code == 200
    assert "message" in response.json()
    assert len(response.json()["message"]) > 0

def test_get_AllClothingArticlesByUserIDGoodExample2():
    response = client.get("/getAllClothingArticlesByUserID/100000")

    assert response.status_code == 200
    assert response.json()["message"] == "No articles found in the user's closet"


def test_get_ClothingArticleImageGoodExample1():
    response = client.get("/get_images_for_clothing_article/5000")

    assert response.status_code == 200
    assert response.json()["message"] == "No images found for this clothing article"

def test_get_ClothingArticleImageBadExample1():
    # case where articleID isn't entered
    response = client.get("/get_images_for_clothing_article/")

    assert response.status_code == 404

def test_changeClothingArticleDataBadExample1():
    response = client.patch("/updateClothingArticleData/1900" ,
                            json={"clothingType":"jacket", "clothingArticleName": "Northface"})

    assert response.status_code == 404
    assert response.json()["detail"] == "Clothing article not found"

# forgetting articleID in the endpoint
def test_changeClothingArticleDataBadExample2():
    response = client.patch("/updateClothingArticleData/" ,
                            json={"clothingType":"jacket", "clothingArticleName": "Northface"})

    assert response.status_code == 404
    assert response.json()["detail"] == "Not Found"

# entering path forgetting a clothingArticleID
def test_changeClothingArticleImageBadExample1():
    response = client.patch("/updateClothingArticleImage/")

    assert response.status_code == 404
    assert response.json()["detail"] == "Not Found"

def test_changeClothingArticleImageBadExample2():
    path = dirname((dirname(dirname(abspath(__file__))))) + "/images/sampleClothes/tshirts/tshirt1.jpg"
    with open(path, "rb") as image:
        f = image.read()
        byteImage = bytes(f)
    response = client.patch("/updateClothingArticleImage/100", data= {"image":f})

    assert response.status_code == 200
    
#/Users/blakejameson/Desktop/School-Semesters/Fall-2024/CS3398-SWE/class-projects/drobeapp/images/sampleClothes/tshirts/tshirt1.jpg




