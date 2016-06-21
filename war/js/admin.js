function createUser(username, password, role) {
	console.log(username); console.log(password); console.log(role);
	$.ajax({
		url : "/bq/admin/create-user",
		data : {
			"email" : username,
			"password" : password,
			"role": role
		},
		method : "POST",
		dataType : "json",
		success : function(data) {
			addSuccess($("#msg-div"),data);
		},
		error : function(xhr){
			console.log(xhr.status);
			if(xhr.status == 417) {
				addError($("#msg-div"),xhr.statusText);
			}else if(xhr.status == 200){
				addSuccess($("#msg-div"),xhr.statusText);
			}
		}
	});
}

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
			window.location.assign("/bq/admin/dashboard");
		},
		error : function(xhr){
			console.log(xhr.status);
			if(xhr.status == 417) {
				addError($("#msg-div"),xhr.statusText);
			}else if(xhr.status == 200){
				window.location.assign("/bq/admin/dashboard");
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