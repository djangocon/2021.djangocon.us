// JS
import jQuery from 'jquery';
import 'what-input';
import 'foundation-sites';
import Headroom from 'headroom.js';

window.$ = window.jQuery = jQuery;

// Setup header
const headroomElem = document.querySelector(".headroom");
// construct an instance of Headroom, passing the element
const headroom  = new Headroom(headroomElem);
// initialise
headroom.init({
  offset : 200,
});

// init Foundation
$(document).foundation();

// toggle hamburger menu on offcanvas open
$("[data-off-canvas-wrapper]")
  .bind("opened.zf.offcanvas closed.zf.offcanvas", function(e) {
    $(".hamburger").toggleClass("is-active");
});

/*
const hour = (new Date()).getHours();
// If it's after 6pm or before 7am, set the Sunset effect.
if (hour > 18 || hour < 7) {
  $("body").addClass('sunset');
}
*/
