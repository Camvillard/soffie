// defining the elements

const progressBars = document.querySelectorAll(".progress-bar");
console.log(progressBars);

// functions

const calculateProgress = (completed_pages, book_pages) => {
  return (completed_pages / book_pages) * 100;
};

progressBars.forEach((progressBar) => {

  const completed = progressBar.dataset.completedpages;
  const total = progressBar.dataset.bookpages;

  progressBar.style = `width: ${(calculateProgress(completed, total))}%`;
});
