/**
 * photolab custom JS functions
 * licensed under GNU General Public License v3
 */

function getWindowHeight() {
    var myWidth = 0, myHeight = 0;
    if( typeof( window.innerWidth ) == 'number' ) {
        //Non-IE
        myHeight = window.innerHeight;
    } else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) {
        //IE 6+ in 'standards compliant mode'
        myHeight = document.documentElement.clientHeight;
    } else if( document.body && ( document.body.clientWidth || document.body.clientHeight ) ) {
        //IE 4 compatible
        myHeight = document.body.clientHeight;
    }

    return myHeight
}

(function($) {

    $(window).load(function() {
        if(!device.mobile() && !device.tablet() && !device.ipod()){

            // sticky header
            jQuery('.site-header').tmStickUp({
                correctionSelector: jQuery('#wpadminbar'),   
                active: true
            });

            // pages and posts header image parallax
            $('.page-header-wrap').each(function(){
                var $bgobj = $(this).find('img'),
                    window_height = parseInt(getWindowHeight()),
                    element_pos = $bgobj.offset(),
                    element_top = parseInt(element_pos.top),
                    //buffer = Math.floor(element_top / window_height);
                    buffer = Math.floor(element_top - window_height),
                    visible_scroll = parseInt($(window).scrollTop()) - buffer;
                if ( visible_scroll > 0 ) {
                    if ( window_height > element_top ) {
                        var yPos = ($(window).scrollTop() / 1.7);
                    } else {
                        var yPos = (visible_scroll / 1.7);
                    }
                    var coords = yPos + 'px';
                    $bgobj.css({ top: coords });
                }
                $(window).scroll(function() {
                    var element_pos = $bgobj.offset(),
                        element_top = parseInt(element_pos.top),
                        //buffer = Math.floor(element_top / window_height);
                        buffer = Math.floor(element_top - window_height),
                        visible_scroll = parseInt($(window).scrollTop()) - buffer;
                   
                    if ( visible_scroll > 0 ) {
                        if ( window_height > element_top ) {
                            var yPos = ($(window).scrollTop() / 1.7);
                        } else {
                            var yPos = (visible_scroll / 1.7);
                        }
                        var coords = yPos + 'px';
                        $bgobj.css({ top: coords });
                    }
                });
            });
            
            // home page header image parallax
            $('.home .header-image-box img').each(function(){
                var $bgobj = $(this),
                    window_height = parseInt(getWindowHeight()),
                    element_pos = $bgobj.offset(),
                    element_top = parseInt(element_pos.top),
                    //buffer = Math.floor(element_top / window_height);
                    buffer = Math.floor(element_top - window_height),
                    visible_scroll = parseInt($(window).scrollTop()) - buffer;
                if ( visible_scroll > 0 ) {
                    if ( window_height > element_top ) {
                        var yPos = ($(window).scrollTop() / 1.3);
                    } else {
                        var yPos = (visible_scroll / 1.3);
                    }
                    //var coords = yPos + 'px';
                    $bgobj.css({
                        "-moz-transform": "translateY(" + yPos + "px)",
                        "-webkit-transform": "translateY(" + yPos + "px)",
                        "-o-transform": "translateY(" + yPos + "px)",
                        "-ms-transform": "translateY(" + yPos + "px)",
                        "transform": "translateY(" + yPos + "px)"
                    })
                }
                $(window).scroll(function() {
                    var element_pos = $bgobj.offset(),
                        element_top = parseInt(element_pos.top),
                        //buffer = Math.floor(element_top / window_height);
                        buffer = Math.floor(element_top - window_height),
                        visible_scroll = parseInt($(window).scrollTop()) - buffer;
                   
                    if ( visible_scroll > 0 ) {
                        if ( window_height > element_top ) {
                            var yPos = ($(window).scrollTop() / 1.3);
                        } else {
                            var yPos = (visible_scroll / 1.3);
                        }
                        //var coords = yPos + 'px';
                        $bgobj.css({
                            "-moz-transform": "translateY(" + yPos + "px)",
                            "-webkit-transform": "translateY(" + yPos + "px)",
                            "-o-transform": "translateY(" + yPos + "px)",
                            "-ms-transform": "translateY(" + yPos + "px)",
                            "transform": "translateY(" + yPos + "px)"
                        })
                    }
                });
            });
        }
    });
    
    // init single popup
	$(function(){
		$('.lightbox-image a').magnificPopup({ 
			type: 'image',
			mainClass: 'mfp-with-zoom', // this class is for CSS animation below

			zoom: {
				enabled: true, // By default it's false, so don't forget to enable it

				duration: 300, // duration of the effect, in milliseconds
				easing: 'ease-in-out', // CSS transition easing function 

			opener: function(openerElement) {
		  		return openerElement.is('img') ? openerElement : openerElement.find('img');
			}
		}

		});
	})

    jQuery(document).ready(function($) {
        // init popup galleries for gallery post format featured galleries
        $(".post-featured-gallery").each(function(index, el) {
            $('#' + $(this).data("gall-id") + ' .lightbox-gallery').magnificPopup({
                type: 'image',
                gallery:{
                    enabled:true
                },
                mainClass: 'mfp-with-zoom', // this class is for CSS animation below

                zoom: {
                    enabled: true, // By default it's false, so don't forget to enable it

                    duration: 300, // duration of the effect, in milliseconds
                    easing: 'ease-in-out', // CSS transition easing function 

                    // The "opener" function should return the element from which popup will be zoomed in
                    // and to which popup will be scaled down
                    // By defailt it looks for an image tag:
                    opener: function(openerElement) {
                        // openerElement is the element on which popup was initialized, in this case its <a> tag
                        // you don't need to add "opener" option if this code matches your needs, it's defailt one.
                        return openerElement.is('img') ? openerElement : openerElement.find('img');
                    }
                }
            }); 
        });
    });

    // to top button
    jQuery(window).scroll(function () {
        if (jQuery(this).scrollTop() > 100) {
            jQuery('#back-top').fadeIn();
        } else {
            jQuery('#back-top').fadeOut();
        }
    });
    
    jQuery('#back-top a').click(function () {
        jQuery('body,html').stop(false, false).animate({
            scrollTop: 0
        }, 800);
        return false;
    });

    // dropdown menu and mobile navigation
    jQuery(document).ready(function($) {
        $('ul.sf-menu').superfish();

        var ismobile = navigator.userAgent.match(/(iPad)|(iPhone)|(iPod)|(android)|(webOS)/i)
        if(ismobile){
            jQuery('.main-navigation > ul').sftouchscreen();
        }

        jQuery('.main-navigation > ul').mobileMenu();
    });

})(jQuery);