function validateForm() {
  var name = document.forms["regForm"]["name"].value;
  var email = document.forms["regForm"]["email"].value;
  var password = document.forms["regForm"]["password"].value;
  var age = document.forms["regForm"]["age"].value;

  if (name == "") {
    alert("Name is required");
    return false;
  }

  if (password.length < 6) {
    alert("Password must be at least 6 characters");
    return false;
  }

  if (age < 18) {
    alert("Age must be 18 or above");
    return false;
  }

  alert("Form submitted successfully");
  return true;
}
