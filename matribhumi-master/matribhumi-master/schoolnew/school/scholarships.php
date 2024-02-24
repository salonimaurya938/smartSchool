<?php include 'header.php'; ?>


<!-- ** Breadcrumb ** -->
<section class="main-title-section-wrapper aligncenter">
	<div class="main-title-section-bg" style="background-image: url(assets/img/sclor.jpg);"></div>
	<div class="container">
		<div class="main-title-section">
			<h1>ScholarShips</h1>
		</div>
		<div class="breadcrumb"><a href="index.php">Home</a><span class="fas fa-caret-right"></span><span class="current">ScholarShips</span></div>
	</div>
</section>
<!-- ** Breadcrumb End ** -->
</div>
<!-- ** Header Wrapper - End ** -->

<div class="container text-center">
	<img class="text-center pt-3" height="120" width="170" src="assets/img/registerIcon.png" alt="" />
</div>
<h3 class="text-center" style=" margin-top: 0px;">Scholarships Register Here...</h3>
</div>
<div class="container" style=" padding: 20px; box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 5px 0px, rgba(0, 0, 0, 0.1) 0px 0px 1px 0px; border-radius:7px;">
	<form action="db/scholarRegister.php" method="post" enctype="multipart/form-data">
		<div class="row">
			<div class="col-lg-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label for="studentName">Student
						Name</label>
					<input type="text" required name="stdName" class="form-control" id="studentName" aria-describedby="emailHelp" placeholder="Enter student name...">
				</div>
				<div class="form-group">
					<label for="email">Email
						address</label>
					<input type="email" required name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email...">
				</div>
				<div class="form-group">
					<label for="mob">Mobile
						No</label>
					<input type="text" required name="mob" class="form-control" id="mob" aria-describedby="emailHelp" placeholder="Enter phone number...">
				</div>
				<div class="form-group">
					<label for="class">Class</label>
					<select id="class" class="form-control" required>
						<option name="class" value="Class 1">Class 1</option>
						<option name="class" value="Class 2">Class 2</option>
						<option name="class" value="Class 3">Class 3</option>
						<option name="class" value="Class 4">Class 4</option>
						<option name="class" value="Class 5">Class 5</option>
						<option name="class" value="Class 6">Class 6</option>
						<option name="class" value="Class 7">Class 7</option>
						<option name="class" value="Class 8">Class 8</option>
						<option name="class" value="Class 9">Class 9</option>
						<option name="class" value="Class 10">Class 10</option>
						<option name="class" value="Class 11">Class 11</option>
						<option name="class" value="Class 12">Class 12</option>
					</select>
				</div>
				<div class="form-group">
					<label for="username">Student Profile</label>
					<input type="file" class="form-control" name="pic" id="username" aria-describedby="emailHelp" placeholder="Enter Your Profile...">
				</div>
			</div>

			<div class="col-lg-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label for="address">Address</label>
					<input type="text" class="form-control" required name="city" id="city" aria-describedby="emailHelp" placeholder="Enter address...">
				</div>
				<div class="form-group">
					<label for="pincode">Pincode</label>
					<input type="text" class="form-control" required name="pincode" id="password" aria-describedby="emailHelp" placeholder="Enter pincode...">
				</div>
				<div class="form-group">
					<label for="city">City</label>
					<input type="text" class="form-control" required name="city" id="password" aria-describedby="emailHelp" placeholder="Enter city...">
				</div>
				<div class="form-group">
					<label for="state">State</label>
					<input type="text" class="form-control" required name="state" id="password" aria-describedby="emailHelp" placeholder="Enter state...">
				</div>
				<div class="form-group">
					<label for="country">Country</label>
					<input type="text" class="form-control" required name="country" id="password" aria-describedby="emailHelp" placeholder="Enter country...">
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<button type="submit" name="submit" id="submit" class="btn bg-primary mx-2  px-4 text-light">Submit</button>
						<button type="reset" class="btn bg-info px-4  text-light">Reset</button>
					</div>
					<div class="col-sm-4"></div>
				</div>
			</div>
		</div>
	</form>
</div>
<br><br><br>

<?php include 'footer.php'; ?>

<!-- 
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script> -->