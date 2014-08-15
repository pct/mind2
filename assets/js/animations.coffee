$(window).scroll ->
  $(".profile h2").each ->
    imagePos = $(this).offset().top
    topOfWindow = $(window).scrollTop()
    $(this).addClass "animated fadeInDown"  if imagePos < topOfWindow + 500


$(window).scroll ->
  $(".profile p").each ->
    imagePos = $(this).offset().top
    topOfWindow = $(window).scrollTop()
    $(this).addClass "animated fadeInDown"  if imagePos < topOfWindow + 500


$(window).scroll ->
  $(".personal-info").each ->
    imagePos = $(this).offset().top
    topOfWindow = $(window).scrollTop()
    $(this).addClass "animated flipInX"  if imagePos < topOfWindow + 500


$(window).scroll ->
  $("#portfolio .item").each ->
    imagePos = $(this).offset().top
    topOfWindow = $(window).scrollTop()
    $(this).addClass "animated flipInX"  if imagePos < topOfWindow + 500


$(window).scroll ->
  $(".page-head").each ->
    imagePos = $(this).offset().top
    topOfWindow = $(window).scrollTop()
    $(this).addClass "animated fadeInDown"  if imagePos < topOfWindow + 500


$(window).scroll ->
  $(".resume-info").each ->
    imagePos = $(this).offset().top
    topOfWindow = $(window).scrollTop()
    $(this).addClass "animated slideInLeft"  if imagePos < topOfWindow + 500


$(window).scroll ->
  $(".services-info li").each ->
    imagePos = $(this).offset().top
    topOfWindow = $(window).scrollTop()
    $(this).addClass "animated flipInX"  if imagePos < topOfWindow + 500


$(window).scroll ->
  $("article").each ->
    imagePos = $(this).offset().top
    topOfWindow = $(window).scrollTop()
    $(this).addClass "animated flipInX"  if imagePos < topOfWindow + 500


$(window).scroll ->
  $(".contact-form").each ->
    imagePos = $(this).offset().top
    topOfWindow = $(window).scrollTop()
    $(this).addClass "animated fadeInUp"  if imagePos < topOfWindow + 500


