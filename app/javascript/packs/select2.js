import "bootstrap";
import $ from 'jquery';
import "select2";

$(document).ready(function() {
  $('.js-example-basic-multiple').select2({
  multiple: "multiple"
  });

  $('.select2-mood-modal').select2({
    multiple: "multiple"
    });

  $('.select2-book-modal').each(function() {
    console.log("hello");
   $(this).select2({
    multiple: "multiple"
   });
  });
});

