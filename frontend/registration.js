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
                // Here you would typically send the data to your backend
                // For now, we'll simulate a successful registration
                console.log('Registration data:', formData);
                
                // Show success message
                alert('Registration successful! Please log in with your new account.');
                
                // Redirect to login page
                window.location.href = '/login';
                
            } catch (error) {
                console.error('Registration error:', error);
                alert('Registration failed. Please try again.');
            }
        });
    }
});
