/**
 * 
 */
 document.addEventListener("DOMContentLoaded", function() {
    console.log("Window inner width: " + window.innerWidth + "px");
    
    const footer = document.querySelector('.footer-a');
    
    if (window.innerWidth === 1536) {
        footer.classList.add('dynamic');
    } else {
        footer.classList.remove('dynamic');
    }
});