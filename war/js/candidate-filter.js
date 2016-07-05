$(document).ready(function() {

	$(".form-member").click(function() {
		$.ajax({
			url : "/bq/closed/find-candidates",
			dataType : "json",
			data : $("#search-form").serialize(),
			success : function(data) {
				console.log(data);
				updateSearchUi(data);
			},
			error : function(xhr, status, resp) {
				console.log(status);
			},
			complete : function() {
				console.log("done");
			}
		});
	});
});

function updateSearchUi(data) {
	var candidateName = "";
	$(".results-found").text(data.numberFetched);
	var list = "";
	for (i = 0; i < data.prospects.length; i++) {
		candidateName = data.prospects[i].firstName+" "+data.prospects[i].lastName;
		list += ''
		list += '<div class="row" style="padding: 2%; background-color: white; border-bottom: 1px solid #dadada">'
				+'<div class="col-sm-1" style="padding-top: 5%;"><input class="select-prospect" type="checkbox"></div>'
				+'<div class="col-sm-3" style="text-align: center"><img class="img img-responsive img-circle" alt="" style="margin: 0px" src="/images/unknown-user.jpg" ></div>'
				+ '<div class="col-sm-8 no-padding-div"><h5 style="margin-bottom: 2px; font-size: 12pt"><span id="candidate-name">'
				+ candidateName+'</span><i style="color: #983b59" class="fa fa-envelope pull-right" aria-hidden="true"></i>'
				+ '<i style="color: #983b59"	class="fa fa-trash pull-right" aria-hidden="true"></i></h5>'
				+ '<div class="text-success" style="font-family: calibri">'+data.prospects[i].highestQualification
				+ '<div class="dropdown pull-right"><button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">'
				+ 'Add To Project <span class="caret"></span></button><ul class="dropdown-menu"><li><a href="#"></a></li></ul></div></div>'
				+ '<div class="text-info" style="font-size: 10pt; font-stretch: narrower; font-style: italic;">'
				+ data.prospects[i].yearsOfExperience+' years experience</div></div></div>';
	}
	$("#list-container").empty();
	$("#list-container").append(list);
	console.log(list);
}