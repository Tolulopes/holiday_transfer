(function($){
  $.fn.extend({
    rotaterator: function(options) {

      var defaults = {
        fadeSpeed: 500,
        pauseSpeed: 900,
        fadeOutSpeed: 1000,
        child:null
      };

      var options = $.extend(defaults, options);

      return this.each(function() {
        var o = options;
        var obj = $(this);
        var items = $(obj.children(), obj);
        
        items.each(function() {$(this).hide();});
          
        if(!o.child){
          var next = $(obj).children(':first');
        } else {
          var next = o.child;
        }

        $(next).fadeIn(o.fadeSpeed, function() {
          $(next).delay(o.pauseSpeed).fadeOut(o.fadeOutSpeed, function() {
            var next = $(this).next();
            if (next.length == 0){
              next = $(obj).children(':first');
            }
            $(obj).rotaterator({child : next, fadeSpeed : o.fadeSpeed, pauseSpeed : o.pauseSpeed});
          });
        });
      });
    }
  });
})(jQuery);

$(document).ready(function() {
  $('.rotate').rotaterator({fadeSpeed:900});

   // handler = Gmaps.build('Google');
   // handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
   //   markers = handler.addMarkers($("#map").data("json"));
   //   console.log(handler,markers)
   //   handler.bounds.extendWith(markers);
   //   handler.fitMapToBounds();
   // });
});