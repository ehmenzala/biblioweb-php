const $openManageBooksBtn = document.getElementById("open-books-crud");
const $openManageUsersBtn = document.getElementById("open-users-crud");
const $openGenreDialog = document.getElementById("open-genre-dialog");
const $openAuthorDialog = document.getElementById("open-author-dialog");

const $closeBooksDialog = document.getElementById("close-books-dialog");
const $closeUsersDialog = document.getElementById("close-users-dialog");
const $closeGenreDialog = document.getElementById("close-genre-dialog");
const $closeAuthorDialog = document.getElementById("close-author-dialog");

const $booksDialog = document.getElementById("books-dialog");
const $usersDialog = document.getElementById("users-dialog");
const $genreDialog = document.getElementById("genre-dialog");
const $authorDialog = document.getElementById("author-dialog");

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

$openManageBooksBtn.addEventListener("click", () => {
  $booksDialog.showModal();
});

$openManageUsersBtn.addEventListener("click", () => {
  $usersDialog.showModal();
});

$openGenreDialog.addEventListener("click", () => {
  $genreDialog.showModal();
});

$openAuthorDialog.addEventListener("click", () => {
  $authorDialog.showModal();
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
