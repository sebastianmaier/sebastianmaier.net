$(document).ready ->
  image_url = $('#background_image').attr('src')
  $("#full_width_background").backstretch(image_url, {centeredY: false})

  $(".scroll-to-top").click ->
    $("body,html").animate
      scrollTop: 0
    , 1000
    false

  $("#start_reading").click ->
    $("body,html").animate
      scrollTop: 470
    , 2000
    false


  $(window).scroll ->
    if $(this).scrollTop() > 100
      $(".scroll-to-top").fadeIn()
    else
      $(".scroll-to-top").fadeOut()
    return
