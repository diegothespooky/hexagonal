# Configuration properties
sliderSpeed = 8000
currentSlide = 0

# private properties
lastSlide = 0

$(window).load ->
  loadSlider()
  loadColumns()
  loadTest()
  $(".testDiv svg polygon").each (index, element) =>
    lastClass = $(element).attr("class")
    if lastClass is "hexyLight0"
      $(element).remove()

loadSlider = ->
  $.ajax "../../images/hex23x9.svg",
    type: "GET"
    success: (data)->
       $(".hexSlider").append( data.children[0].outerHTML )
    async: false 
  lastSlide = $(".hexSlider .slideDivText article").length - 1
  animateSlide()

animateSlide = ->
  $(".hexSlider .slideDivText article").each (index, element) => 
    if index isnt currentSlide
      $(element).addClass("hidden")
      $(".slideImage:nth-child("+(index+1)+")").addClass("hidden")
    else
      $(element).removeClass("hidden")
      $(".slideImage:nth-child("+(index+1)+")").removeClass("hidden")
  currentSlide = if currentSlide isnt lastSlide then currentSlide + 1 else 0
  $(".hexSlider svg polygon").each (index, element) =>
    thisRandom = Math.random()
    if index < 9 or index > 198 or index % 9 is 0 or (index+1) % 9 is 0
      if (thisRandom) > .5
        $(element).attr("class","hexyLight0")
      else if (thisRandom) > .28
        $(element).attr("class","hexyLight1")
      else if (thisRandom) > .14
        $(element).attr("class","hexyLight2")
      else
        $(element).attr("class","hexyLight3")
  setTimeout animateSlide,sliderSpeed

loadColumns = ->
  $.ajax "../../images/hex7x6.svg",
    type: "GET"
    success: (data)->
       $(".hex5x6").append( data.children[0].outerHTML )
    async: false 

loadTest = ->
  $.ajax "../../images/hex24x10.svg",
    type: "GET"
    success: (data)->
       $(".testDiv").append( data.children[0].outerHTML )
    async: false 


