function addError(msgD, msg) {
	msgD.removeClass("alert-success");
	msgD.addClass("alert alert-danger");
	msgD.html(msg);
}

function addSuccess(msgD, msg) {
	msgD.removeClass("alert-danger");
	msgD.addClass("alert alert-success");
	msgD.html(msg);
}

$(document).ready(function() {
	
	
	
	$("#add-mailing-list").click(function() {
		$("#mailing-list-div").waitMe({
			effect : 'bounce',
			color : '#013143',
			sizeW : '10',
			sizeH : '10'
		});
		
		$.ajax({
			url:"/bq/open/handler/newsletter-subscribe",
			data: $("#newsletter-subscribe-form").serialize(),
			success: function(data) {
				addSuccess($("#mailing-list-msg-div"), "You have been subscribed to our newsletter.");
			},
			error: function(xhr,status,errorThrown) {
				addError($("#mailing-list-msg-div"), "We could no subscribe you at this time, Please try again.");
			},
			complete : function() {
				$("#mailing-list-div").waitMe('hide');
			}
		});
	});
	
});