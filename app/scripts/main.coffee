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
