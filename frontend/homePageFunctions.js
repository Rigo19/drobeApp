var getUserClothingArticles_URL = "http://127.0.0.1:8000/getAllClothingArticlesByUserID/"
var articles = []

//get(fetcht) all the clothing pieces from the database of the specific user
async function getAllArticlesOfClothing(){

    var userID = 0; // hardcoded as 0 for now since the site currently only supports one user, us.
    var fullAddress = getUserClothingArticles_URL + userID;
    const response = await fetch(fullAddress, {
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

async function main(){
    await getAllArticlesOfClothing()
}

main()


