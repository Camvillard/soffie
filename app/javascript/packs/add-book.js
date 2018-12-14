// selecting elements

const inputTitle = document.getElementById('input-title');
const addButton = document.getElementById('add-book-button');
const resultsSection = document.getElementById('new-book-results');
const resultsTitle = document.getElementById('new-book-results-title');
const resultsAuthor = document.getElementById('new-book-results-author');
const resultsDescription = document.getElementById('new-book-results-description');

console.log(addButton);
console.log(inputTitle);
console.log(resultsSection);


// functions


// event listeners

const bookTitle = inputTitle.addEventListener('blur', (event) => {
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

// console.log(bookTitle);

addButton.addEventListener('click', (event) => {
  event.preventDefault();
});
