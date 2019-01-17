function readURL(input, id) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
      if (id == "#img_slider_title_1" || id == "#img_slider_title_2") {
        $(id).attr('src', e.target.result);
      } else {
        $(id).attr('src', e.target.result).height(200);
      }
    };

    reader.readAsDataURL(input.files[0]);
  }
}
