import "bootstrap";

//defining variables

const chooseThisBook = document.querySelectorAll('#choose-this-book');
console.log(chooseThisBook);

// event listeners

chooseThisBook.forEach((button) => {
  button.addEventListener('mouseover', (elt) => {
    $('#choose-book-modal').modal('show');
  });
});
