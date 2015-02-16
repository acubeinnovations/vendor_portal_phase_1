startSpinner = ->
 $("html").css "cursor", "progress"
 $('#loader').show()
 return
stopSpinner = ->
 $("html").css "cursor", "auto"
 $('#loader').hide()
 return
$(document).on "page:fetch", startSpinner
$(document).on "page:receive", stopSpinner

