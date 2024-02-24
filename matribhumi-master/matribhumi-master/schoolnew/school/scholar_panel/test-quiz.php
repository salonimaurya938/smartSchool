<!DOCTYPE html>
<html>

<head>
	<title>Quiz App</title>
	<meta name="viewport" content="width=device-width,initial-scal=1">
	<link rel="stylesheet" href="user_assets/css/style.css">
</head>

<body style="background-image: url('user_assets/img/banner4.jpg'); background-size:cover; background-repeat:no-repeat;">
	<?php
	include 'db/conn.php';

	$category = $_GET['category'];
	$id = $_GET['id'];
	// echo $id;
	$sql = "SELECT * FROM `quiz`";
	$query = mysqli_query($conn, $sql);
	if (mysqli_num_rows($query) > 0) {
		while ($row = mysqli_fetch_assoc($query)) {

			$q_id = $row['id'];
			$sql2 = "SELECT * FROM `option` WHERE `oq_fk`='$q_id'";
			$query2 = mysqli_query($conn, $sql2);
			if (mysqli_num_rows($query2) > 0) {
				while ($row2 = mysqli_fetch_assoc($query2)) {
					echo "printr".$row['answer'];
					$data[] = [
						'id' => $row['id'],
						'q' => $row['question'],
						'category' => $row['category'],
						'answer' => $row['answer'],
						'score' => $row['score'],
						'status' => $row['status'],
						'options' => [
							$row2['op1'],
							$row2['op2'],
							$row2['op3'],
							$row2['op4'],
						]
					];
				}
			}
		}
	} else {
		$data['code'] = 202;
		$data['msg'] = 'Invalid Credential.';
	}
	//echo json_encode($data);
	// foreach ($data as $value) {
		// $cat = $value['category'];
	// }
	// if ($cat == $category) {

	$sql3 = "SELECT * FROM `quiz` WHERE `category`='$category'";
	$query3 = mysqli_query($conn, $sql3);
	if (mysqli_num_rows($query3) > 0) {
		while ($row3 = mysqli_fetch_assoc($query3)) {
			$q_id = $row3['id'];
			$sql4 = "SELECT * FROM `option` WHERE `oq_fk`='$q_id'";
			$query4 = mysqli_query($conn, $sql4);
			if (mysqli_num_rows($query4) > 0) {
				while ($row4 = mysqli_fetch_assoc($query4)) {
					$secdata[] = [
						'id' => $row3['id'],
						'q' => $row3['question'],
						'category' => $row3['category'],
						'answer' => $row3['answer'],
						'score' => $row3['score'],
						'status' => $row3['status'],
						'options' => [
							$row4['op1'],
							$row4['op2'],
							$row4['op3'],
							$row4['op4'],
						]
					];
				}
			}
		}
	}
	//echo json_encode($secdata);
	?>

	<div class="home-box custom-box" style="margin-top: 180px;">
		<h3><b>Instructions :</b></h3><span>1. Write the questions for your quiz. Make sure they are clear and relevant to the topic.<br>
			2. For multiple-choice questions, provide options for each question.<br>
			3. If your quiz is time-bound, specify the time limit for completing it.<br><br>
			Remember to be clear and organized with your instructions and ensure that the quiz aligns with your intended goals and audience. Enjoy your quiz!
			<span>
				<b>
					<p>Total number of questions : <span class="total-questions"></span>
				</b></p>
				<input type="checkbox" required name="check" value="check">
				<label for="vehicle3"> I accept this term and condition</label><br>
				<button type="button" class="btn" onclick="startQuiz()" style="margin-top: 5px;">Start Quiz</button>
	</div>
	<div class="quiz-box custom-box hide">
		<div class="question-number">

		</div>
		<div class="question-text">

		</div>
		<div class="option-container">

		</div>
		<div class="next-question-btn">
			<button type="button" class="btn" id="next" onclick="next()">Next</button>
		</div>
		<div class="answers-indicator">

		</div>
	</div>

	<div class="result-box custom-box hide">
		<h1 style="color:seagreen">Quiz Result</h1>
		<div class="row">

		</div>
		<table style="border-radius: 2px;">
			<tr>
				<td style="color:crimson;">Total Question </td>
				<td><span class="total-question" style="color:crimson;"></span> </td>
			</tr>
			<tr>
				<td style="color:darkorange;">Attempt </td>
				<td><span class="total-attempt" style="color:darkorange;"></span> </td>
			</tr>
			<tr>
				<td style="color:green;">Correct </td>
				<td><span class="total-correct" style="color:green;"></span> </td>
			</tr>
			<tr>
				<td style="color:red;">Wrong </td>
				<td><span class="total-wrong" style="color:red;"></span> </td>
			</tr>
			<tr>
				<td style="color:darkturquoise;">Percentage </td>
				<td><span class="percentage" style="color:darkturquoise;"></span> </td>
			</tr>
			<tr>
				<td style="color:hotpink;">Your Total Score </td>
				<td><span class="total-score" style="color:hotpink;"></span> </td>
			</tr>
		</table>

		<button type="button" class="btn" onclick="tryAgainQuiz()" style="background-color:indianred;"> Try Again</button>
		<button type="button" class="btn" style="background-color:yellowgreen;">
			<a href="onlineQuiz.php" style="color:white; text-decoration:none;">Go To Home</a></button>
		<button type="button" class="btn" style="background-color:yellowgreen;">
			<a href="attempted.php" style="color:white; text-decoration:none;">Your Score</a></button>


	</div>

	<?php
	// } else {
	// 	$secdata['code'] = 202;
	// 	$secdata['msg'] = 'Invalid Credential.';
	// }
	foreach ($secdata as $val) {
		//$answer = $val['answer'];
		//echo $answer;	
	}
	?>
	<script>
		var quiz = <?php echo json_encode($secdata); ?>
	</script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script>
		// $(document).ready(function() {
		// 	//var totalq = document.getElementById("tque").innerText;
		// 	// alert(totalq);
		// 	//var currentQ = 7;
		// 	// alert(currentQ);
		// 		$("#next").click(function() {
		// 			var quizId = $("#question-number").text();
		// 			console.log("id".quizId);
		// 			var question = $("question-text").text();
		// 			console.log(question);
		// 			var answer = $("answers-indicator").text();
		// 			console.log(answer);
		// 			var options = $("option-container").text();
		// 			console.log(options);
		// 			var selected_option = $("input[name='option-container']:checked").val();
		// 			console.log(answer);
		// 			//var category = document.getElementById("category").value;
		// 			//console.log(category);
		// 			//var userId = document.getElementById("userId").value;
		// 			$.ajax({
		// 				type: "POST",
		// 				url: "db/quizCompleted.php",
		// 				data: {
		// 					quizId: quizId,
		// 					question: question,
		// 					options: options,
		// 					answer: answer,
		// 					selected_option: selected_option

		// 				},
		// 				contentType: false,
		// 				success: function(data) {
		// 					//alert("Okk")
		// 					console.log("Response received:", data);
		// 				},
		// 				error: function(xhr, status, error) {
		// 					// Handle errors
		// 					console.error("Error:", error);
		// 				},
		// 			});
		// 		});
		// });
	</script>
	<script src="user_assets/js/app.js"></script>
</body>

</html>