imageCreation_url = "http://127.0.0.1:8000/createArticleOfClothingImage/0";
clothingArticleCreation_API_url = "http://127.0.0.1:8000/createArticleOfClothing/";

// Prevent default form submission and handle the button click
document.getElementById("submitButton").addEventListener('submit', (event) =>{
    event.preventDefault(); // Prevent the form from submitting normally
})

// The function to send an image file via API call
export async function createArticleImage(){
    var fileInput = document.querySelector('input[type="file"]')
    var formData = new FormData();

    formData.append("image", fileInput.files[0]);
    const response = await fetch(imageCreation_url, {
        method: "post",
        body: formData,
      });

    response.json().then((result) => console.log(result.message));
}


// The function below may be molded into however is best to use it.
// The function could be used as is, or it may be better if you modify it fit your code better
// Let me know if you have any questions about it - Blake
// Function to create an article of clothing - Rigo

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
document.getElementById("submitButton").addEventListener("click", (event) => {
    
    clothingType = document.getElementById('articleType').value;
    console.log(clothingType);
    clothingTypeID = document.getElementById('clothingTypeID').value;
    console.log(clothingTypeID);
    clothingArticleName = document.getElementById('articleName').value;
    console.log(clothingArticleName);
    userID = document.getElementById('userID').value;
    console.log(userID);
    createArticleOfClothing(clothingType, clothingTypeID, clothingArticleName, userID);
    createArticleImage();
});


