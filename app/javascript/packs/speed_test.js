console.log("hello from speed_test");

const start = document.getElementById("start_time");
const stop = document.getElementById("end_time");

start.addEventListener('click', function(event) {
  start_time = Date.now();
  console.log(start_time);
});

stop.addEventListener('click', function(event) {
  stop_time = Date.now();
  console.log(stop_time);
});
