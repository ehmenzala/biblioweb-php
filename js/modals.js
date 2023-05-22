$registerDialog = document.getElementById("register-dialog");
$loginDialog = document.getElementById("login-dialog");

$openRegister = document.getElementById("open-register-dialog");
$openLogin = document.getElementById("open-login-dialog");

$closeRegister = document.getElementById("close-register-dialog");
$closeLogin = document.getElementById("close-login-dialog");

$openRegister.addEventListener("click", () => $registerDialog.showModal());
$openLogin.addEventListener("click", () => $loginDialog.showModal());

$closeRegister.addEventListener("click", () => $registerDialog.close());
$closeLogin.addEventListener("click", () => $loginDialog.close());
