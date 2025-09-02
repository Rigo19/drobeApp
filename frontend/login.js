var login_endpoint_URL = 'http://127.0.0.1:8000/loginAttempt/'
var createWebSession_endpoint_URL = "http://127.0.0.1:8000/createWebSession/"
let timesShownInvalid = 0;


localStorage.setItem("sessionID", -1)
localStorage.setItem("userID", -1)

document.getElementById("loginbutton").addEventListener('submit', (event) =>{
    event.preventDefault(); // Prevent the form from submitting normally
})


document.getElementById("loginbutton").addEventListener("click", async (event) => {
    attemptLogin();
});



async function deleteWebSession(){
    let userID = localStorage.getItem("userID");
    let fullPath = "http://127.0.0.1:8000/deleteWebSession/" + userID;
      const response = await fetch( fullPath, {
        method: "delete",
      });

  }



async function attemptLogin(){

    let email = document.getElementById('email').value;
    let password = document.getElementById('password').value;



    const response = await fetch(login_endpoint_URL, {
        method: "post",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify({
          email: email,
          password: password
        }),
    })

    const response_status_code = response.status;
    const userID = await response.json().then((result) => result.userID);

    console.log(response_status_code)


    if (response_status_code == 404){
        console.log("No account with this email")
        let passworddiv = document.getElementById('passworddiv');
        if (timesShownInvalid == 0){
            passworddiv.appendChild(document.createTextNode("Invalid credentials"))
            timesShownInvalid++;
        }
        return;
    }

    else if (response_status_code == 401){
        console.log("incorrect password")
        if (timesShownInvalid == 0){
            passworddiv.appendChild(document.createTextNode("Invalid credentials"))
            timesShownInvalid++;
        }
    }

    else if (response_status_code == 201){
        localStorage.setItem("userID", userID)
        await deleteWebSession();
        await createWebSession();
        
        window.location.href = 'http://127.0.0.1:5500/main/frontend/index.html'
    }





}

async function createWebSession(){
    userID = localStorage.getItem("userID");

    let fullPath = createWebSession_endpoint_URL + userID;

    const response = await fetch(fullPath, {
        method: "post",
        headers: {"Content-Type": "application/json"},
        })
    
    stats_code = response.status;
    if (stats_code == 200){

        message = await response.json().then((result) => result.message)
        sessionID = message["Session ID"]
        localStorage.setItem("sessionID", sessionID)
    }


}