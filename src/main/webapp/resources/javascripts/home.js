// begin: slider-bac-trung-nam
var slide1 = document.getElementsByClassName("slider-1")[0];
var slide2 = document.getElementsByClassName("slider-2")[0];
var slide3 = document.getElementsByClassName("slider-3")[0];
var slider = document.getElementById("slider");
console.log(slider)
var temp = 1;
slide2.style.transition = "all 2s";
function ChangeRight() {
    if(temp < 3)
        temp++;
    else temp = 1;
    switch (temp){
        case 1:
            slide1.style.display = "block";
            slider.style.backgroundImage = "url('./slide1.jpg')";
            slide2.style.display = "none";
            slide3.style.display = "none";
            break;
        case 2:

            slide2.style.display = "block";
            slider.style.backgroundImage = "url('./slide2.jpg')";

            slide1.style.display = "none";
            slide3.style.display = "none";
            break;
        case 3:
            slide3.style.display = "block";
            slider.style.backgroundImage = "url('./slide3.jpg')";

            slide2.style.display = "none";
            slide1.style.display = "none";
            break;
    }
}

function ChangeLeft() {
    if(temp > 1)
        temp--;
    else temp = 3;
    switch (temp){
        case 1:
            slide1.style.display = "block";
            slider.style.backgroundImage = "url('./slide1.jpg')";
            slide2.style.display = "none";
            slide3.style.display = "none";
            break;
        case 2:

            slide2.style.display = "block";
            slider.style.backgroundImage = "url('./slide2.jpg')";

            slide1.style.display = "none";
            slide3.style.display = "none";
            break;
        case 3:
            slide3.style.display = "block";
            slider.style.backgroundImage = "url('./slide3.jpg')";

            slide2.style.display = "none";
            slide1.style.display = "none";
            break;
    }
}

// end: slider-bac-trung-nam

//begin: script slideshow feed back
var slide = 1;
showDivs(slide);

function currentDiv(n) {
    showDivs(slide = n);
}

function showDivs(n) {
    var i;
    var x = document.getElementsByClassName("feedback-slide");
    var dots = document.getElementsByClassName("dot");
    if (n > x.length) {slide = 1}
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" dot-active", "");
    }
    x[slide-1].style.display = "block";
    dots[slide-1].className += " dot-active";
}
//end: script slideshow feedback