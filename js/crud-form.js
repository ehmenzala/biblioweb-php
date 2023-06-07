const $crudFields = document.querySelectorAll("[class^=crud-form__field]");
const $cleanFieldsBtn = document.getElementById("clean-btn");

$cleanFieldsBtn.addEventListener("click", () => {
  $crudFields.forEach(($field) => {
    $field.value = "";
  });
});

/* CRUD FOM VALIDATION */

const $form = document.getElementById("crud-form");
const $errorMessage = document.getElementById("error-message");

function showErrorMessage(message) {
  $errorMessage.textContent = message;
}

$form.addEventListener("submit", (e) => {
  const $id = document.getElementById("book-id");
  const $rating = document.getElementById("rating");
  const $description = document.getElementById("description");
  const $fragment = document.getElementById("fragment");

  const idIsReadOnly = $id.hasAttribute("readonly");
  const descriptionHasLessThan550Chars = $description.value.length <= 550;
  const fragmentHasLessThan350Chars = $fragment.value.length <= 350;
  const ratingIsBetweenZeroAndFive =
    parseInt($rating.value) >= 0 && parseInt($rating.value) <= 5;

  if (!idIsReadOnly) {
    e.preventDefault();
    showErrorMessage("El ID debe ser de solo lectura. Recarga la página.");
    $id.setAttribute("aria-invalid", "true");
    return;
  }
  $id.setAttribute("aria-invalid", "false");

  if (!ratingIsBetweenZeroAndFive) {
    e.preventDefault();
    showErrorMessage("El rating debe estar entre 0 y 5");
    $rating.setAttribute("aria-invalid", "true");
    return;
  }
  $rating.setAttribute("aria-invalid", "false");

  if (!descriptionHasLessThan550Chars) {
    e.preventDefault();
    showErrorMessage("La descripción debe tener como máximo 550 caracteres");
    $description.setAttribute("aria-invalid", "true");
    return;
  }
  $description.setAttribute("aria-invalid", "false");

  if (!fragmentHasLessThan350Chars) {
    e.preventDefault();
    showErrorMessage("El fragmento debe tener como máximo 350 caracteres");
    $fragment.setAttribute("aria-invalid", "true");
    return;
  }
  $fragment.setAttribute("aria-invalid", "false");

  showErrorMessage("");
});

/* CHARACTER COUNTERS */

const $description = document.getElementById("description");
const $fragment = document.getElementById("fragment");
const $descChars = document.getElementById("desc-chars");
const $fragmentChars = document.getElementById("fragment-chars");

$description.addEventListener(
  "input",
  (e) => ($descChars.textContent = e.target.value.length)
);

$fragment.addEventListener(
  "input",
  (e) => ($fragmentChars.textContent = e.target.value.length)
);
