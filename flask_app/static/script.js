/* DASHBOARD/HUB CAROUSEL AUTO SCROLLER */
function initializeCarousel() {
    const carowrap = document.querySelector(".carowrap");
    const caro = document.querySelector(".caro");
    const firstCardWidth = caro.querySelector(".carocard").offsetWidth;
    const arrowBtns = document.querySelectorAll(".carowrap i");
    const carouselChildrens = [...caro.children];

    let isDragging = false, isAutoPlay = true, startX, startScrollLeft, timeoutId;

    // Get the number of cards that can fit in the caro at once
    let cardPerView = Math.round(caro.offsetWidth / firstCardWidth);

    // Insert copies of the last few cards to the beginning of caro for infinite scrolling
    carouselChildrens.slice(-cardPerView).reverse().forEach(card => {
        caro.insertAdjacentHTML("afterbegin", card.outerHTML);
    });

    // Insert copies of the first few cards to the end of caro for infinite scrolling
    carouselChildrens.slice(0, cardPerView).forEach(card => {
        caro.insertAdjacentHTML("beforeend", card.outerHTML);
    });

    // Scroll the caro at an appropriate position to hide the first few duplicate cards on Firefox
    caro.classList.add("no-transition");
    caro.scrollLeft = caro.offsetWidth;
    caro.classList.remove("no-transition");

    // Add event listeners for the arrow buttons to scroll the caro left and right
    arrowBtns.forEach(btn => {
        btn.addEventListener("click", () => {
            caro.scrollLeft += btn.id == "left" ? -firstCardWidth : firstCardWidth;
        });
    });

    const dragStart = (e) => {
        isDragging = true;
        caro.classList.add("dragging");
        // Records the initial cursor and scroll position of the caro
        startX = e.pageX;
        startScrollLeft = caro.scrollLeft;
    }

    const dragging = (e) => {
        if (!isDragging) return; // if isDragging is false return from here
        // Updates the scroll position of the caro based on the cursor movement
        caro.scrollLeft = startScrollLeft - (e.pageX - startX);
    }

    const dragStop = () => {
        isDragging = false;
        caro.classList.remove("dragging");
    }

    const infiniteScroll = () => {
        // If the caro is at the beginning, scroll to the end
        if (caro.scrollLeft === 0) {
            caro.classList.add("no-transition");
            caro.scrollLeft = caro.scrollWidth - (2 * caro.offsetWidth);
            caro.classList.remove("no-transition");
        }
        // If the caro is at the end, scroll to the beginning
        else if (Math.ceil(caro.scrollLeft) === caro.scrollWidth - caro.offsetWidth) {
            caro.classList.add("no-transition");
            caro.scrollLeft = caro.offsetWidth;
            caro.classList.remove("no-transition");
        }

        // Clear the existing timeout & start autoplay if the mouse is not hovering over the caro
        clearTimeout(timeoutId);
        if (!carowrap.matches(":hover")) autoPlay();
    }

    const autoPlay = () => {
        if (window.innerWidth < 800 || !isAutoPlay) return; // Return if the window is smaller than 800 or isAutoPlay is false
        // Autoplay the caro every 2500 ms
        timeoutId = setTimeout(() => caro.scrollLeft += firstCardWidth, 2500);
    }
    autoPlay();

    caro.addEventListener("mousedown", dragStart);
    caro.addEventListener("mousemove", dragging);
    document.addEventListener("mouseup", dragStop);
    caro.addEventListener("scroll", infiniteScroll);
    carowrap.addEventListener("mouseenter", () => clearTimeout(timeoutId));
    carowrap.addEventListener("mouseleave", autoPlay);
}
const caro = document.querySelector(".caro");
if (caro) {
    initializeCarousel();
}

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
const copyind = document.querySelector(".copy_indicate");
if (copyind) {
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
}
