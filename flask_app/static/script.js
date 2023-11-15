/*  HOME PAGE LOGO SCROLLER */
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

/* GRAB CURRENT LINK BUTTON */
$('#current_link_btn').on('click', function (e) {
    var dummy = document.createElement('input');
    var text = window.location.href;

    // @see https://stackoverflow.com/a/49618964
    document.body.appendChild(dummy);
    dummy.value = text;
    dummy.select();
    document.execCommand('copy');
    document.body.removeChild(dummy);
    $(".copy_indicate").text("URL copied!");
});
    

/* DASHBOARD/HUB CAROUSEL AUTO SCROLLER */
