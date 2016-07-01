$(document).ready(function() {
	
	$(".form-member").click(function() {
		$.ajax({
			url : "/bq/closed/search-candidate",
			dataType :  "json",
			data : $("#search-form").serialize(),
			success : function (data) {
				console.log(data);
				updateSearchUi(data);
			},
			error : function (xhr,status,resp) {
				console.log(status);
			},
			complete : function () {
				console.log("done");
			}
		});
	});
});

function updateSearchUi(data) {
	$(".results-found").text(data.numberFetched);
	var list = "";
	for(i=0; i < data.candidates.length; i++) {
		list += ''
		list +='<div class="col-sm-12"style="border-bottom: 1px #e1e1e1 solid; margin-bottom: 2%; margin-top: 2%;">'
			+'<div class="col-sm-3"><a href="/bq/open/job?job-key='+data.candidates[i].jobKey+'"><img'
			+' alt="" src="'+data.candidates.pictureUrl+'" class="img img-responsive"></a></div><div class="col-sm-9">'
			+'<h4><a href="/bq/open/job?job-key='+data.candidates.jobKey+'">'+data.candidates.jobTitle+'</a></h4>'
			+'<h5 style="font-family: calibri">'+data.candidates.companyName+'</h5>'
			+'<h5><strong class="text-success">'+data.candidates.location+'</strong>'
			+'<i style="font-family: calibri" class="text-danger pull-right">Posted '+data.ijobs[i].postedTime+'</i>'
			+'</h5></div></div>';
	}
	$("#list-container").empty();
	$("#list-container").append(list);
	console.log(list);
}