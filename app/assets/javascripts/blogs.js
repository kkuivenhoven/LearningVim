var new_blog_post_height = 0;
var new_blog_title_height = 0;
var cursor_position = 0;
var title_cursor_position = 0;
var blog_selection_start_val = 0;
var blog_scroll_height = 26;


var edit_blog_post_height = 0;
var edit_blog_title_height = 0;
var edit_cursor_position = 0;
var edit_blog_selection_start_val = 0;
var edit_blog_scroll_height = 26;
var initial_edit_page_load = false;


$(document).on('turbolinks:load', function(){
	console.log(" window.location: " + window.location);
	// if(window.location.includes("edit")){
	if(window.location.href.indexOf("edit") != -1){
		edit_blog_post_height = $('#blog_post').prop('scrollHeight'); 
		edit_blog_title_height = $('#blog_post').prop('scrollHeight'); 
		$('#blog_post').height(edit_blog_post_height);
		console.log("  edit_blog_post_height: " + edit_blog_post_height);
		initial_edit_page_load = true;
	}
	if(window.location.includes("blogs/new")){
		new_blog_post_height = $('#blog_post').prop('scrollHeight'); 
		new_blog_title_height = $('#blog_post').prop('scrollHeight'); 
	}
});


function expand_textarea(){
	// alert(" reached expand_textarea()");
}


function edit_on_input(obj){
	console.log(" .:^:.  $('#blog_post').prop('scrollHeight'): " + $('#blog_post').prop('scrollHeight'));
	console.log(" .:^:.  $('#blog_post').prop('selectionStart'): " + $('#blog_post').prop('selectionStart'));
	console.log(" ------------------------------------------------------- ");
	edit_cursor_position = $('#blog_post').prop("selectionStart");
	if((edit_cursor_position * edit_blog_scroll_height) > edit_blog_post_height){
		console.log(" asdfasdfasdfasdf");
		if(initial_edit_page_load == true){
			$('#blog_post').height(edit_blog_post_height);
			initial_edit_page_load = false;
		} else {
			$('#blog_post').height(edit_cursor_position * edit_blog_scroll_height);
			console.log(" initial_edit_page_load is false: " + initial_edit_page_load);
		}
		edit_blog_selection_start_val = $('#blog_post').prop('selectionStart');
	} 
	else {
		if(edit_cursor_position != 0){
			if(edit_cursor_position != 1){
				$('#blog_post').height(edit_cursor_position * edit_blog_scroll_height);
			} else {
				$('#blog_post').height(52);
			} 
		} 
		else {
			// $('#blog_post').height((cursor_position+1) * blog_scroll_height);
			$('#blog_post').height(52);
		}
		edit_blog_selection_start_val = $('#blog_post').prop('selectionStart');
	}
}


function on_input(obj){
	if(parseInt($('#blog_post').prop("selectionStart")) == 1){
		new_blog_post_height = $('#blog_post').prop('scrollHeight');
		blog_selection_start_val = $('#blog_post').prop('selectionStart');
	}
	cursor_position = $('#blog_post').prop("selectionStart");
	if((cursor_position * blog_scroll_height) > new_blog_post_height){
		$('#blog_post').height(cursor_position * blog_scroll_height);
		blog_selection_start_val = $('#blog_post').prop('selectionStart');
	} 
	else {
		if(cursor_position != 0){
			if(cursor_position != 1){
				$('#blog_post').height(cursor_position * blog_scroll_height);
			} else {
				$('#blog_post').height(52);
			} 
		} 
		else {
			// $('#blog_post').height((cursor_position+1) * blog_scroll_height);
			$('#blog_post').height(52);
		}
		blog_selection_start_val = $('#blog_post').prop('selectionStart');
	}
}


function title_on_input(obj){
	if(parseInt($('#blog_title').prop("selectionStart")) == 1){
		new_blog_title_height = $('#blog_title').prop('scrollHeight');
	}
	title_cursor_position = $('#blog_title').prop("scrollHeight");
	if(title_cursor_position > new_blog_title_height){
		$('#blog_title').height(title_cursor_position);
	}
}


function on_key_stroke(e){
	// alert(" event.keyCode: ");
}	


function onCardClick(id) {
	window.location.href = ("/blogs/" + id);
}
