const $openBooksDialog = document.getElementById("open-books-crud");
const $openUsersDialog = document.getElementById("open-users-crud");
const $openGenreDialog = document.getElementById("open-genre-dialog");
const $openAuthorDialog = document.getElementById("open-author-dialog");
const $openCreateUserDialog = document.getElementById(
  "open-create-user-dialog"
);

const $closeBooksDialog = document.getElementById("close-books-dialog");
const $closeUsersDialog = document.getElementById("close-users-dialog");
const $closeGenreDialog = document.getElementById("close-genre-dialog");
const $closeAuthorDialog = document.getElementById("close-author-dialog");
const $closeCreateUserDialog = document.getElementById(
  "close-create-user-dialog"
);

const $booksDialog = document.getElementById("books-dialog");
const $usersDialog = document.getElementById("users-dialog");
const $genreDialog = document.getElementById("genre-dialog");
const $authorDialog = document.getElementById("author-dialog");
const $createUserDialog = document.getElementById("create-user-dialog");

const $profileAuthorInput = document.getElementById("profile-img");
const $authorInput = document.getElementById("new-author");

const $bookFormStatus = document.getElementById("book-status"); // Currently unused

$authorInput.addEventListener("input", (e) => {
  const authorName = e.target.value.toLowerCase().replace(/\s/g, "");

  if (authorName === "") {
    $profileAuthorInput.value = "";
  } else {
    $profileAuthorInput.value = `https://api.dicebear.com/6.x/lorelei/svg?seed=${authorName}`;
  }
});

/* OPEN DIALOGS */

$openBooksDialog.addEventListener("click", () => {
  $booksDialog.showModal();
});

$openUsersDialog.addEventListener("click", () => {
  $usersDialog.showModal();
});

$openGenreDialog.addEventListener("click", () => {
  $genreDialog.showModal();
});

$openAuthorDialog.addEventListener("click", () => {
  $authorDialog.showModal();
});

$openCreateUserDialog.addEventListener("click", () => {
  $createUserDialog.showModal();
});

/* CLOSE DIALOGS */

$closeBooksDialog.addEventListener("click", () => {
  $booksDialog.close();
});

$closeUsersDialog.addEventListener("click", () => {
  $usersDialog.close();
});

$closeGenreDialog.addEventListener("click", () => {
  $genreDialog.close();
});

$closeAuthorDialog.addEventListener("click", () => {
  $authorDialog.close();
});

$closeCreateUserDialog.addEventListener("click", () => {
  $createUserDialog.close();
});
