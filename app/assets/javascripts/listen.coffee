@callthis = (id) ->
	$('#img_example-' + id).hide()
	console.log "we made it here "


@listen = (id) ->
	console.log "id: " + id
	if ($('#img_example_before-' + id).is ':hidden') & ($('#img_example-' + id).is ':visible')
		$('#img_example-' + id).hide()
		$('#img_example_before-' + id).show()
		return
	if ($('#img_example-' + id).is ':hidden') & ($('#img_example_before-' + id).is ':visible')
		$('#img_example-' + id).show()
		$('#img_example_before-' + id).hide()
		return
	return

