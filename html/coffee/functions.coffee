# @codekit-prepend "waypoints.coffee"

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

  $(".slide_left, .slide_right").addClass('off')
  $(".slide_left, .slide_right").waypoint (direction)->
    $(this).toggleClass('off')
  , { offset: '75%' }




  $(window).scroll ->

    #console.log($(this).scrollTop() - ($(window).height() / 2))
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
