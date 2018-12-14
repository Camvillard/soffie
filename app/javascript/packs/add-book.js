// selecting elements

const inputTitle = document.getElementById('input-title');
const inputISBN = document.getElementById('input-isbn');
const addButton = document.getElementById('add-book-button');
const resultsSection = document.getElementById('new-book-results');
const resultsTitle = document.getElementById('new-book-results-title');
const resultsAuthor = document.getElementById('new-book-results-author');
const resultsDescription = document.getElementById('new-book-results-description');

console.log(resultsTitle.innerText);

// functions


// event listeners

const filledForm = inputTitle.addEventListener('blur', (event) => {
  addButton.classList.remove('disabled');
  fetch(`https://www.googleapis.com/books/v1/volumes?q=${event.target.value}`)
    .then(response => response.json())
    .then((data) => {
      const bookTitle = data.items[0].volumeInfo.title;
      const bookAuthor = data.items[0].volumeInfo.authors[0];
      const bookDescription = data.items[0].volumeInfo.description;
      resultsSection.classList.remove('hidden');
      resultsTitle.insertAdjacentHTML('afterbegin', bookTitle);
      resultsAuthor.insertAdjacentHTML('afterbegin', bookAuthor);
      resultsDescription.insertAdjacentHTML('afterbegin', bookDescription);
    });
});

if (resultsTitle.innerText === "") {
  addButton.classList.add('disabled');
  addButton.addEventListener('click', (event) => {
    event.preventDefault();
  });
};
