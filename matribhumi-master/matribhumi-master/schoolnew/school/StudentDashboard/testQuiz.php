<?Php include 'header.php'; ?>
	<section>
		<main id="main" class="main">
			<div class="pagetitle">
				<h1 class="h1font" style="font-size: 35px; margin-top: 8px">Online Quiz Test</h1>
				<header class="headerTop bg-info" style="border-radius: 5px;">
					<div class="left-title">Online Test</div>
					<div class="right-title">Total Questions: <span id="tque"></span></div>
					<div class="display-4 fs-5 text-light" th:each="quizDetail,id:${timebyCate}">
						<span th:text="${quizDetail.totalTime}" th:value="${quizDetail.totalTime}" id="timer"></span>min
					</div>
					<div class="clearfix"></div>
					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
				</header>
				<div class="content">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12">
								<div id="result" class="quiz-body">
									<form name="quizForm" th:action="@{/quizUpdateScore}" onSubmit=""
										th:object="${category}" id="formId" enctype="multipart/form-data">
										<span th:text="${cat}"></span>
										<input type="hidden" th:value="${userId}" id="userId">
										<input type="hidden" th:value="${category}" id="category">
										<fieldset class="form-group">
											<h4><span id="qid">1</span>.
												<span id="question"><!--Question--></span>
											</h4>
											<div class="option-block-container" id="question-options">
											</div> <!-- End of option block -->
										</fieldset>
										<div class="container mt-5">
											<button name="previous" id="previous" class="btn btn-info">Previous</button>
											&nbsp;
											<button name="next" id="next" class="btn btn-info">Next</button>
											&nbsp;
											<button name="submit" value="submit" id="submitBtn" class="btn btn-info"
												style="display: none;">Submit</button>
									</form>
								</div>
							</div> <!-- End of col-sm-12 -->
						</div> <!-- End of row -->
					</div> <!-- ENd of container fluid -->
				</div> <!-- End of content -->

			</div><!-- End Page Title -->
		</main><!-- End #main -->
	</section>
</div>
<!--............................... Start JQuery.................................... -->

<script th:inline="javascript">
	/* Created and coded by Abhilash Narayan */
	/* Quiz source: w3schools.com */
	/*<![CDATA[*/
	var quiz = /*[[${questionOption}]]*/ '{}';
	/*]]>*/

	console.log(quiz);
	console.log(typeof quiz);
	var quizApp = function () {
		this.score = 0;
		this.qno = 1;
		this.currentque = 0;
		var totalque = quiz.length;
		var id = 1;
		this.displayQuiz = function (cque) {
			this.currentque = cque;
			if (this.currentque < totalque) {
				$("#tque").html(totalque);
				$("#previous").attr("disabled", false);
				$("#next").attr("disabled", false);
				$("#resultSolution").attr("disabled", false);
				$("#qid").html(id++);
				//$("#qid").html(quiz[this.currentque].id);	   
				//$("#qid1").html(quiz[this.currentque].id + '.').val();
				$("#question").html(quiz[this.currentque].question);
				$("#question-options").html("");
				for (var key in quiz[this.currentque].option[0]) {
					if (quiz[this.currentque].option[0].hasOwnProperty(key)) {
						$("#question-options").append(
							"<div class='form-check option-block'>" +
							"<label class='form-check-label'>" +
							"<input type='radio' class='form-check-input' name='option' id='q" + key + "' value='" + quiz[this.currentque].option[0][key] + "'><span id='optionval'>" +
							quiz[this.currentque].option[0][key] +
							"</span></label>"
						);
					}
				}
			}
			if (this.currentque <= 0) {
				$("#previous").attr("disabled", true);
				for (var i = 1; i > totalque; i--) {
					this.score = this.score - quiz[i].score;
				}
			}
			if (this.currentque >= totalque) {
				$('#next').attr('disabled', true);
				for (var i = 1; i < totalque; i++) {
					this.score = this.score + quiz[i].score;
				}
				if (this.currentque == totalque) {
					$("#submit").attr("disabled", true);
					var s = confirm("Are you want to Submit ?");
					if (s) {
						return this.showResult(this.score);
					}
				}
				if (totalque) {
					$("#resultSolution").prop("disabled", true);
					alert("okk");
					// Assuming this.score is defined somewhere in your code.
					this.showSolution(this.score);
				}
			}
		}
		this.showResult = function (scr) {
			$("#result").addClass('result');
			$("#result").html("<h1 class='res-header text-center'>Thank You For Taking Test Quiz... &nbsp;" + "</h1>");
			$("#result").append(
				'<section class="section p-2" style="padding-top: 20px;">' +
				'<div class="row align-items-top">' +
				'<div class="col-lg-3"></div>' +
				' <div class="col-lg-6">' +
				' <div class="card">' +
				' <div class="card-body">' +
				'<h5 class="card-title font-weight-bold">Your Rank</h5>' +
				' Ut in ea error laudantium quas omnis officia. Corrupti inventore consequatur nisi necessitatibus modi consequuntur soluta id.' +
				'</br>' + '<button class="btn btn-success rounded-pill" style="margin-left:66%;"><i class="bi bi-whatsapp"></i> <a href="https://open.wa.link/open" style="color:white;">Challenge Friends</a>' + '</button>' +
				'</div>' +
				'</div>' +
				'</div>' +
				'<div class="col-lg-3"></div>' +
				'</div>' +
				'</section>'
			);
			$("#result").append(
				'<section class="section" style="color:navy;">' +
				'<div class="row align-items-top">' +
				'<div class="col-lg-3"></div>' +
				' <div class="col-lg-6">' +
				' <div class="card">' +
				' <div class="card-body">' +
				'<div class="row p-2 pt-4 text-center">' +
				'<div class="col-lg-4">' +
				'<span class="font-weight-bold">Correct</span>' + '<br>' +
				'<span>3</span>' +
				'</div>' +
				'<div class="col-lg-4">' +
				'<span class="font-weight-bold">Worng</span>' + '<br>' +
				'<span>3</span>' +
				'</div>' +
				'<div class="col-lg-4">' +
				'<span class="font-weight-bold">Skipped</span>' + '<br>' +
				'<span>3</span>' +
				'</div>' +
				'</div>' +
				'<div style="height:1px; widht:100%; background:gray;"></div>' +
				'<div class="row p-2 pt-4">' +
				'<div class="col-lg-6">' +
				'<span class="font-weight-bold">Attepmts : </span>' +
				'<span>5</span>' +
				'</div> </br>' +
				'<div class="col-lg-6">' +
				'<span class="font-weight-bold">Marks : </span>' +
				'<span>2.50/10.0</span>' +
				'</div>' +
				'</div>' +
				'<div class="row p-2">' +
				'<div class="col-lg-6">' +
				'<span class="font-weight-bold">Accuracy : </span>' +
				'<span>40%</span>' +
				'</div>' +
				'<div class="col-lg-6">' +
				'<span class="font-weight-bold">Speed : </span>' +
				'<span>37Q/min</span>' +
				'</div>' +
				'</div>' +
				'</div>' +
				'</div>' +
				'</div>' +
				'<div class="col-lg-3"></div>' +
				'</div>' +
				'</section>'
			);

			$("#result").append('<button class="btn btn-warning rounded-pill" id="resultSolution" name="submit" style="margin-left:45%;"><i class="bi bi-lightbulb-fill"></i> Solution</button>');

		}

		this.showSolution = function (scr) {
			if (scr == 1) {
				scr = scr.length;
			}
			var id = 1;
			$("#result").addClass('result');
			$("#result").html("<h1 class='res-header'>Total Score: &nbsp;" + scr + '/' + totalque + "</h1>");
			for (var j = 0; j < totalque; j++) {
				var res;
				if (quiz[j].score == 1) {
					res = '<span class="correct">' + quiz[j].score + '</span><i class="fa fa-check c-correct"></i>';

				} else {
					res = '<span class="wrong">' + quiz[j].score + '</span><i class="fa fa-remove c-wrong"></i>';
				}
				$("#result").append(
					'<div class="result-question"><span>Q ' + id++ + '</span> &nbsp;' + quiz[j].question + '</div>' +
					'<div><b>Correct answer:</b> &nbsp;' + quiz[j].answer + '</div>' +
					'<div class="last-row"><b>Score:</b> &nbsp;' + res +
					'</div>'
				);
			}
		}

		this.checkAnswer = function (option) {
			var answer = quiz[this.currentque].answer;
			var option = $("input[name='option']:checked").val();
			if (option == quiz[this.currentque].answer) {
				if (quiz[this.currentque].score == 0) {
					quiz[this.currentque].score = 1;
					var ab = quiz[this.currentque].answer;
					var answerSize = ab;
					console.log(answerSize);
					quiz[this.currentque].status = "correct";
				}
			} else {
				quiz[this.currentque].status = "wrong";
			}
		}
		this.changeQuestion = function (cque) {
			this.currentque = this.currentque + cque;
			this.displayQuiz(this.currentque);
		}
	}
	var jsq = new quizApp();
	var selectedopt;
	var totalque = quiz.length;
	$(document).ready(function () {
		jsq.displayQuiz(0);
		$('#question-options').on('change', 'input[type=radio][name=option]', function (e) {
			//var radio = $(this).find('input:radio');
			$(this).prop("checked", true);
			selectedopt = $(this).val();
			var abc = selectedopt.length;
		});
	});
	$('#next').click(function (e) {
		e.preventDefault();
		if (selectedopt) {
			jsq.checkAnswer(selectedopt);
		}
		jsq.changeQuestion(1);
	});

	$('#previous').click(function (e) {
		e.preventDefault();
		if (selectedopt) {
			jsq.checkAnswer(selectedopt);
		}
		jsq.changeQuestion(-1);
	});
	$('#submit').click(function (e) {
		e.preventDefault();
		if (abc == totalque) {
			jsq.checkAnswer(selectedopt);
		}
		jsq.changeQuestion(s);
	});

	$('#resultSolution').click(function (e) {
		e.preventDefault();
		if (totalque) {
			jsq.checkAnswer(selectedopt);
			alert("click");
		}
		jsq.changeQuestion(s);
	});

</script>
<!--............................... End JQuery.................................... -->

<!--............................... Start JavaScript.................................... -->
<script>
	document.addEventListener("DOMContentLoaded", function () {
		const timerDisplay = document.getElementById("timer");
		const startButton = document.getElementById("startButton");
		//const resetButton = document.getElementById("resetButton");
		let endTime;
		let timerInterval;

		function startTimer(durationInSeconds) {
			endTime = new Date().getTime() + durationInSeconds * 1000;
			timerInterval = setInterval(updateTimer, 1000);
			startTimer.disabled = false;
		}

		function updateTimer(funValue) {
			const currentTime = new Date().getTime();
			const timeLeft = endTime - currentTime;
			if (timeLeft <= 0) {
				clearInterval(timerInterval);
				timerDisplay.textContent = "00:00";
				startTimer.disabled = false;
			} else {
				const minutes = Math.floor(timeLeft / (1000 * 60));
				const seconds = Math.floor((timeLeft % (1000 * 60)) / 1000);

				const formattedMinutes = String(minutes).padStart(2, "0");
				const formattedSeconds = String(seconds).padStart(2, "0");

				timerDisplay.textContent = `${formattedMinutes}:${formattedSeconds}`;
				if (formattedMinutes == "00" && formattedSeconds == "00") {
					var ab = confirm("Your Quiz test is over please Submit Your Quiz Test!!!");
					if (ab) {
						alert("okkkkkkkkk")
						return quizApp.showResult(quiz.score);
					}
				}
			}
		}

		function resetTimer() {
			clearInterval(timerInterval);
			timerDisplay.textContent = "00:00";
			startTimer.disabled = false;
		}
		var a = document.getElementById("timer").innerText;
		let b = a * 60;
		//startButton.addEventListener("click", function () {
		startTimer(b); // Set the countdown duration in seconds (e.g., 5 minutes)
		// });

		//resetButton.addEventListener("click", resetTimer);
	});

</script>

<!--............................... End AjaxCode.................................... -->

<script>
	$(document).ready(function () {

		$("#submitBtn").click(function () {

			var quizId = document.getElementById("qid").innerText;
			console.log(quizId);
			var question = document.getElementById("question").innerText;
			//alert(question);
			var options = document.getElementById("question-options").innerText;
			///alert(options);
			var answer = $("input[name='option']:checked").val();
			//alert(answer);
			var category = document.getElementById("category").value;
			//alert(category);
			var userId = document.getElementById("userId").value;
			//alert(userId);

			var formData = {
				"quizId": quizId,
				"question": question,
				"options": options,
				"answer": answer,
				"category": category,
				"userId": userId
			};
			console.log("console testing ::" + formData);
			$.ajax({
				type: "POST",
				url: "/quizUpdateScore",
				data: JSON.stringify(formData),
				contentType: "application/json",
				dataType: "json",
				success: function (data) {
					alert("Okk")
					console.log("Response received:", data);
				},
				error: function (xhr, status, error) {
					// Handle errors
					console.error("Error:", error);
				},
			});
		});
	});

</script>

<!--............................... End AjaxCode.................................... -->
<!--............................... Start Css .................................... -->
<style>
	.content {
		margin-top: 54px;
	}

	.headerTop {
		padding: 15px;
		position: relative;
		top: 40px;
		width: 100%;
		/*z-index: 9999;*/
	}

	.left-title {
		width: 50%;
		color: #fff;
		font-size: 18px;
		float: left;
	}

	.right-title {
		width: 50%;
		text-align: right;
		float: right;
		color: #fff;
	}

	.quiz-body {
		margin-top: 15px;
		padding-bottom: 50px;
	}

	.option-block-container {
		margin-top: 20px;
		max-width: 420px;
	}

	.option-block {
		padding: 10px;
		background: aliceblue;
		border: 1px solid #84c5fe;
		margin-bottom: 10px;
		cursor: pointer;
	}

	.result-question {
		font-weight: bold;
	}

	.c-wrong {
		margin-left: 20px;
		color: #ff0000;
	}

	.c-correct {
		margin-left: 20px;
		color: green;
	}

	.last-row {
		border-bottom: 1px solid #ccc;
		padding-bottom: 25px;
		margin-bottom: 25px;
	}

	.res-header {
		border-bottom: 1px solid #ccc;
		margin-bottom: 15px;
		padding-bottom: 15px;
	}
</style>
<!--............................... End Css .................................... -->
<?Php include 'footer.php'; ?>