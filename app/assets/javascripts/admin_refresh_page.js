$(document).on('turbolinks:load', function(){
  $("#left-bar-admin-user, #left-bar-admin-about, #left-bar-admin-slider, #admin-new-user, #admin-edit-slider").click( function(){
    window.location.reload();
  });
})
