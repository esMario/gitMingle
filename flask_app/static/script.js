function copyAndAddLogos() {
    var logosSlide = document.querySelector(".logos-slide");
    // Check if an element with class "logos-slide" exists 
    if (logosSlide) {
        // Clone by class 
        var copy = logosSlide.cloneNode(true);
        document.querySelector('.logos').appendChild(copy);
    }
}

copyAndAddLogos();