# How long to display status messages (in milliseconds)

# Init the form once the document is ready

# Initialize the form
init = ->
  
  # Hide the form initially.
  # Make submitForm() the form's submit handler.
  # Position the form so it sits in the centre of the browser window.
  $("#contactForm").show().submit(submitForm).addClass "positioned"
  
  # When the "Send us an email" link is clicked:
  # 1. Fade the content out
  # 2. Display the form
  # 3. Move focus to the first field
  # 4. Prevent the link being followed
  $("a[href=\"#contactForm\"]").click ->
    $("#contactForm").fadeTo "slow", .2
    $("#contactForm").fadeIn "slow", ->
      $("#senderName").focus()

    false


# Submit the form via Ajax
submitForm = ->
  contactForm = $(this)
  
  # Are all the fields filled in?
  if not $("#senderName").val() or not $("#senderEmail").val() or not $("#message").val()
    
    # No; display a warning message and return to the form
    $("#incompleteMessage").fadeIn().delay(messageDelay).fadeOut()
    contactForm.fadeOut().delay(messageDelay).fadeIn()
  else
    
    # Yes; submit the form to the PHP script via Ajax
    $("#sendingMessage").fadeIn()
    contactForm.fadeOut()
    $.ajax
      url: contactForm.attr("action") + "?ajax=true"
      type: contactForm.attr("method")
      data: contactForm.serialize()
      success: submitFinished

  
  # Prevent the default form submission occurring
  false

# Handle the Ajax response
submitFinished = (response) ->
  response = $.trim(response)
  $("#sendingMessage").fadeOut()
  if response is "success"
    
    # Form submitted successfully:
    # 1. Display the success message
    # 2. Clear the form fields
    # 3. Fade the content back in
    $("#successMessage").fadeIn().delay(messageDelay).fadeOut()
    $("#senderName").val ""
    $("#senderEmail").val ""
    $("#message").val ""
    $("#contactForm").delay(messageDelay + 500).fadeIn()
  else
    
    # Form submission failed: Display the failure message,
    # then redisplay the form
    $("#failureMessage").fadeIn().delay(messageDelay).fadeOut()
    $("#contactForm").delay(messageDelay + 500).fadeIn()
messageDelay = 2000
$ init
