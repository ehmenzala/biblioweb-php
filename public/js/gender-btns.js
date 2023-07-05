const $genreBtns = document.querySelectorAll(".gender-btn");
const $bookList = document.getElementById("book-list");
const $genreSectionTitle = document.getElementById("genre-section-title");
const $genreSectionType = document.getElementById("genre-section-type");

$genreBtns.forEach(($genreBtn) => {
  $genreBtn.addEventListener("click", (e) => {
    fetchBookByGenreId(e.target.dataset.genreId);
  });
});

function fetchBookByGenreId(id) {
  cleanList($bookList);

  fetch(`/biblioweb/libros/genero/${id}/`)
    .then((r) => r.json())
    .then((books) => {
      const fragment = document.createDocumentFragment();
      const bookGenre = books[0]?.genre;
      $genreSectionTitle.textContent = bookGenre ?? "Sin resultados";
      $genreSectionType.textContent = bookGenre
        ? `Los mejores libros de ${bookGenre.toLowerCase()} que puedes encontrar.`
        : "Parece que no hay libros de este género en la biblioteca aún";

      books.forEach((book) => {
        const $bookItem = createBookItem(
          book.cover,
          book.rating,
          book.title,
          book.author
        );
        fragment.appendChild($bookItem);
      });

      $bookList.appendChild(fragment);
    });
}

function createBookItem(cover, rating, title, author) {
  const $bookListItem = document.createElement("LI");

  const $bookTop = document.createElement("DIV");
  $bookTop.classList.add("book-top");

  const $bookCover = document.createElement("IMG");
  $bookCover.setAttribute("src", cover);
  $bookCover.setAttribute("alt", "Portada del libro");

  const $bookRating = document.createElement("DIV");
  $bookRating.classList.add("book-rating");

  // Adding rating stars
  for (let i = 0; i < rating; i++) {
    const $ratingStar = document.createElement("IMG");
    $ratingStar.setAttribute(
      "src",
      "/biblioweb/public/assets/img/icons/rating-star.svg"
    );
    $ratingStar.setAttribute("alt", "Estrella de rating");
    $bookRating.appendChild($ratingStar);
  }

  const $bookTitle = document.createElement("H3");
  $bookTitle.textContent = title;

  $bookTop.appendChild($bookCover);
  $bookTop.appendChild($bookRating);
  $bookTop.appendChild($bookTitle);

  const $bookAuthor = document.createElement("P");
  $bookAuthor.textContent = author;

  $bookListItem.appendChild($bookTop);
  $bookListItem.appendChild($bookAuthor);

  return $bookListItem;
}

function cleanList(list) {
  if (list.hasChildNodes()) {
    list.innerHTML = "";
  }
}
