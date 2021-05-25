//menu-icon
var headerContents = document.getElementsByClassName('header-contents')[0];
var mobileMenu =  document.getElementsByClassName('mobile-menu-btn')[0];
console.log(headerContents);
console.log(mobileMenu);
mobileMenu.onclick = function() {
    var isClosed = headerContents.style.overflow == 'hidden';
    if(isClosed) {
        headerContents.style.overflow = 'visible';
    } else {
        headerContents.style.overflow = 'hidden';
    }
}