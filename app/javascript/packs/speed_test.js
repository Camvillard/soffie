console.log("hello from speed_test");

// defining the elements
const button = document.getElementById("starter");
const result = document.querySelector(".result");
const times = [];
let counter = 0;


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
    result.innerHTML = calculateReadingTime(speedTest / 1000);
  }
});

// 1272 mots
