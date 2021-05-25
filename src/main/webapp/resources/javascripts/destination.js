// range-slider
var slider = document.querySelector(".range-slider input");
var valueSlider = document.querySelector(".range-price p span");
valueSlider.textContent = slider.value;
slider.style.background = 'linear-gradient(to right, #ff4a52 0%, #ff4a52 50%, #ffd8da 50%, #ffd8da)'


slider.oninput = function(){
    valueSlider.textContent = this.value;
    var value = (this.value-this.min)/(this.max-this.min)*100
    // this.style.background = 'linear-gradient(to right, #82CFD0 0%, #82CFD0 ' + value + '%, #fff ' + value + '%, white 100%)'
    this.style.background = 'linear-gradient(to right, #ff4a52 0%, #ff4a52 ' + value + '%, #ffd8da ' + value + '%, #ffd8da)'
}


//slider
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
            slider.style.backgroundImage = "url('./mien-bac.jpg')";
            slide2.style.display = "none";
            slide3.style.display = "none";
            break;
        case 2:

            slide2.style.display = "block";
            slider.style.backgroundImage = "url('./mien-trung.jpg')";

            slide1.style.display = "none";
            slide3.style.display = "none";
            break;
        case 3:
            slide3.style.display = "block";
            slider.style.backgroundImage = "url('./mien-nam.jpg')";

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
            slider.style.backgroundImage = "url('./mien-bac.jpg')";
            slide2.style.display = "none";
            slide3.style.display = "none";
            break;
        case 2:

            slide2.style.display = "block";
            slider.style.backgroundImage = "url('./mien-trung.jpg')";

            slide1.style.display = "none";
            slide3.style.display = "none";
            break;
        case 3:
            slide3.style.display = "block";
            slider.style.backgroundImage = "url('./mien-nam.jpg')";

            slide2.style.display = "none";
            slide1.style.display = "none";
            break;
    }
}

//resp



