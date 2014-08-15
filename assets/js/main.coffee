# Loading Script 
$(window).load ->
  "use strict"
  $(".loader").delay(500).fadeOut()
  $("#mask").delay(1000).fadeOut "slow"


# Flexslider 
$(window).load ->
  "use strict"
  $(".flexslider").flexslider
    animation: "fade"
    start: (slider) ->
      $(".np-controls a.next").click (event) ->
        event.preventDefault()
        slider.flexAnimate slider.getTarget("next")

      $(".np-controls a.previous").click (event) ->
        event.preventDefault()
        slider.flexAnimate slider.getTarget("previous")




# Mixitup Portfolio 
jQuery(document).ready ($) ->
  "use strict"
  $("#portfolio").mixitup
    targetSelector: ".item"
    transitionSpeed: 450



# Nivo - Lightbox 
jQuery(document).ready ($) ->
  "use strict"
  $(".nivo-lbox").nivoLightbox effect: "fade"


# Skills 
jQuery(document).ready ($) ->
  "use strict"
  $(".skills-info").appear (->
    $(".skill1").css "width", "71%"
    $(".skill2").css "width", "85%"
    $(".skill3").css "width", "76%"
    $(".skill4").css "width", "53%"
    $(".skill5").css "width", "69%"
  ),
    accX: 0
    accY: -150



# Google map 
$ ->
  "use strict"
  map = new GMaps(
    el: "#map"
    lat: 40.714353
    lng: -74.005973
    zoom: 15
    zoomControl: true
    zoomControlOpt:
      style: "BIG"
      position: "TOP_LEFT"

    panControl: true
    streetViewControl: false
    mapTypeControl: false
    overviewMapControl: false
  )
  styles = [stylers: [
    hue: "#00ffe6"
  ,
    saturation: -100
  ]]
  map.addStyle
    styledMapName: "Styled Map"
    styles: styles
    mapTypeId: "map_style"

  map.setStyle "map_style"
  map.addMarker
    lat: 40.714353
    lng: -74.005973
    icon: "img/marker.png"


