
const emailField = document.getElementById("email-field");
const passwordField = document.getElementById("password-field");
const btn = document.querySelector("button");

btn.onclick = () => {
  //The fields should not be empty on submission
  if (emailField.value.trim() === "" || passwordField.value === "") {
    alert("Fill in all fields");
  } else {
    //The password should be more than 8 characters
    if (passwordField.value.length <= 8) {
      alert("Your password should be more than 8 characters long");
    } else {
      //The username field should be a valid email address. (emailField is the username field)
      if (emailField.value.includes("@") && emailField.value.includes(".")) {
        alert("Successful login");
      } else {
        alert("Please enter a valid email address");
      }
    }
  }
};

