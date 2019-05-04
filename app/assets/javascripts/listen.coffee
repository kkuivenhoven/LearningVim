$(document).ready ->
	if ($('#img_example_before-6').is ':visible') & ($('#img_example-6').is ':visible')
		$('#img_example-6').hide()
	return


@listen = () ->
	if ($('#img_example_before-6').is ':hidden') & ($('#img_example-6').is ':visible')
		$('#img_example-6').hide()
		$('#img_example_before-6').show()
		return
	if ($('#img_example-6').is ':hidden') & ($('#img_example_before-6').is ':visible')
		$('#img_example-6').show()
		$('#img_example_before-6').hide()
		return
	return

