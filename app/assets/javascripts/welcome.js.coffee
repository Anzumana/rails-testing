# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
#
#
paintIt = (element, backgroundColor, textColor) ->
  element.style.backgroundColor = backgroundColor
  document.write "<h2>TEST</h2>"
  if textColor?
    element.style.color = textColor

	


