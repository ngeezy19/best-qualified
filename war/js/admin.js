function login (username, password) {
	
	$.ajax({
		url : "/bq/admin/admin-login",
		data : {
			"username" : username,
			"password" : password
		},
		method : "POST",
		dataType : "json",
		success : function(data) {
			window.location.assign(data);
		},
		error : function(xhr){
			console.log(xhr.status);
			if(xhr.status == 417) {
				addError($("#msg-div"),xhr.statusText);
			}else if(xhr.status == 200){
				window.location.assign(xhr.statusText);
			}
		}
	});
}


function updatePassword(form) {
	$.ajax({
		url : "",
		data : form.serialize(),
		dataType : "json",
		method : "POST",
		success : function(data) {
			addSuccess($("#msg-div"), "Your Password has been updated.")
		}, 
		error : function(xhr) {
			addError($("#msg-div"), "Invalid Username/Password.");
		}
	});
}