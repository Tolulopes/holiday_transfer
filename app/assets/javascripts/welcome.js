$(document).ready(function(){
// console.log('ready');
$(function(){
  var slides = $('.slideShow>li');
  var slideCount = 0;
  var totalSlides = slides.length;
  var slideCache = [];

  (function preloader(){
    if(slideCount < totalSlides){
      //load images
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
    slides.eq(slideCount).fadeIn(1000).delay(2000).fadeOut(1000, function(){
      slideCount < totalSlides - 1 ? slideCount ++ :slideCount = 0;
      slideShow();
    });
  }
})
})