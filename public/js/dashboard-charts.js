const $userCount = document.getElementById("user-count");
const $bookCount = document.getElementById("book-count");

const $booksByGenreCtx = document.getElementById("books-by-genre");
const $booksByRatingCtx = document.getElementById("books-by-rating");
const $usersByRoleCtx = document.getElementById("users-by-role");

const COLORS = [
  "#A788E5",
  "#DBD2EC",
  "#A989E8",
  "#615D69",
  "#846BB5",
  "#4C3E69",
  "#A8A1B5",
  "#846BB5",
];

setupUserCount();
setupBookCount();
setupBookCharts();
setupUsersByRoleChart();

function setupUserCount() {
  fetch("/biblioweb/usuarios/all/")
    .then((r) => r.json())
    .then((json) => {
      const TOTAL_USERS = json.length;
      $userCount.textContent = TOTAL_USERS;
    });
}

function setupBookCount() {
  fetch("/biblioweb/libros/all/")
    .then((r) => r.json())
    .then((json) => {
      let TOTAL_BOOKS = json.length;
      $bookCount.textContent = TOTAL_BOOKS;
    });
}

function setupBookCharts() {
  fetch("/biblioweb/libros/all/")
    .then((r) => r.json())
    .then((json) => {
      let genresArr = [...json].map((book) => book.genre);
      let genresCount = reduceArrToCoincidenceObject(genresArr);
      setupChart(genresCount, "Género", "pie", $booksByGenreCtx);

      let ratingArr = [...json].map((book) => book.rating);
      let ratingCount = reduceArrToCoincidenceObject(ratingArr);
      setupChart(ratingCount, "Rating", "bar", $booksByRatingCtx);
    });
}

function setupUsersByRoleChart() {
  fetch("/biblioweb/usuarios/all/")
    .then((r) => r.json())
    .then((json) => {
      let usersArr = json.map((user) => user.role);
      let userRoleCount = reduceArrToCoincidenceObject(usersArr);
      setupChart(userRoleCount, "Rol", "pie", $usersByRoleCtx);
    });
}

function reduceArrToCoincidenceObject(arr) {
  return [...arr].reduce((acc, curr) => {
    if (acc[curr]) {
      acc[curr]++;
    } else {
      acc[curr] = 1;
    }
    return acc;
  }, {});
}

function setupChart(dataCount, label, type, ctx) {
  const data = {
    labels: [...Object.keys(dataCount)],
    datasets: [
      {
        label: label,
        data: [...Object.values(dataCount)],
        backgroundColor: [...COLORS],
      },
    ],
  };

  new Chart(ctx, {
    type,
    data,
    options: {
      scales: {
        y: {
          beginAtZero: true,
        },
      },
    },
  });
}

async function fetchBookByGenreId(genreId) {
  const response = await fetch(`/biblioweb/libros/genero/${genreId}/`);
  const books = await response.json();
  console.log(books);
}
