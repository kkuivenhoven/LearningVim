var new_blog_post_height = 0;
var new_blog_title_height = 0;
var cursor_position = 0;
var title_cursor_position = 0;
var blog_selection_start_val = 0;
var blog_scroll_height = 26;


$(document).on('turbolinks:load', function(){
	if(window.location.includes("blogs/new")){
		new_blog_post_height = $('#blog_post').prop('scrollHeight'); 
		new_blog_title_height = $('#blog_post').prop('scrollHeight'); 
	}
});


function expand_textarea(){
	// alert(" reached expand_textarea()");
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


