// JS
import jQuery from 'jquery';
import 'what-input';
import 'foundation-sites';

window.$ = window.jQuery = jQuery;

// init Foundation
$(document).foundation();

// toggle hamburger menu on offcanvas open
$("[data-off-canvas-wrapper]")
  .bind("opened.zf.offcanvas closed.zf.offcanvas", function(e) {
    $(".hamburger").toggleClass("is-active");
});
