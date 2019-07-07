var new_blog_post_height = 0;
var cursor_position = 0;

$(document).on('turbolinks:load', function(){
	if(window.location.includes("blogs/new")){
		new_blog_post_height = $('#blog_post').prop('scrollHeight'); 
	}
});


function expand_textarea(){
	// alert(" reached expand_textarea()");
}

function on_input(obj){
	if(parseInt($('#blog_post').prop("selectionStart")) == 1){
		new_blog_post_height = $('#blog_post').prop('scrollHeight');
	}
	cursor_position = $('#blog_post').prop("scrollHeight");
	if(cursor_position > new_blog_post_height){
		$('#blog_post').height(cursor_position);
	}
}
