// Import configuration
let login_endpoint_URL = API_ENDPOINTS.LOGIN;
let createWebSession_endpoint_URL = API_ENDPOINTS.CREATE_WEB_SESSION;
let timesShownInvalid = 0;

localStorage.setItem("sessionID", -1)
localStorage.setItem("userID", -1)

// Handle form submission
document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('loginbutton');
    
    if (form) {
        form.addEventListener('submit', async function(event) {
            event.preventDefault();
            await attemptLogin();
        });
    }
});

async function deleteWebSession(){
    let userID = localStorage.getItem("userID");
    let fullPath = API_ENDPOINTS.DELETE_WEB_SESSION + userID;
    const response = await fetch( fullPath, {
        method: "delete",
    });
}

async function attemptLogin(){
    let email = document.getElementById('email').value;
    let password = document.getElementById('password').value;

    // Clear previous error messages
    let passworddiv = document.getElementById('passworddiv');
    passworddiv.innerHTML = '';

    console.log('Attempting login with:', email);

    try {
        const response = await fetch(login_endpoint_URL, {
            method: "post",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({
              email: email,
              password: password
            }),
        });

        const response_status_code = response.status;
        console.log('Response status:', response_status_code);

        if (response_status_code == 404){
            console.log("No account with this email");
            if (timesShownInvalid == 0){
                passworddiv.innerHTML = "Invalid credentials";
                timesShownInvalid++;
            }
            return;
        }

        else if (response_status_code == 401){
            console.log("incorrect password");
            if (timesShownInvalid == 0){
                passworddiv.innerHTML = "Invalid credentials";
                timesShownInvalid++;
            }
        }

        else if (response_status_code == 201){
            const result = await response.json();
            const userID = result.userID;
            
            console.log('Login successful, userID:', userID);
            localStorage.setItem("userID", userID);
            
            await deleteWebSession();
            await createWebSession();
            
            // Redirect to home page after successful login
            console.log('Redirecting to home...');
            window.location.href = '/home';
        }

    } catch (error) {
        console.error('Login error:', error);
        passworddiv.innerHTML = "Login failed. Please try again.";
    }
}

async function createWebSession(){
    userID = localStorage.getItem("userID");

    const response = await fetch(createWebSession_endpoint_URL, {
        method: "post",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify({userID: parseInt(userID)})
    })
    
    stats_code = response.status;
    if (stats_code == 200){
        message = await response.json().then((result) => result.message)
        sessionID = message["Session ID"]
        localStorage.setItem("sessionID", sessionID)
    }
}