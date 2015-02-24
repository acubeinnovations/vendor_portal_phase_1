# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready_trackingsheets = ->
	$('.get-versions').on 'click', ->
		userid = $(this).data().userid.$oid
		tsid = $(this).data('trackingsheetid').$oid
		$.get '/trackingsheets/vendor_versions.js',
  		userid: userid
  		tsid: tsid
		return
		
$(document).ready(ready_trackingsheets)
$(document).on('page:load', ready_trackingsheets)
