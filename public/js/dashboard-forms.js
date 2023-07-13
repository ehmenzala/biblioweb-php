const $searchBookIdInput = document.getElementById("search-book-id");
const $searchBtn = document.getElementById("search-book-id-btn");
const $bookForm = document.getElementById("book-form");

const $bookIdInput = document.getElementById("book-id");
const $ratingInput = document.getElementById("rating");
const $bookTitleInput = document.getElementById("title");
const $pubYearInput = document.getElementById("pub-year");
const $noPagesInput = document.getElementById("no-pages");
const $languageInput = document.getElementById("language");
const $orgLanguageInput = document.getElementById("org-language");
const $descriptionTextarea = document.getElementById("description");
const $fragmentTextarea = document.getElementById("fragment");
const $genreIdSelect = document.getElementById("book-genre");
const $authorIdSelect = document.getElementById("book-author");
//const $coverFileInput = document.getElementById("cover");

const $bookGenreOptions = $bookForm.querySelectorAll("#book-genre option");
const $authorOptions = $bookForm.querySelectorAll("#book-author option");

$searchBtn.addEventListener("click", () => {
  const bookId = $searchBookIdInput.value;
  fetch(`/biblioweb/libros/id/${bookId}/`)
    .then((r) => r.json())
    .then((book) => {
      const id = book.id;
      const genre = book.genre;
      const author = book.author;
      const title = book.title;
      const pubYear = book.pub_year;
      const noPages = book.no_pages;
      const language = book.language;
      const orgLanguage = book.org_language;
      const description = book.description;
      const rating = book.rating;
      const fragment = book.fragment;
      //const cover = book.cover

      $bookIdInput.value = id;
      $ratingInput.value = rating;
      $bookTitleInput.value = title;
      $pubYearInput.value = pubYear;
      $noPagesInput.value = noPages;
      $languageInput.value = language;
      $orgLanguageInput.value = orgLanguage;
      $descriptionTextarea.value = description;
      $fragmentTextarea.value = fragment;

      $bookGenreOptions.forEach(($genreOption) => {
        if ($genreOption.textContent === genre) {
          $genreIdSelect.value = $genreOption.value;
        }
      });

      $authorOptions.forEach(($authorOption) => {
        if ($authorOption.textContent === author) {
          $genreIdSelect.value = $authorOption.value;
        }
      });

      $searchBookDialog.close();
      $bookFormStatus.textContent = `ID ${id}`;
    });
});
