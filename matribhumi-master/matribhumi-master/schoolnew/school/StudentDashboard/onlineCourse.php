<?php include 'header.php'; ?>
		<main id="main" class="main">

			<div class="pagetitle">
				<h1>Online Course</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="adminDashBoard">Student</a></li>
						<li class="breadcrumb-item">Online Course</li>
					</ol>
				</nav>
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Courses</h5>

							<div class="container">
								<div class="row">
									<div class="col-md-3" th:each="im:${data}">
										<div>										
											<video width="100%" height="110px" controls
												style="border-radius: 6px; margin-top: 5px;">
												<source th:src="@{'img/'+${im.uploadCourse}}" type="video/mp4">
												<source th:src="@{'img/'+${im.uploadCourse}}" type="video/ogg">
												Your browser does not support HTML video.
											</video>										
										</div>
										<div>
											<h5 th:text="${im.title}"></h5>
											<p th:text="${im.discription}"></p>
											<span>Class:</span><span th:text="${im.classes}"></span>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div><!-- End Page Title -->

		</main><!-- End #main -->
</div>

<style>
	button {
		border-radius: 5px;
		color: white;
		border: none;
	}

	.form {
		margin-left: 2px;
		float: left;
	}
</style>

<script>
	function reloadPage() {
		location.reload(true);
	}
</script>

<?php include 'footer.php'; ?>