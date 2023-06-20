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
setupUsersByRoleChart();
setupBooksByGenreChart();
setupBookByRatingChart();

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

function setupUsersByRoleChart() {
  fetch("/biblioweb/usuarios/all/")
    .then((r) => r.json())
    .then((json) => {
      let usersArr = json.map((user) => user.role);
      let userRoleCount = usersArr.reduce((acc, curr) => {
        if (acc[curr]) {
          acc[curr]++;
        } else {
          acc[curr] = 1;
        }
        return acc;
      }, {});

      const data = {
        labels: [...Object.keys(userRoleCount)],
        datasets: [
          {
            label: "Rol",
            data: [...Object.values(userRoleCount)],
            backgroundColor: [...COLORS],
          },
        ],
      };

      new Chart($usersByRoleCtx, {
        type: "pie",
        data,
        options: {
          scales: {
            y: {
              beginAtZero: true,
            },
          },
        },
      });
    });
}

function setupBooksByGenreChart() {
  fetch("/biblioweb/libros/all/")
    .then((r) => r.json())
    .then((json) => {
      let genresArr = json.map((book) => book.genre);
      let genresCount = genresArr.reduce((acc, curr) => {
        if (acc[curr]) {
          acc[curr]++;
        } else {
          acc[curr] = 1;
        }
        return acc;
      }, {});

      const data = {
        labels: [...Object.keys(genresCount)],
        datasets: [
          {
            label: "Género",
            data: [...Object.values(genresCount)],
            backgroundColor: [...COLORS],
          },
        ],
      };

      new Chart($booksByGenreCtx, {
        type: "pie",
        data,
        options: {
          scales: {
            y: {
              beginAtZero: true,
            },
          },
        },
      });
    });
}

function setupBookByRatingChart() {
  fetch("/biblioweb/libros/all/")
    .then((r) => r.json())
    .then((json) => {
      let ratingArr = json.map((book) => book.rating);
      let ratingCount = ratingArr.reduce((acc, curr) => {
        if (acc[curr]) {
          acc[curr]++;
        } else {
          acc[curr] = 1;
        }
        return acc;
      }, {});

      const data = {
        labels: [...Object.keys(ratingCount)],
        datasets: [
          {
            label: "Rating",
            data: [...Object.values(ratingCount)],
            backgroundColor: [...COLORS],
          },
        ],
      };

      new Chart($booksByRatingCtx, {
        type: "bar",
        data,
        options: {
          scales: {
            y: {
              beginAtZero: true,
            },
          },
        },
      });
    });
}

async function fetchBookByGenreId(genreId) {
  const response = await fetch(`/biblioweb/libros/genero/${genreId}/`);
  const books = await response.json();
  console.log(books);
}
