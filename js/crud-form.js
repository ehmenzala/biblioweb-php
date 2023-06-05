$crudFields = document.querySelectorAll("[class^=crud-form__field]");
$cleanFieldsBtn = document.getElementById("clean-btn");

$cleanFieldsBtn.addEventListener("click", () => {
  $crudFields.forEach(($field) => {
    $field.value = "";
  });
});
