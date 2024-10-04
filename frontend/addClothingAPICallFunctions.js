//url for api endpoints used for uploading an image of clothing article 
imageCreation_url = "http://127.0.0.1:8000/createArticleOfClothingImage/0";
//url for api endpoints used for creating an articles of clothing in the database for the uer
clothingArticleCreation_API_url = "http://127.0.0.1:8000/createArticleOfClothing/";
//url for api endpoints used for fetching all clothing articles 
getAllArticlesOfClothing_API_url  = "http://127.0.0.1.8000/getAllArticlesOfClothing"


// Prevent default form submission and handle the button click
document.getElementById("submitButton").addEventListener('submit', (event) =>{
    event.preventDefault(); // Prevent the form from submitting normally
})

// The function to send an image file via API call
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

//get(fetcht) all the clothing pieces from the database of the specific user
async function getAllArticlesOfClothing(){
   const response = await fetch(getAllArticlesOfClothing_API_url, {
    method: "Get",
    headers: {"Content-Type": "application/json"}
   });

   const data = await response.json();
   return data.articles;
}

//this function will allow the fetched data(clothing article info)
//to be displayed 
//(process the JSON response and genertate HTML elements for each piece of clothing)



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
    window.location.reload();
});


