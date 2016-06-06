$(document).ready(function() {
	
	$(".form-member").click(function() {
		var keyword = $(".keyword").val();
		$.ajax({
			url: "/bq/open/find-job",
			data : $("#search-form").serialize(),
			dataType : "json",
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
	for(i=0; i < data.ijobs.length; i++) {
		list +='<div class="col-sm-12"style="border-bottom: 1px #e1e1e1 solid; margin-bottom: 2%; margin-top: 2%;">'
			+'<div class="col-sm-3"><a href="/bq/open/job?job-key='+data.ijobs[i].jobKey+'"><img'
			+' alt="" src="'+data.ijobs[i].pictureUrl+'" class="img img-responsive"></a></div><div class="col-sm-9">'
			+'<h4><a href="/bq/open/job?job-key='+data.ijobs[i].jobKey+'">'+data.ijobs[i].jobTitle+'</a></h4>'
			+'<h5 style="font-family: calibri">'+data.ijobs[i].companyName+'</h5>'
			+'<h5><strong class="text-success">'+data.ijobs[i].location+'</strong>'
			+'<i style="font-family: calibri" class="text-danger pull-right">Posted '+data.ijobs[i].postedTime+'</i>'
			+'</h5></div></div>';
	}
	$("#list-container").empty();
	$("#list-container").append(list);
	console.log(list);
}