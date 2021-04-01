// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

require("chartkick")
require("chart.js")

Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(document).on('turbolinks:load', function() {

  // hide form when cancel link is clicked
  $(document).on('click', function(e) {
    let target = $(e.target);
    if (target.attr('id') == 'cancel-link') {
      e.preventDefault();
      $("#form-container").slideUp('fast');
      $("#cancel-link").addClass("hidden");
      $("#new-bookmark-link").removeClass('hidden');
    }
  });

});
