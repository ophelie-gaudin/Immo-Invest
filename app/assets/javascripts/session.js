document.addEventListener("DOMContentLoaded", () => {
    let active3 = true;
    let eyeIcon3 = document.getElementById("icon3");
    const pass3 = document.getElementById("user_password");

    eyeIcon3.addEventListener("click", function () {
        if (active3) {
            pass3.setAttribute("type", "text");
            eyeIcon3.classList.value = "far fa-eye";
            active3 = false;
        } else {
            pass3.setAttribute("type", "password");
            eyeIcon3.classList.value = "far fa-eye-slash";
            active3 = true;
        }
    });
});
