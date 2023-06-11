const $registerDialog = document.getElementById("register-dialog");
const $loginDialog = document.getElementById("login-dialog");

const $openRegister = document.getElementById("open-register-dialog");
const $openLogin = document.getElementById("open-login-dialog");

const $closeRegister = document.getElementById("close-register-dialog");
const $closeLogin = document.getElementById("close-login-dialog");

const $closeAndOpenRegister = document.getElementById(
  "close-and-open-register"
);
const $closeAndOpenLogin = document.getElementById("close-and-open-login");

$openRegister.addEventListener("click", () => $registerDialog.showModal());
$openLogin.addEventListener("click", () => $loginDialog.showModal());

$closeRegister.addEventListener("click", () => $registerDialog.close());
$closeLogin.addEventListener("click", () => $loginDialog.close());

$closeAndOpenRegister.addEventListener("click", () => {
  $loginDialog.close();
  $registerDialog.showModal();
});

$closeAndOpenLogin.addEventListener("click", () => {
  $registerDialog.close();
  $loginDialog.showModal();
});
