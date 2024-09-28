imageCreation_url = "http://127.0.0.1:8000/createArticleOfClothingImage/0";

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


document.getElementById("submitButton").addEventListener("click", createArticleImage);
