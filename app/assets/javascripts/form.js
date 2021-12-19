document.addEventListener("DOMContentLoaded", () => {
    const prevBtn = document.getElementById("prev-btn");
    const nextBtn = document.getElementById("next-btn");
    const endBtn = document.getElementById("end-btn");
    const slideWrapper = document.querySelector(".form-content");
    const stepper = document.querySelector(".stepper");
    let currentSlide = 0;

    prevBtn.addEventListener("click", (e) => {
        e.preventDefault();
        e.stopPropagation();

        slideWrapper.children[currentSlide].classList.remove("active");

        currentSlide--;

        stepper.children[currentSlide].classList.remove("checked");
        slideWrapper.children[currentSlide].classList.add("active");

        nextBtn.style.display = "block";
        endBtn.style.display = "none";

        if (currentSlide === 0) {
            prevBtn.style.display = "none";
        }
    });

    nextBtn.addEventListener("click", (e) => {
        e.preventDefault();
        e.stopPropagation();

        slideWrapper.children[currentSlide].classList.remove("active");
        stepper.children[currentSlide].classList.add("checked");

        currentSlide++;

        slideWrapper.children[currentSlide].classList.add("active");

        prevBtn.style.display = "block";

        if (currentSlide === slideWrapper.childElementCount - 2) {
            nextBtn.style.display = "none";
            endBtn.style.display = "block";
        }
    });
});
