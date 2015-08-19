$(document).ready(function(){
// console.log('ready');
$(function(){
  var slides = $('.slideShow>li'); 
  var slideCount = 0;
  var totalSlides = slides.length;
  var slideCache = [];

  (function preloader(){
    if(slideCount < totalSlides){
      slideCache[slideCount] = new Image();
      slideCache[slideCount].src = slides.eq(slideCount).find('img').attr('src');
      slideCache[slideCount].onload = function(){
        slideCount++;
        preloader();
      }
    } else {
      //run the slideshow
      slideCount = 0;
      slideShow();
    }
  }());

  function slideShow(){
    slides.eq(slideCount).fadeIn(900).delay(900).fadeOut(1000, function(){
      slideCount < totalSlides - 1 ? slideCount ++ :slideCount = 0;
      slideShow();
    });
  }
})
})

//give slides variable access to the ul list
//iterate through the li items
//totalslide is set to obtain the number of list items in the ul by accessing
// the length property of the slides variable
//empty array used for the preloader function 

//pre-load immediately envoked on page load and jquery fires up 
//slidecount checks if variable is less than the number of slides on the list item 
//if so we are instansitating a new javascript object and assigning it to the slide cache array variable
//where the array index value is equal to the slide count variable
//once this happens we set the source attribute to the image file as fetched from the image tag within the list item.