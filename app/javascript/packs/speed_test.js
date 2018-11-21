// defining the elements
import "bootstrap";

const button = document.getElementById("starter");
const result = document.querySelector(".modal-body");
const times = [];
let counter = 0;
const hiddenField = document.getElementById("words_per_minute");


// functions
const computeDifference = () => {
  return times[1] - times[0];
};

const calculateReadingTime = (seconds) => {
  return Math.floor((1272 / seconds) * 60);
};

// event listeners
button.addEventListener('click', function(event) {
  button.innerText = "stop timer";
  times.push(Date.now());
  counter++;
  if (counter == 2) {
    const speedTest = computeDifference();
    console.log(speedTest);
    const calculation = calculateReadingTime(speedTest / 1000)
    // Inject 'x words per minute' in midal body
    result.innerHTML = calculation + " words per minute";
    // Set the hidden input's value to calculation
    hiddenField.value=calculation;
    // Making the modal visible
    $('#myModal').modal('show');
  }
});

// 1272 mots
