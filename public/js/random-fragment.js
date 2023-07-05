const $randomFragmentBtn = document.getElementById("random-fragment-btn");
const $randomFragment = document.getElementById("random-fragment");
const $randomFragmentDialog = document.getElementById("random-fragment-dialog");

$randomFragmentBtn.addEventListener("click", () => {
  fetch("/biblioweb/fragments/random/")
    .then((r) => r.json())
    .then((fragment) => {
      $randomFragment.textContent = fragment.content;
      $randomFragmentDialog.showModal();
    });
});
