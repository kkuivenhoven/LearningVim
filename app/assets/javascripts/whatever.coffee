$(document).ready ->
	toggleSwitch = $('#switch-6')
	vimIds = $('#vim_ids') 
	all_ids = document.getElementById('vim_ids').innerHTML
	first_tmp = all_ids.replace('[', '')
	final_ids = first_tmp.replace(']', '')
	newIds = final_ids.split ","
	# alert 'newIds: ' + newIds
	# alert 'length: ' + newIds.length
	i = 0
	while i < newIds.length
		console.log newIds[i]
		i++
	# if ($('#img_example_before-6').is ':visible') & ($('#img_example-6').is ':visible')
		# console.log "both are visible"
	return

# reference console logs
# console.log "i'm here"
# console.log $('#img_example_before-6')
# console.log Object.keys $('#img_example_before-6')
# console.log Object.values $('#img_example_before-6')
# console.log $('#img_example_before-6').is ':visible'
# console.log $('#img_example_before-6').css('display')

# $(document).ready ->
# @listen = () ->
# listen = () ->
#	$('#slider-6').on 'click', ->
#		if $('#img_example_before-6').is ':hidden'
#			console.log "example after is visible and other is not"
#			$('#img_example-6').hide()
#			$('#img_example_before-6').show()
#		if $('#img_example-6').is ':hidden'
#			$('#img_example-6').show()
#			$('#img_example_before-6').hide()
#			console.log "example before is visible and other is not"
#		if ($('#img_example_before-6').is ':visible') & ($('#img_example-6').is ':visible')
#			console.log "both are visible"
#			$('#img_example_before-6').hide()
#			$('#img_example_before-6').hide()
#		return
