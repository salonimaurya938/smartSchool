<?php include 'header.php'; ?>

	<section>
		<main id="main" class="main">

			<div class="pagetitle">
				<h1>Student DashBoard</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="adminDashBoard">Home</a></li>
						<li class="breadcrumb-item">Student</li>
						<li class="breadcrumb-item active">Profile</li>
					</ol>
				</nav>
			</div><!-- End Page Title -->

			<section class="section profile">
				<div class="row">
					<div class="col-xl-4">
						<div class="card">
							<div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
								<img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
								<h2 style="color:green;"><?php echo $username; ?></h2>
								<h3 style="color:darkorange;"><?php echo $username; ?></h3>
								<!--<h2 style="color:green;">Saloni Maurya</h2>
								<h3 style="color:darkorange;">msaloni401@gmail.com</h3>-->
								<div class="social-links mt-2">
									<a href="#" class="twitter"><i class="bi bi-twitter text-info"></i></a>
									<a href="#" class="facebook"><i class="bi bi-facebook text-primary"></i></a>
									<a href="#" class="instagram"><i class="bi bi-instagram text-danger"></i></a>
									<a href="#" class="linkedin"><i class="bi bi-linkedin text-primary"></i></a>
								</div>
							</div>
						</div>

					</div>

					<div class="col-xl-8">

						<div class="card">
							<div class="card-body pt-3">
								<!-- Bordered Tabs -->
								<ul class="nav nav-tabs nav-tabs-bordered">

									<li class="nav-item">
										<button class="nav-link active" data-bs-toggle="tab"
											data-bs-target="#profile-overview">Overview</button>
									</li>

									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab"
											data-bs-target="#profile-edit">Edit Profile</button>
									</li>

									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab"
											data-bs-target="#profile-change-password">Change Password</button>
									</li>

								</ul>
								<div class="tab-content pt-2">

									<div class="tab-pane fade show active profile-overview" id="profile-overview">

										<h5 class="card-title" style="color:rgb(128, 128, 255)">Profile Details</h5>
										<div class="row">
											<div class="col-lg-3 col-md-4 label ">Registration No</div>
											<div class="col-lg-9 col-md-8"><?php echo $username; ?></div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-4 label ">Student Name</div>
											<div class="col-lg-9 col-md-8"><?php echo $username; ?></div>
										</div>
										
										<div class="row">
											<div class="col-lg-3 col-md-4 label ">Father Name</div>
											<div class="col-lg-9 col-md-8"><?php echo $username; ?></div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-4 label">Mother Name</div>
											<div class="col-lg-9 col-md-8"><?php echo $username; ?></div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-4 label">Email </div>
											<div class="col-lg-9 col-md-8"><?php echo $username; ?></div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-4 label ">Contact No </div>
											<div class="col-lg-9 col-md-8"></div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-4 label">Date of Birth</div>
											<div class="col-lg-9 col-md-8" th:text="${dob}"></div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-4 label ">Roll No</div>
											<div class="col-lg-9 col-md-8" th:text="${rollNo}"></div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-4 label ">Gender</div>
											<div class="col-lg-9 col-md-8" th:text="${gender}"></div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-4 label">Blood Group </div>
											<div class="col-lg-9 col-md-8" th:text="${bloodGroup}"></div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-4 label ">Student Class </div>
											<div class="col-lg-9 col-md-8" th:text="${classes}"></div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-4 label">Home Address</div>
											<div class="col-lg-9 col-md-8" th:text="${address}"></div>
										</div>

									</div>

									<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

										<!-- Profile Edit Form -->
								 <form th:action="@{/myProfile}" method="post"
											enctype="multipart/form-data">

											<input name="id" type="hidden" class="form-control" id="id"
												th:value="${id}">

											<div class="row mb-3">
												<label for="profileImage"
													class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
												<div class="col-md-8 col-lg-9">
													<img src="assets/img/profile-img.jpg" alt="Profile">
													<div class="pt-2">
														<a href="@|${/myProfile}|" class="btn btn-primary btn-sm"
															title="Upload new profile image"><i
																class="bi bi-upload"></i></a>
														<a href="#" class="btn btn-danger btn-sm"
															title="Remove my profile image"><i
																class="bi bi-trash"></i></a>
													</div>
												</div>
											</div>
											<input type="hidden" th:value="${id}" name="id"> 
											<div class="row mb-3">
												<label for="registrationNo" class="col-md-4 col-lg-3 col-form-label">Registration No</label>
													
												<div class="col-md-8 col-lg-9">
													<input name="registrationNo" readonly type="text" class="form-control"
														id="registrationNo" th:value="${registratonNo}">

												</div>
											</div>
											<div class="row mb-3">
												<label for="userId" class="col-md-4 col-lg-3 col-form-label">UserId</label>													
												<div class="col-md-8 col-lg-9">
													<input name="userId" type="text" class="form-control"
														id="userId" th:value="${username}">

												</div>
											</div>
											<div class="row mb-3">
												<label for="name" class="col-md-4 col-lg-3 col-form-label">Student Name</label>
													
												<div class="col-md-8 col-lg-9">
													<input name="name" type="text" class="form-control"
														id="name" th:value="${name}">

												</div>
											</div>
												<div class="row mb-3">
												<label for="fname" class="col-md-4 col-lg-3 col-form-label">Father Name</label>
												<div class="col-md-8 col-lg-9">
													<input name="fname" type="text" class="form-control"
														id="fname" th:value="${fname}">

												</div>
											</div>	
											<div class="row mb-3">
												<label for="mname" class="col-md-4 col-lg-3 col-form-label">Mother Name</label>
												<div class="col-md-8 col-lg-9">
													<input name="mname" type="text" class="form-control"
														id="mname" th:value="${mname}">

												</div>
											</div>											
											<div class="row mb-3">
												<label for="pmob" class="col-md-4 col-lg-3 col-form-label">Contact Number</label>
												<div class="col-md-8 col-lg-9">
													<input name="pmob" type="text" class="form-control"
														id="pmob" th:value="${pmob}">

												</div>
											</div>									 
											<div class="row mb-3">
												<label for="email"
													class="col-md-4 col-lg-3 col-form-label">Email</label>
												<div class="col-md-8 col-lg-9">
													<input name="gmail" type="email" class="form-control" id="email"
														th:value="${email}">
												</div>
											</div>
											<div class="text-center">
												<button type="submit" class="btn btn-primary">Save Changes</button>
											</div>
										</form><!-- End Profile Edit Form -->

									</div>

									<div class="tab-pane fade pt-3" id="profile-change-password">
										<!-- Change Password Form -->
										<form th:action="@{/changePassword}" method="post"
											enctype="multipart/form-data">

											<input name="id" type="hidden" class="form-control" id="id" th:value="${id}">
											<div class="row mb-3">
												<label for="currentPassword"
													class="col-md-4 col-lg-3 col-form-label">Current Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="oldpassword" type="password" class="form-control"
														id="currentPassword" th:value="${pass}">
												</div>
											</div>

											<div class="row mb-3">
												<label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New
													Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="pass" type="password" class="form-control"
														id="newPassword">
												</div>
											</div>

											<div class="row mb-3">
												<label for="renewPassword"
													class="col-md-4 col-lg-3 col-form-label">Re-enter New
													Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="renewpassword" type="password" class="form-control"
														id="renewPassword">
												</div>
											</div>

											<div class="text-center">
												<button type="submit" class="btn btn-primary">Change Password</button>
											</div>
										</form><!-- End Change Password Form -->

									</div>

								</div><!-- End Bordered Tabs -->

							</div>
						</div>

					</div>
				</div>
			</section>

		</main><!-- End #main -->
	</section>

</div>

<?php include 'footer.php'; ?>