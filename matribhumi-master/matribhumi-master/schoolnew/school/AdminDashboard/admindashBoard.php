<!-- Add header.php -->
<?php include 'header.php'; ?>
<main id="main" class="main">

			<div class="pagetitle">
				<h1>Admin Dashboard</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Home</a></li>
						<li class="breadcrumb-item active" style="color: mediumorchid;">Dashboard</li>
					</ol>
				</nav>
				<h1 th:text="${session.email}"></h1>
			</div><!-- End Page Title -->
			<marquee width="100%" direction="left" height="40px" style="color: darkmagenta;">
				Welcome to Matri Bhumi Management Panel
			</marquee>
			<section class="section dashboard">
				<div class="row">

					<!-- Left side columns -->
					<div class="col-lg-12">
						<div class="row">

							<!-- Sales Card -->
							<div class="col-xxl-4 col-md-4">
								<div class="card info-card sales-card">
									<div class="card-body">
										<h5 class="card-title">New <span>| Enquiry</span></h5>

										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-telephone"></i>
											</div>
											<div class="ps-3">
												<span>
													<h6 th:text="${#lists.size(enq)}"></h6>
												</span>
												<span class="text-success small pt-1 fw-bold"><a
														href="admissionEnquiry">New Enquiry+</a></span>
											</div>
										</div>
									</div>

								</div>
							</div><!-- End Sales Card -->

							<!-- Revenue Card -->
							<div class="col-xxl-4 col-md-4">
								<div class="card info-card revenue-card">

									<div class="card-body">
										<h5 class="card-title">New <span>| Addmission</span></h5>

										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-mortarboard"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(admission)}"></h6>
												<span class="text-success small pt-1 fw-bold"><a href="newAdmission"
														style="color:limegreen;">New Addmission+</a></span>
											</div>
										</div>
									</div>

								</div>
							</div><!-- End Revenue Card -->

							<!-- Customers Card -->
							<div class="col-xxl-4 col-xl-4">

								<div class="card info-card customers-card">
									<div class="card-body">
										<h5 class="card-title">New <span>| Book</span></h5>
										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-menu-button-wide"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(addBook)}"></h6>
												<span class="text-success small pt-1 fw-bold"><a href="addBook"
														style="color:darkorange;">Add Book+</a></span>
											</div>
										</div>

									</div>
								</div>

							</div><!-- End Customers Card -->

							<!-- Sales Card -->
							<div class="col-xxl-4 col-md-4">
								<div class="card info-card sales-card">
									<div class="card-body">
										<h5 class="card-title">New <span>| Chapter</span></h5>

										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-book-half"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(chapter)}">15</h6>
												<span class="text-success small pt-1 fw-bold"><a href="addchapter">Add
														Chapter+</a></span>
											</div>
										</div>
									</div>

								</div>
							</div><!-- End Sales Card -->

							<!-- Revenue Card -->
							<div class="col-xxl-4 col-md-4">
								<div class="card info-card revenue-card">

									<div class="card-body">
										<h5 class="card-title">New <span>| Course</span></h5>

										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-fast-forward-circle"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(course)}"></h6>
												<span class="text-success small pt-1 fw-bold"><a href="uploadCourses"
														style="color:limegreen;">Upload Course+</a></span>
											</div>
										</div>
									</div>

								</div>
							</div><!-- End Revenue Card -->

							<!-- Customers Card -->
							<div class="col-xxl-4 col-xl-4">

								<div class="card info-card customers-card">
									<div class="card-body">
										<h5 class="card-title">New <span>| Quiz</span></h5>
										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-patch-question"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(cate)}"></h6>
												<span class="text-success small pt-1 fw-bold"><a href="quiz"
														style="color:darkorange;">Add Quiz+</a></span>
											</div>
										</div>

									</div>
								</div>

							</div><!-- End Customers Card -->

							<!-- Sales Card -->
							<div class="col-xxl-4 col-md-4">
								<div class="card info-card sales-card">
									<div class="card-body">
										<h5 class="card-title">New <span>| Photos</span></h5>

										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-file-image-fill"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(img)}"></h6>
												<span class="text-success small pt-1 fw-bold"><a href="addimg">Add
														Photos+</a></span>
											</div>
										</div>
									</div>

								</div>
							</div><!-- End Sales Card -->


							<!-- Revenue Card -->
							<div class="col-xxl-4 col-md-4">
								<div class="card info-card revenue-card">

									<div class="card-body">
										<h5 class="card-title">New <span>| Homework</span></h5>

										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-pencil-square"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(homework)}"></h6>
												<span class="text-success small pt-1 fw-bold"><a href="addhomework"
														style="color:limegreen;">Add Homework+</a></span>
											</div>
										</div>
									</div>

								</div>
							</div><!-- End Revenue Card -->

							<!-- Customers Card -->
							<div class="col-xxl-4 col-xl-4">

								<div class="card info-card customers-card">
									<div class="card-body">
										<h5 class="card-title">New <span>| Result</span></h5>
										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-bar-chart"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(result)}"></h6>
												<span class="text-success small pt-1 fw-bold"><a href="addResult"
														style="color:darkorange;">Add Result+</a></span>
											</div>
										</div>

									</div>
								</div>

							</div><!-- End Customers Card -->

							<!-- Sales Card -->
							<div class="col-xxl-4 col-md-4">
								<div class="card info-card sales-card">
									<div class="card-body">
										<h5 class="card-title">New <span>| Report</span></h5>

										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-bar-chart"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(report)}"></h6>
												<span class="text-success small pt-1 fw-bold"><a
														href="studentReport">Add Report+</a></span>
											</div>
										</div>
									</div>

								</div>
							</div><!-- End Sales Card -->

							<!-- Revenue Card -->
							<div class="col-xxl-4 col-md-4">
								<div class="card info-card revenue-card">

									<div class="card-body">
										<h5 class="card-title">New <span>| Event</span></h5>

										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-calendar3-event"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(event)}"></h6>
												<span class="text-success small pt-1 fw-bold"><a href="addEvents"
														style="color:limegreen;">Add Event+</a></span>
											</div>
										</div>
									</div>

								</div>
							</div><!-- End Revenue Card -->

							<!-- Customers Card -->
							<div class="col-xxl-4 col-xl-4">

								<div class="card info-card customers-card">
									<div class="card-body">
										<h5 class="card-title">New <span>| Schedule</span></h5>
										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-calendar"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(timetable)}"></h6>
												<span class="text-success small pt-1 fw-bold"><a href="timeTable"
														style="color:darkorange;">Add Schedule+</a></span>
											</div>
										</div>

									</div>
								</div>

							</div><!-- End Customers Card -->
							
							<!-- Customers Card -->
							<div class="col-xxl-4 col-xl-4">

								<div class="card info-card customers-card">
									<div class="card-body">
										<h5 class="card-title">New <span>| Holidays</span></h5>
										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-calendar"></i>
											</div>
											<div class="ps-3">
												<h6>0</h6>
												<span class="text-success small pt-1 fw-bold"><a href="addHolidays">Add Holidays+</a></span>
											</div>
										</div>

									</div>
								</div>

							</div><!-- End Customers Card -->
							
							<!-- Sales Card -->
							<div class="col-xxl-4 col-md-4">
								<div class="card info-card sales-card">
									<div class="card-body">
										<h5 class="card-title">Notice<span>| Board</span></h5>

										<div class="d-flex align-items-center">
											<div
												class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-book-half"></i>
											</div>
											<div class="ps-3">
												<h6 th:text="${#lists.size(chapter)}">15</h6>
												<span class="text-success small pt-1 fw-bold"><a href="addNoticeBoard">Add
														NoticeBoard+</a></span>
											</div>
										</div>
									</div>

								</div>
							</div><!-- End Sales Card -->



							<!-- News & Updates Traffic -->
							<div class="card">
								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
											class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body pb-0">
									<h5 class="card-title">News &amp; Updates <span>| Today</span></h5>

									<div class="news">
										<div class="post-item clearfix">
											<img src="assets/img/news-1.jpg" alt="">
											<h4><a href="#">Nihil blanditiis at in nihil autem</a></h4>
											<p>Sit recusandae non aspernatur laboriosam. Quia enim eligendi sed ut
												harum...
											</p>
										</div>

										<div class="post-item clearfix">
											<img src="assets/img/news-2.jpg" alt="">
											<h4><a href="#">Quidem autem et impedit</a></h4>
											<p>Illo nemo neque maiores vitae officiis cum eum turos elan dries werona
												nande...</p>
										</div>

										<div class="post-item clearfix">
											<img src="assets/img/news-3.jpg" alt="">
											<h4><a href="#">Id quia et et ut maxime similique occaecati ut</a></h4>
											<p>Fugiat voluptas vero eaque accusantium eos. Consequuntur sed ipsam et
												totam...</p>
										</div>

										<div class="post-item clearfix">
											<img src="assets/img/news-4.jpg" alt="">
											<h4><a href="#">Laborum corporis quo dara net para</a></h4>
											<p>Qui enim quia optio. Eligendi aut asperiores enim repellendusvel rerum
												cuder...</p>
										</div>

										<div class="post-item clearfix">
											<img src="assets/img/news-5.jpg" alt="">
											<h4><a href="#">Et dolores corrupti quae illo quod dolor</a></h4>
											<p>Odit ut eveniet modi reiciendis. Atque cupiditate libero beatae
												dignissimos
												eius...</p>
										</div>

									</div><!-- End sidebar recent posts-->

								</div>
							</div><!-- End News & Updates -->

						</div><!-- End Right side columns -->

					</div>
			</section>

		</main><!-- End #main -->
<!-- Add footer.php -->
<?php include 'footer.php'; ?>