const $bookCards = document.querySelectorAll("[data-book-info-card]");
const $userCards = document.querySelectorAll("[data-user-info-card]");

const $resumeBtn = document.getElementById("resume-btn");
const $bibliographyBtn = document.getElementById("bibliography-btn");
const $usersBtn = document.getElementById("users-btn");

const $buttons = [$resumeBtn, $bibliographyBtn, $usersBtn];

console.log([...$bookCards, ...$userCards]);

$resumeBtn.addEventListener("click", () => {
  cleanClassesFromButtons();
  $resumeBtn.classList.add("active");
  $resumeBtn.setAttribute("aria-selected", "true");
  [...$bookCards, ...$userCards].forEach(($card) => {
    $card.classList.remove("hidden");
  });
});

$bibliographyBtn.addEventListener("click", () => {
  cleanClassesFromButtons();
  $bibliographyBtn.classList.add("active");
  $bibliographyBtn.setAttribute("aria-selected", "true");

  $bookCards.forEach(($bookCard) => {
    $bookCard.classList.remove("hidden");
  });

  $userCards.forEach(($userCard) => {
    $userCard.classList.add("hidden");
  });
});

$usersBtn.addEventListener("click", () => {
  cleanClassesFromButtons();
  $usersBtn.classList.add("active");
  $usersBtn.setAttribute("aria-selected", "true");

  $bookCards.forEach(($bookCard) => {
    $bookCard.classList.add("hidden");
  });

  $userCards.forEach(($userCard) => {
    $userCard.classList.remove("hidden");
  });
});

function cleanClassesFromButtons() {
  $buttons.forEach(($btn) => {
    $btn.classList.remove("active");
    $btn.setAttribute("aria-selected", "false");
  });
}
