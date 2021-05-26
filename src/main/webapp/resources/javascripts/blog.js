//page blog
//begin: script slideshow blog
var slide = 1;
showDivs(slide);

function plusDivs(n) {
    showDivs(slide += n);
}

function currentDiv(n) {
    showDivs(slide = n);
}

function showDivs(n) {
    var i;
    var x = document.getElementsByClassName("blog-list");
    var num_btn = document.getElementsByClassName("nav-num");
    if (n > x.length) {slide = 1}
    if (n < 1) {slide = x.length}
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    for (i = 0; i < num_btn.length; i++) {
        num_btn[i].className = num_btn[i].className.replace(" num-active", "");
    }
    x[slide-1].style.display = "block";
    num_btn[slide-1].className += " num-active";
}

//end: script slideshow blog