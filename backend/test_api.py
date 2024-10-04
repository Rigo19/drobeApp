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
    path = dirname(dirname(abspath(__file__))) + "/images/sampleClothes/tshirts/tshirt1.jpg"
    with open(path, "rb") as image:
        f = image.read()
        byteImage = bytes(f)

    response = client.post("/createArticleOfClothingImage/0", data= {"image":f})
    assert response.status_code == 201

# intentionally misspelling image as imag
def test_create_ClothingArticleImageBadExample1():
    # first part of function below gets the absolute path to the directory above this current file
    path = dirname(dirname(abspath(__file__))) + "/images/sampleClothes/tshirts/tshirt1.jpg"
    with open(path, "rb") as image:
        f = image.read()
        byteImage = bytes(f)

    response = client.post("/createArticleOfClothingImage/0", data= {"imag":f})
    assert response.status_code == 422


    


