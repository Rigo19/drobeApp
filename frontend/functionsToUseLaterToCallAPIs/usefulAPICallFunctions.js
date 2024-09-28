imageCreation_url = "http://127.0.0.1:8000/createArticleOfClothingImage/0";
clothingArticleCreation_API_url = "http://127.0.0.1:8000/createArticleOfClothing/";


// The function below will be used to send an image file on an API call
async function createArticleImage(){
    var fileInput = document.querySelector('input[type="file"]')
    var formData = new FormData();

    formData.append("image", fileInput.files[0]);
    const response = await fetch(imageCreation_url, {
        method: "post",
        body: formData,
      });

    response.json().then((result) => console.log(result.message));
}


async function createArticleOfClothing(clothingType, clothingTypeID, clothingArticleName, userID ){

    const response = await fetch(clothingArticleCreation_API_url, {
        method: "post",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify({
          clothingType: clothingType,
          clothingArticleName: clothingArticleName,
          userID: userID,
          clothingTypeID: clothingTypeID,
        }),
      }).then((response) =>
        response.json().then((result) => console.log(result.message))
      );
    }


// The line below allows for the createArticleImage function 
// to be called when the submit button is clicked
document.getElementById("submitButton").addEventListener("click", createArticleImage);
