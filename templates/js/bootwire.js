/*

Use this for any additional Jquery

*/

$(document).ready(function() {



/*

Bootstrap has an issue with both Thumbnails and repeating <divs> in fuid rows that may repeat over several rows.

The second row and onwards has the wrong left margin for the first item in the row, breaking
the system.

The folllowing two bits of JQuery fix that.

NOTE: you MUST add this to your CSS somewhere:

.first-in-row { 
  margin-left: 0 !important;
}​

Be careful, depending where you put the CSS is can break the top nav bar, so make sure it is
after any css that deals with that navigation.

*/

/**
 * Adds 0 left margin to the first thumbnail on each row that don't get it via CSS rules.
 * Recall the function when the floating of the elements changed.
 */
function fixThumbnailMargins() {
    $('.row-fluid .thumbnails').each(function () {
        var $thumbnails = $(this).children(),
            previousOffsetLeft = $thumbnails.first().offset().left;
        $thumbnails.removeClass('first-in-row');
        $thumbnails.first().addClass('first-in-row');
        $thumbnails.each(function () {
            var $thumbnail = $(this),
                offsetLeft = $thumbnail.offset().left;
            if (offsetLeft < previousOffsetLeft) {
                $thumbnail.addClass('first-in-row');
            }
            previousOffsetLeft = offsetLeft;
        });
    });
}

// Fix the margins when potentally the floating changed
$(window).resize(fixThumbnailMargins);

fixThumbnailMargins();

/**
 * Adds 0 left margin to the first post on each row that don't get it via CSS rules.
 * Recall the function when the floating of the elements changed.
 *
 * To specify where this should work, I have added an additional class of "theposts" to the row-fluid div.
 */
function fixThepostMargins() {
    $('.row-fluid.theposts').each(function () {
        var $theposts = $(this).children(),
            previousOffsetLeft = $theposts.first().offset().left;
        $theposts.removeClass('first-in-row');
        $theposts.first().addClass('first-in-row');
        $theposts.each(function () {
            var $thepost = $(this),
                offsetLeft = $thepost.offset().left;
            if (offsetLeft < previousOffsetLeft) {
                $thepost.addClass('first-in-row');
            }
            previousOffsetLeft = offsetLeft;
        });
    });
}

// Fix the margins when potentally the floating changed
$(window).resize(fixThepostMargins);

fixThepostMargins();


// End Document Ready Function
 });