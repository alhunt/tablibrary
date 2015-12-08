# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
startScroll = ->
  docHeight = $(document).height()
  currentPos = $(window).height() + $("body").scrollTop()
  tabLines = $('#tabContent').text().trim(' ').split('\n').length
  scrollTime = (tabLines * 1000) * ((docHeight - currentPos) / docHeight)
  $("html, body").animate( {
    scrollTop: $(document).height()
  }, scrollTime)
  
stopScroll = ->
  $("html,body").stop(true)

jQuery ->
  $('.pauseButton').click (event) ->
    stopScroll()
    event.preventDefault()

  $('.playButton').click (event) ->
    startScroll()
    event.preventDefault()
  
