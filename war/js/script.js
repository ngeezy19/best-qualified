var questions = null;

var questionCounter = 1; // Tracks question number
var cQ = 0;
var selections = []; // Array containing user choices
var quiz = $('#quiz'); // Quiz div object
var answers = []; // get answers with id
var webkey = "";
/*
// Display initial question
displayNext();

// Click handler for the 'next' button
$('#next').on('click', function(e) {
	e.preventDefault();

	// Suspend click listener during fade animation
	if (quiz.is(':animated')) {
		return false;
	}
	choose();

	// If no user selection, progress is stopped
	if (isNaN(selections[questionCounter])) {
		alert('Please make a selection!');
	} else {
		questionCounter++;
		displayNext();
	}
});

// Click handler for the 'prev' button
$('#prev').on('click', function(e) {
	e.preventDefault();
	$('#submit').hide();
	if (quiz.is(':animated')) {
		return false;
	}
	choose();
	questionCounter--;
	displayNext();
});

// Click handler for the 'submit' button
$('#submit').on('click', function(e) {
	e.preventDefault();
	// if(quiz.is(':animated')) {
	// return false;
	// }
	sendData();
});

// // Click handler for the 'Start Over' button
// $('#start').on('click', function (e) {
// e.preventDefault();

// if(quiz.is(':animated')) {
// return false;
// }
// questionCounter = 0;
// selections = [];
// displayNext();
// $('#start').hide();
// });

// Animates buttons on hover
/*$('.button').on('mouseenter', function() {
	$(this).addClass('active');
});
$('.button').on('mouseleave', function() {
	$(this).removeClass('active');
});*/

// Creates and returns the div that contains the questions and
// the answer selections
/*function createQuestionElement(questions, index) {
	var qElement = $('<div>', {
		id : 'question'
	});

	var header = $('<h4>Question ' + (index + 1) + '.</h4>');
	qElement.append(header);

	var question = $('<p class="well wello">')
			.append(questions[index].question);
	qElement.append(question);

	//var radioButtons = createRadios(index);
	//qElement.append(radioButtons);

	return qElement;
}*/

// Creates a list of the answer choices as radio inputs
/*function createRadios(index) {
	var radioList = $('<div class="quetsto">');
	var item;
	var input = '';
	for (var i = 0; i < questions[index].choices.length; i++) {
		item = $('<div class="radio"><label>');
		input = '<input type="radio" name="answer" value=' + i + ' />';
		input += questions[index].choices[i];
		item.append(input);
		radioList.append(item);

	}

	webkey = questions[index].webkey;
	return radioList;
}*/

// Reads the user selection and pushes the value to an array
/*function choose() {
	selections[questionCounter] = +$('input[name="answer"]:checked').val();
	var pick = $('input[name="answer"]:checked').val();

	if (pick) {
		answers.push({
			webkey : webkey,
			choice : pick
		});
	}

	console.log("from choose: " + answers);
}*/

// Displays next requested element
/*function displayNext() {
	quiz.fadeOut(function() {
		$('#question').remove();

		if (questionCounter < questions.length) {
			var nextQuestion = createQuestionElement(questionCounter);
			quiz.append(nextQuestion).fadeIn();
			if (!(isNaN(selections[questionCounter]))) {
				$('input[value=' + selections[questionCounter] + ']').prop(
						'checked', true);
			}

			// Controls display of 'prev' button
			if (questionCounter === 1) {
				$('#prev').show();
			} else if (questionCounter === 0) {

				$('#prev').hide();
				$('#next').show();

			}

			if (questionCounter == (questions.length - 1)) {
				$('#next').hide();
				$('#submit').show();
				console.log("just hid the previous button");
			}
		} else {
			// //var scoreElem = displayScore();
			// //quiz.append("<p>Hello World</p>").fadeIn();
			$('#next').hide();
		}
	});

	// console.log(questions.length);
}*/

/*function sendData() {
	$.ajax({
		type : "GET",
		url : 'http://localhost/projects/bq/result.html',
		data : JSON.stringify(answers),
		contentType : "application/json",
		dataType : 'text',
		success : function(data) {
			alert(data);
			// console.log("From ajax: "+ data);
		},
		failure : function() {
			alert("fail");
		}
	});
}*/

function loadForm(str) {
	
	if(str==="prev") {
		questionCounter--;
		console.log(questionCounter);
	}else if(str==="next") {
		questionCounter++;
		console.log(questionCounter);
	}
	cQ = questionCounter-1;
	var cQuestion = questions[cQ].question;
	var cAlts = questions[cQ].choices;
	var cAns = questions[cQ].correctAnswer;
	var userChoice = questions[cQ].correctAnswer
	
	
	
	
	$("#question-number").text(questionCounter);
	$("#question-body").text(cQuestion);
	$("#alt-0").text(cAlts[0]);
	$("#alt-1").text(cAlts[1]);
	$("#alt-2").text(cAlts[2]);
	$("#alt-3").text(cAlts[3]);
	$("#alt-4").text(cAlts[4]);
	$(".choice").prop("checked",false);
	if(userChoice==="0") {
		$("#a0").prop("checked","checked");
	} else if(userChoice=="1") {
		$("#a1").prop("checked","checked");
	} else if (userChoice=="2") {
		$("#a2").prop("checked","checked");
	} else if(userChoice=="3") {
		$("#a3").prop("checked","checked");
	} else if(userChoice=="4") {
		$("#a4").prop("checked","checked");
	}
	
	if(questionCounter==questions.length) {
		$("#next").css('display', 'none');
		$("#submit").css('display', 'inline');
	}else if(questionCounter < questions.length) {
		$("#next").css('display', 'inline');
		$("#submit").css('display', 'none');
	}
	if(questionCounter==2) {
		$("#prev").css('display', 'inline');
	} else if (questionCounter==1) {
		$("#prev").css('display', 'none');
	}
	
	
}

function loadData () {
	
	$.ajax({
		url:"/bq/close/load-assessment-question",
		dataType: "json",
		
		success: function(data) {
			//console.log(data);
			questions = data.questions;
			console.log(questions);
			loadForm();
			
		},
		error : function () {
			alert("error 2");
		}
	});
}
$(document).ready(function() {
	loadData();
	$("#next").click(function() {
		loadForm("next");
	});
	$("#prev").click(function() {
		loadForm("prev");
	});
	
	$(".choice").click(function() {
		var x = $(this).prop('value');
		questions[cQ].correctAnswer=x;
		console.log(questions[cQ]);
	});
	
	$("#submit").click(function(e){
		var x = questions;
		var json = JSON.stringify(x);
		$.ajax({
			url : "/bq/close/assessment-question",
			method : "post",
			data : {
				"answers" : json
			},
			dataType : "json",
			success : function(data) {
				$("#myModal").modal({
					backdrop: "static",
					keyboard: false
				});
				$("#ass-score").text(data.score);
				$("#ass-rating").text(data.rating);
			}
		});
	});
	
	$("#go-to-profile").click(function(e) {
		var x = $(this).closest('form');
		$.ajax({
			url : x.prop("action"),
			method : "GET",
			data : x.serialize(),
			success : function(data) {
				alert(data);
				window.location.assign(data);
			}
		
		});
	});
});