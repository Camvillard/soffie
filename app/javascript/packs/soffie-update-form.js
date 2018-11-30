// defining the elements

const button = document.getElementById("soffie-button");
const soffieForm = document.getElementById("soffie-update-form");
const bookSelector = document.getElementById("book-selector");
const updateBookForm = document.querySelector("update-book-form");

// eventListeners
button.addEventListener('click', function(event) {
  soffieForm.classList.toggle("hidden");
});



