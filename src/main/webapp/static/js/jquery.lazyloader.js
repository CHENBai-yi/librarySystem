/**
 * @file
 * Lazyloader JQuery plugin
 *
 * @author: Daniel Honrade http://drupal.org/user/351112
 *
 * Settings:
 * - distance = distance of the image to the viewable browser screen before it gets loaded
 * - icon     = animating image that appears before the actual image is loaded
 *
 */

(function ($) {

    // Window jQuery object global reference.
    var $window;

    // Process lazyloader
    $.fn.lazyloader = function (options) {
        var settings = $.extend($.fn.lazyloader.defaults, options);
        var images = this;

        if (typeof ($window) == 'undefined') {
            $window = $(window);
        }

        // add the loader icon
        if (settings['icon'] != '') $('img[data-src]').parent().css({
            position: 'relative',
            display: 'block'
        }).prepend('<img class="lazyloader-icon" src="' + settings['icon'] + '" />');

        // Load on refresh
        loadActualImages(images, settings);

        // Load on scroll
        $window.bind('scroll', function (e) {
            loadActualImages(images, settings);
        });

        // Load on resize
        $window.resize(function (e) {
            loadActualImages(images, settings);
        });

        return this;
    };

    // Defaults
    $.fn.lazyloader.defaults = {
        distance: 0, // the distance (in pixels) of image when loading of the actual image will happen
        icon: ''    // display animating icon
    };


    // Loading actual images
    function loadActualImages(images, settings) {
        clearTimeout($.fn.lazyloader.timeout);

        $.fn.lazyloader.timeout = setTimeout(function () {
            images.each(function () {
                var $image = $(this);
                var imageHeight = $image.height(), imageWidth = $image.width();
                var iconTop = Math.round(imageHeight / 2), iconLeft = Math.round(imageWidth / 2),
                    iconFactor = Math.round($image.siblings('img.lazyloader-icon').height() / 2);
                $image.siblings('img.lazyloader-icon').css({top: iconTop - iconFactor, left: iconLeft - iconFactor});

                if (windowView(this, settings) && ($image.attr('data-src'))) {
                    loadImage(this);
                    $image.fadeIn('slow');
                }
            });
        }, 50);
    };


    // Check if the images are within the window view (top, bottom, left and right)
    function windowView(image, settings) {
        var $image = $(image);
        // window variables
        var windowHeight = $window.height(),
            windowWidth = $window.width(),

            windowBottom = windowHeight + $window.scrollTop(),
            windowTop = windowBottom - windowHeight,
            windowRight = windowWidth + $window.scrollLeft(),
            windowLeft = windowRight - windowWidth,

            // image variables
            imageHeight = $image.height(),
            imageWidth = $image.width(),

            imageTop = $image.offset().top - settings['distance'],
            imageBottom = imageTop + imageHeight + settings['distance'],
            imageLeft = $image.offset().left - settings['distance'],
            imageRight = imageLeft + imageWidth + settings['distance'];

        // This will return true if any corner of the image is within the screen
        return (((windowBottom >= imageTop) && (windowTop <= imageTop)) || ((windowBottom >= imageBottom) && (windowTop <= imageBottom))) &&
            (((windowRight >= imageLeft) && (windowLeft <= imageLeft)) || ((windowRight >= imageRight) && (windowLeft <= imageRight)));
    };


    // Load the image
    function loadImage(image) {
        var $image = $(image);
        $image.hide().attr('src', $image.data('src')).removeAttr('data-src');
        $image.load(function () {
            $image.siblings('img.lazyloader-icon').remove();
        });
    };

})(jQuery);
