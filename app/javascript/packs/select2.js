import "bootstrap";
import $ from 'jquery';
import "select2";

$(document).ready(function() {
  if ($('#users_book_categories')) {
  $('#users_book_categories').select2({
  multiple: "multiple"
  });

  }
});
