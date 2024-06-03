document.getElementById('registerForm').addEventListener('submit', function (event) {
    clearErrors();
    var email = document.getElementById('email').value.trim();
    var password = document.getElementById('password').value.trim();

    var emailError = document.getElementById('emailError');
    var passwordError = document.getElementById('passwordError');

    emailError.textContent = '';
    passwordError.textContent = '';

    if (!isValidEmail(email)) {
        emailError.textContent = 'Invalid email address.';
        emailError.style.color = "red";
        event.preventDefault();
    }

    if (!isValidPassword(password)) {
        passwordError.textContent = 'Password must contain at least one letter and one number.';
        passwordError.style.color = "red";
        event.preventDefault();
    }

});

function isValidEmail(email) {
    var emailPattern = /^[a-zA-Z0-9._%+-]+@(gmail\.com|gmail\.co\.il)$/;
    return emailPattern.test(email);
}

function isValidPassword(password) {
    return /\d/.test(password) && /[a-zA-Z]/.test(password);
}

function clearErrors() {
    var errorElements = document.querySelectorAll('.error-message');
    errorElements.forEach(function (element) {
        element.textContent = '';
    });
}

// Adding event listener to the reset button
document.getElementById('resetButton').addEventListener('click', function (event) {
    clearErrors();
});