# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
startScroll = ->
  $("html, body").animate {
    scrollTop: 700
  }, 12000
  
stopScroll = ->
  $("html,body").stop(true)

jQuery ->
  $('.pauseButton').click (event) ->
    stopScroll()
    event.preventDefault()

  $('.playButton').click (event) ->
    startScroll()
    event.preventDefault()
  
