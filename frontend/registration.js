// Registration form handling
document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('registerbutton');
    
    if (form) {
        form.addEventListener('submit', async function(event) {
            event.preventDefault();
            
            // Get form data
            const formData = {
                firstName: document.getElementById('firstName').value,
                lastName: document.getElementById('lastName').value,
                email: document.getElementById('email').value,
                password: document.getElementById('password').value,
                confirmPassword: document.getElementById('confirmPassword').value,
                birthday: document.getElementById('birthday').value,
                zipcode: document.getElementById('zipcode').value
            };
            
            // Basic validation
            if (formData.password !== formData.confirmPassword) {
                alert('Passwords do not match!');
                return;
            }
            
            if (!document.getElementById('termsCheck').checked) {
                alert('Please agree to the Terms of Service and Privacy Policy');
                return;
            }
            
            try {
                // Combine firstName and lastName into a single name field
                const name = `${formData.firstName} ${formData.lastName}`;
                
                // Prepare data for backend API
                const registrationData = {
                    name: name,
                    email: formData.email,
                    password: formData.password,
                    zipCode: formData.zipcode,
                    timeZone: "EST", // Default timezone
                    birthday: formData.birthday
                };
                
                console.log('Sending registration data:', registrationData);
                
                // Call the backend API
                const response = await fetch(API_ENDPOINTS.REGISTRATION, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify(registrationData)
                });
                
                const result = await response.json();
                
                if (response.ok) {
                    // Show success message
                    alert('Registration successful! Please log in with your new account.');
                    
                    // Redirect to login page
                    window.location.href = '/login';
                } else {
                    // Show error message
                    alert(`Registration failed: ${result.detail || 'Unknown error'}`);
                }
                
            } catch (error) {
                console.error('Registration error:', error);
                alert('Registration failed. Please try again.');
            }
        });
    }
});
