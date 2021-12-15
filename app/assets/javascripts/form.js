
 document.addEventListener("DOMContentLoaded", () =>{
   console.log("JHGKJGKJGJKGJG");
  const slidePage = document.querySelector(".slidepage");
  const nextBtn = document.querySelector("#next-btn");
  const prevBtn = document.querySelector("#prev-btn");
  const submitBtn = document.querySelector("#submit-btn");
  const bullet = document.querySelectorAll(".step .bullet");
  const progressText = document.querySelectorAll(".step p");
  const progressCheck = document.querySelectorAll(".step .check");
  const slideInnerBg = document.querySelector(".slide-wrapper .slide-inner-bg")
  const nbSlide = slideInnerBg.childElementCount;

  let max = nbSlide;
  let current = 0;


  
  nextBtn.addEventListener("click", function(event){
    event.preventDefault()
    event.stopPropagation()
    console.log("current", current);
    prevBtn.style.display = `block`;

    // if(current > 0) {
      slideInnerBg.children[current].classList.remove("active-slide")
    // }
    
    slideInnerBg.children[current + 1].classList.add("active-slide")
    bullet[current].classList.add("active");
    progressText[current].classList.add("active");
    progressCheck[current].classList.add("active");
    slideInnerBg.style.transform = `translateX(-${100/(nbSlide) * (current+1) }%)`

    current++;

    if(current === nbSlide - 1){
      nextBtn.style.display = `none`;
      submitBtn.style.display = `block`;
    }
  });

  prevBtn.addEventListener("click", function(event){
    event.preventDefault()
    event.stopPropagation()
    console.log("current", current);
    submitBtn.style.display = `none`;
    nextBtn.style.display = `block`;


    // if(current < nbSlide - 1) {
      slideInnerBg.children[current].classList.remove("active-slide")
    // }
    
    slideInnerBg.children[current - 1].classList.add("active-slide")

    bullet[current - 1].classList.remove("active");
    progressText[current - 1].classList.remove("active");
    progressCheck[current - 1].classList.remove("active");

    slideInnerBg.style.transform = `translateX(-${100/(nbSlide) * (current - 1) }%)`

    current--;

    if(current === 0){
      prevBtn.style.display = `none`;
      // submitBtn.style.display = `block`;
    }
  });


 


  submitBtn.addEventListener("click", function(){
    bullet[current - 1].classList.add("active");
    progressText[current - 1].classList.add("active");
    progressCheck[current - 1].classList.add("active");
    current +=1;
    setTimeout(function(){
      alert("Vous avez bien édité ce logement.");
      location.reload();
    }, 800);
  });




  




});

