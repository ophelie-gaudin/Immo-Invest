document.addEventListener("DOMContentLoaded", () => {
    let active = true;
    let eyeIcon = document.getElementById("icon");
    const pass = document.getElementById("user_password");
    let active2 = true;
    let eyeIcon2 = document.getElementById("icon2");
    const pass2 = document.getElementById("user_password_confirmation");
    eyeIcon.addEventListener("click", function () {
        if (active) {
            pass.setAttribute("type", "text");
            eyeIcon.classList.value = "far fa-eye";
            active = false;
        } else {
            pass.setAttribute("type", "password");
            eyeIcon.classList.value = "far fa-eye-slash";
            active = true;
        }
    });

    eyeIcon2.addEventListener("click", function () {
        if (active2) {
            pass2.setAttribute("type", "text");
            eyeIcon2.classList.value = "far fa-eye";
            active2 = false;
        } else {
            pass2.setAttribute("type", "password");
            eyeIcon2.classList.value = "far fa-eye-slash";
            active2 = true;
        }
    });
});
