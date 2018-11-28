// defining the elements

const button = document.getElementById("soffie-update");
const soffieForm = document.getElementById("soffie-update-form");
// eventListeners
button.addEventListener('click', function(event) {
  soffieForm.classList.toggle("hidden");
});


