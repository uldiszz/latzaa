(function(){!function(){var n,o,t,e,i;for(e=$(".dropdown"),i=[],o=0,t=e.length;o<t;o++)n=e[o],i.push($(n.querySelector('[data-toggle="dropdown"]')).on("click",function(){return $(".dropdown-menu").slideToggle()}));return i}(),function(){return $("#intro").on("click",function(){return $("#header").slideDown(),$("#footer").slideDown(),$(".about").slideDown(),$(".big-logo").slideUp()})}(),function(){return $(document).on("ready",function(){return $("#about").animate({opacity:1},650),$("#members").animate({opacity:1},650),$("#contacts").animate({opacity:1},650)})}(),function(){return $(".collapse").on("click",function(n){var o;return o=$(n.target).parent().parent(),o.find(".about").slideToggle("fast"),o.find(".description").slideToggle("fast"),o.find(".more").toggle(),o.find(".less").toggle()})}()}).call(this);