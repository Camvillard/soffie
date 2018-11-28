// defining the elements

const button = document.getElementById("soffie-button");
const soffieForm = document.getElementById("soffie-update-form");
console.log(soffieForm)
// eventListeners
button.addEventListener('click', function(event) {
  soffieForm.classList.toggle("hidden");
});


