const navbar = document.querySelectorAll('.navbar');
const body = document.body;

navbar.forEach(function (element) {
    element.addEventListener("click", function () {
        body.classList.remove('navbar-active');
    })
    element.addEventListener("click", function () {
        setTimeout(() => {
            body.classList.add('navbar-active');
        }, 0)
    })
})
