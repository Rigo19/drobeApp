//url for api endpoints used for uploading an image of clothing article 
// Will be set dynamically with actual userID
//url for api endpoints used for creating an articles of clothing in the database for the user
clothingArticleCreation_API_url = API_ENDPOINTS.CREATE_CLOTHING_ARTICLE;
//url for api endpoints used for fetching all clothing articles 
var getAllArticlesOfClothing_API_url = API_ENDPOINTS.GET_ALL_CLOTHING_ARTICLES;
getImageOfArticle = API_ENDPOINTS.GET_ARTICLE_IMAGE;



//global array holding object values(clothing). Loaded when web page loads intitally
var articles = [];
var copyOfAllArticles = [];

// holds the articles of data based on which filter button is clicked.
var selectedArticles = [];


let categoryButtonElements = [];

// map that has 1 for category button if it is selected, 0 if it isnt
var categoryButtonSelectedMap = new Map([
  ['all',1],
  ['tops',0],
  ['bottoms',0],
  ['shoes', 0],
  ['accessories', 0]
  ])

var articleIDToBlobFiles = new Map();

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

/*All
Tops
Bottoms
Shoes
Accessories*/

const broadCategoryAndTypes = new Map([
  ['tops', [0,1,2,3,7,8,9]],
  ['bottoms',[4,5,6]],
  ['shoes', [12, 17]],
  ['accesories', [10, 11, 13, 16]]
])


let ArticleIDToImageSrc = new Map();


async function updateWhichButtonisClicked(buttonID){

  for (let i = 0; i < categoryButtonElements.length; i++){
    let button = categoryButtonElements[i];
    
    if (button.id == buttonID){
      button.style.backgroundColor = '#e9ecef';
      
    }

    else{
      button.style.backgroundColor = "#f8f9fa";
      button.classList.add('category-button');
    }
  }
}

function returnArrayOfType(categoryType){
  return broadCategoryAndTypes.get(categoryType)
}

document.querySelectorAll(".category-button").forEach(btn => btn.addEventListener("click", async e => {

  buttonValue = btn.id;

  await updateWhichButtonisClicked(buttonValue);

  if (buttonValue == "all"){
    selectedArticles = articles;
    document.querySelectorAll('.clothes-item').forEach(e => e.remove());
    await displayArticlesOfClothingAFTERFiltering();
    return;
  }


  var result = await returnArrayOfType(buttonValue);
  //console.log(result)
  await FilterAllArticlesForSelectedCategoryClothes(result);
  document.querySelectorAll('.clothes-item').forEach(e => e.remove());

  await displayArticlesOfClothingAFTERFiltering();

}));



async function FilterAllArticlesForSelectedCategoryClothes(typesIDArray){
  let result = []
  for (var i = 0; i < typesIDArray.length; i++){
    let currentElement = typesIDArray[i];
    
    let allArticlesWithThisTypeID = articles.filter( (article) => article.clothingTypeID == currentElement);
    //console.log(allArticlesWithThisTypeID)
    for (const element of allArticlesWithThisTypeID){
      result.push(element);
    }
    
  }
  selectedArticles = result;
  console.log(result);
}


// Prevent default form submission and handle the button click
document.getElementById("submitButton").addEventListener('submit', (event) =>{
    event.preventDefault(); // Prevent the form from submitting normally
})

// The function to send an image file via API call
async function createArticleImage(){
    var fileInput = document.querySelector('input[type="file"]')
    var formData = new FormData();
    
    // Get the actual userID from localStorage
    var userID = localStorage.getItem("userID");
    var imageCreation_url = API_ENDPOINTS.CREATE_ARTICLE_IMAGE + userID;

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

async function displayArticlesOfClothingAFTERFiltering(){
  const clothesGrid = document.getElementById('thegrid');

  for(var i = 0; i < selectedArticles.length; i++){
    //create a section for each piece of clothing
    const divItem = document.createElement('div');
    divItem.className = 'clothes-item';
    var current_article = selectedArticles[i];
    var current_article_ID = current_article.clothingArticleID;
    //console.log(current_article_ID);

    var curr_article_src = ArticleIDToImageSrc.get(current_article_ID);
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

//get(fetcht) all the clothing pieces from the database of the specific user
async function getAllArticlesOfClothing(){
   // Get the userID from localStorage
   var userID = localStorage.getItem("userID");
   var getAllArticlesOfClothing_API_url_with_user = getAllArticlesOfClothing_API_url + userID;
   
   const response = await fetch(getAllArticlesOfClothing_API_url_with_user, {
    method: "Get",
    headers: {"Content-Type": "application/json"}
   });

   categoryButtonElements = document.getElementsByClassName('category-button');

   const data = await response.json().then(obj => obj["message"]);
   console.log(data);

   var array_length = data.length;
   console.log(array_length);
   for(var i = 0; i < array_length; i++){
    articles.push(data[i]);
   }
   copyOfAllArticles = articles;
   selectedArticles = articles;
   console.log(articles);
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
  console.log("Dispaly articles:", selectedArticles);
  const clothesGrid = document.getElementById('thegrid');

  for(var i = 0; i < selectedArticles.length; i++){
    //create a section for each piece of clothing
    const divItem = document.createElement('div');
    divItem.className = 'clothes-item';
    var current_article = selectedArticles[i];
    var current_article_ID = current_article.clothingArticleID;
    console.log(current_article_ID);
    
    //add clothing image 
    const img = document.createElement('img');
    
    try {
      var curr_article_img = await getImageFile(current_article_ID);
      var curr_article_src = URL.createObjectURL(curr_article_img);
      ArticleIDToImageSrc.set(current_article_ID, curr_article_src);
      img.src = curr_article_src;
    } catch (error) {
      console.log("No image found for article", current_article_ID);
      // Use a default placeholder image
      img.src = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAwIiBoZWlnaHQ9IjEwMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cmVjdCB3aWR0aD0iMTAwIiBoZWlnaHQ9IjEwMCIgZmlsbD0iI2NjYyIvPjx0ZXh0IHg9IjUwIiB5PSI1MCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE0IiBmaWxsPSIjNjY2IiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBkeT0iLjNlbSI+Tm8gSW1hZ2U8L3RleHQ+PC9zdmc+";
      img.alt = "No image available";
    }
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

    //displayArticlesOfClothing(articles);

    window.location.reload();
});

async function checkIfUserHasValidSession(userID, sessionID) {
  // For now, just check if userID and sessionID exist and are not -1
  if (!userID || !sessionID || userID === '-1' || sessionID === '-1') {
    return false;
  }
  
  // TODO: Add actual session validation API call if needed
  // For now, assume session is valid if userID and sessionID exist
  return true;
}

async function main() {
  let sessionID = localStorage.getItem("sessionID");
  let userID = localStorage.getItem("userID");
  
  let hasValidSession = await checkIfUserHasValidSession(userID, sessionID);
  
  
  if (hasValidSession == false){ 
    await deleteWebSession();
    window.location.href = '/login.html';
  }

  var allButton = document.getElementById('all');
  allButton.style.backgroundColor = '#e9ecef';

  await getAllArticlesOfClothing();
  //console.log(articles);
  await displayArticlesOfClothing();
  //console.log(broadCategoryAndTypes)
  

  //console.log(copyOfAllArticles);
  //console.log(articles);
  //console.log(ArticleIDToImageSrc);
  //document.querySelectorAll('.clothes-item').forEach(e => e.remove());

  //console.log(copyOfBlobFiles)


  //await displayArticlesOfClothingAFTERFiltering()

}

main();


// Force deployment Sun Sep 28 20:39:59 CDT 2025
