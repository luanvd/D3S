function readURL(input, id) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    var IMG_NOT_HEIGHT = ["#img_slider_title_1", "#img_slider_title_2", "#img_prev_img_about",
    "#img_prev_img_enga", "#img_prev_img_enga_producter", "#img_prev_img_enga_quality",
    "#img_prev_img_origine", "#img_prev_img_product", "#img_prev_img_producter",
    "#img_prev_img_facility", "#img_prev_img_contact", "#img_prev_img_about_fr", "#img_prev_img_enga_fr",
    "#img_prev_img_enga_producter_fr", "#img_prev_img_enga_quality_fr",
    "#img_prev_img_origine_fr", "#img_prev_img_product_fr", "#img_prev_img_producter_fr",
    "#img_prev_img_facility_fr", "#img_prev_img_contact_fr"]
    reader.onload = function (e) {
      if (IMG_NOT_HEIGHT.includes(id)) {
        $(id).attr('src', e.target.result);
      } else {
        $(id).attr('src', e.target.result).height(200);
      }
    };

    reader.readAsDataURL(input.files[0]);
  }
}
