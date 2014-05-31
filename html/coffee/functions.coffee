$(document).ready ->
  image_url = $('#background_image').attr('src')
  $("#full_width_background").backstretch(image_url, {centeredY: false})
