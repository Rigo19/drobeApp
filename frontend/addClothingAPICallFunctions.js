//url for api endpoints used for uploading an image of clothing article 
imageCreation_url = "http://127.0.0.1:8000/createArticleOfClothingImage/0";
//url for api endpoints used for creating an articles of clothing in the database for the user
clothingArticleCreation_API_url = "http://127.0.0.1:8000/createArticleOfClothing/";
//url for api endpoints used for fetching all clothing articles 
getAllArticlesOfClothing_API_url  = "http://127.0.0.1:8000/getAllClothingArticles/";
getImageOfArticle = "http://127.0.0.1:8000/get_images_for_clothing_article/";

//global array holding object values(clothing)
articles = [];
const clothingTypetoTypeIDMap = new Map([
  ['t-shirt',0],
  ['polo shirt',1],
  ['long-sleeved',2],
  ['dress shirt',3],
  ['shorts', 4],
  ['jeans', 5],
  ['pants', 6],
  ['sweater', 7],
  ['jacket', 8],
  ['hoodie', 9],
  ['cap', 10],
  ['hat', 11],
  ['shoes', 12],
  ['sunglasses', 13],
  ['dress', 14],
  ['skirt', 15],
  ['watch', 16],
  ['sandals', 17]
])


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

   const data = await response.json().then(obj => obj["message"]);
   console.log(data);

   var array_length = data.length;
   console.log(array_length);
   for(var i = 0; i < array_length; i++){
    articles.push(data[i]);
   }
   //console.log(articles);
}

async function getImageFile(current_article_ID){
  var fullPath = getImageOfArticle +current_article_ID;
  const response = await fetch(fullPath, {
    method: "get",
  });
  console.log(current_article_ID);
  const blob = await response.blob();
  return blob;
}

//this function will allow the fetched data(clothing article info)
//to be displayed 
//(process the JSON response and genertate HTML elements for each piece of clothing)
async function displayArticlesOfClothing(){
  console.log("Dispaly articles:", articles);
  const clothesGrid = document.getElementById('thegrid');

  for(var i = 0; i < articles.length; i++){
    //create a section for each piece of clothing
    const divItem = document.createElement('div');
    divItem.className = 'clothes-item';
    current_article = articles[i];
    current_article_ID = current_article.clothingArticleID;
    console.log(current_article_ID);
    var curr_article_img = await getImageFile(current_article_ID);
    var curr_article_src = URL.createObjectURL(curr_article_img);
    //add clothing image 
    const img = document.createElement('img');
    //if image has a pic use if not use default image
    img.src = curr_article_src;
    //img.alt = ;

    //add clothing name
    const paragraphArtcName = document.createElement('p');
    paragraphArtcName.textContent = current_article.clothingArticleName;

    //add(connect) the image and name of piece of clothes into the box
    divItem.appendChild(img);
    divItem.appendChild(paragraphArtcName);
    //put the box into a section 
    clothesGrid.appendChild(divItem);
  }
}

// The line below allows for the createArticleImage function 
// to be called when the submit button is clicked
document.getElementById("submitButton").addEventListener("click", async (event) => {

    
    clothingType = document.getElementById('clothingtype').value;
    console.log(clothingType);

    clothingTypeID = clothingTypetoTypeIDMap.get(clothingType);
    console.log(clothingTypeID);

    clothingArticleName = document.getElementById('articleName').value;
    console.log(clothingArticleName);

    userID = localStorage.getItem("userID")
    console.log(userID);

    await createArticleOfClothing(clothingType, clothingTypeID, clothingArticleName, userID);
    await createArticleImage();

    const articles = await getAllArticlesOfClothing();
    displayArticlesOfClothing(articles);

    window.location.reload();
});

async function main() {
  localStorage.setItem("userID", 0);
  await getAllArticlesOfClothing();
  console.log(articles);
  await displayArticlesOfClothing();
}

main();


