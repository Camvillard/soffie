// selecting elements
const open = document.getElementById("menu-trigger");
const menuContent = document.getElementById("menu-content");
const close = document.getElementById("close-menu");

// functions

// events

open.addEventListener('click', (event) => {
  menuContent.classList.remove("hidden");
});

close.addEventListener('click', (event) => {
  menuContent.classList.add("hidden");
});
