console.log("hello from mood cards, meuf");

// defining elements

const cards = document.querySelectorAll('.mood-card');
const details = document.querySelectorAll('.mood-details');


// functions


// events listener


cards.forEach((card) => {
  card.addEventListener("mouseover", (event) => {
    card.querySelector('.mood-details').classList.toggle("hidden");
  });
});
