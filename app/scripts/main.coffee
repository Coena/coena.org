$ ->
  'use strict'

  scrollToPosition = (event) ->
    if event?
      event.preventDefault()

    target = $(this).attr('href')
    $('body').animate({scrollTop:$(target).offset().top + 1}, 500, () ->
      window.location.hash = target
    )

  $('nav a,.nav-home').click(scrollToPosition)
  
  $(".collapse-left-nav").on "click", ->
    $(".left-nav").addClass "hidden"
    $("#contents > section").css "padding", "120px 0 0 0"
    $(".left-nav-activator").removeClass "hidden"
    return

  $(".left-nav-activator").on "click", ->
    $(this).addClass "hidden"
    $(".left-nav").removeClass "hidden"
    $("#contents > section").css "padding", "120px 0 0 75px"
    return
    
