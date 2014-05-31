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
    if $(this).scrollTop() > 5
      $('#logo').addClass('logo-vertical')
    else
      $('#logo').removeClass('logo-vertical')
    if $(this).scrollTop() > 15
      $('#logo').addClass('logo-vertical-1')
    else
      $('#logo').removeClass('logo-vertical-1')
    if $(this).scrollTop() > 30
      $('#logo').addClass('logo-vertical-2')
    else
      $('#logo').removeClass('logo-vertical-2')
    if $(this).scrollTop() > 50
      $('#logo').addClass('logo-vertical-3')
    else
      $('#logo').removeClass('logo-vertical-3')
    return
