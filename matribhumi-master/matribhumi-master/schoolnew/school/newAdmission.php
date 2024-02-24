<?php include 'header.php'; ?>

<section class="main-title-section-wrapper aligncenter">
	<div class="main-title-section-bg" style="background-image: url(assets/img/onlinec.jpg);"></div>
	<div class="container">
		<div class="main-title-section">
			<h1>Online Admission</h1>
		</div>
		<div class="breadcrumb"><a href="index.php">Home</a><span class="fas fa-caret-right"></span><span class="current">Online Admission</span></div>
	</div>
</section>
</div>


<div class="container text-center">
	<img class="text-center pt-3" height="120" width="170" src="assets/img/registerIcon.png" alt="" />
</div>
<h3 class="text-center" style=" margin-top: 0px;">Online Admission Here...</h3>
</div>
<div class="container" style=" padding: 20px; box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 5px 0px, rgba(0, 0, 0, 0.1) 0px 0px 1px 0px; border-radius:7px;">
	<form action="db/scholarRegister.php" method="post" enctype="multipart/form-data">
		<div class="row">
			<div class="col-12">
				<h5>Basic Details</h5>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label for="studentName">First
						Name</label>
					<input type="text" required name="fname" class="form-control" id="studentName" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label for="studentName">
						Last Name</label>
					<input type="text" required name="lname" class="form-control" id="studentName" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label for="studentName">
						Class</label>
					<select required name="class" class="form-control" id="studentName">
						<option disabled selected>Select Class</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>

					</select>
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label for="studentName">
						Gender</label>
					<select required name="gender" class="form-control" id="studentName">
						<option disabled selected>Select Gender</option>
						<option>Male</option>
						<option>Female</option>
					</select>
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label for="email">
						Date of Birth</label>
					<input type="date" required name="dob" class="form-control">
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label for="email">Email</label>
					<input type="email" required name="email" class="form-control" id="email" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label for="mob">Mobile
						No</label>
					<input type="text" required name="mob" class="form-control" id="mob" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label for="class">Student Pic</label>
					<input type="file" class="form-control" required name="profile" id="class" aria-describedby="emailHelp" >
				</div>
			</div>

			<div class="col-12">
				<h5>Parent Details</h5>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label for="username">Father Name</label>
					<input type="text" class="form-control" required name="fathername" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label for="class">Mother Name</label>
					<input type="text" class="form-control" required name="mothername" aria-describedby="emailHelp" >
				</div>
			</div>

			<div class="col-12">
				<h5>Guardian Details</h5>
			</div>
			<div class="col-lg-12 col-sm-12 col-md-12">
				<span>If Guardian Is &nbsp; &nbsp;</span>
				<input type="radio" id="q1" name="q1" value="Father">
				<label for="html">Father</label> &nbsp; &nbsp;
				<input type="radio" id="q1" name="q1" value="Mother">
				<label for="css">Mother</label> &nbsp; &nbsp;
				<input type="radio" id="q1" name="q1" value="Other">
				<label for="css">Other</label>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>Guardian Name </label>
					<input type="text" class="form-control" required name="gname" id="password" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>Guardian Relation</label>
					<input type="text" class="form-control" required name="grel" id="password" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>Guardian Email </label>
					<input type="text" class="form-control" required name="gemail" id="password" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>Guardian Phone </label>
					<input type="text" class="form-control" required name="gphone" id="password" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>Guardian Occupation </label>
					<input type="text" class="form-control" required name="gOccupation" id="password" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>Guardian Photo </label>
					<input type="file" class="form-control" required name="gPhoto" id="password" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-12 col-12 col-md-12">
				<div class="form-group">
					<label>Guardian Address </label>
					<input type="text" class="form-control" required name="gAddress" id="password" aria-describedby="emailHelp" >
				</div>
			</div>
			
			<div class="col-12">
				<h5>Student Address Details</h5>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>If Guardian Address Is Current Address</label><br/>
					<label>Current Address </label>
					<input type="text" class="form-control" required name="cAddress" id="password" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>If Permanent Address Is Current Address</label><br/>
					<label>Permanent Address </label>
					<input type="text" class="form-control" required name="cAddress" id="password" aria-describedby="emailHelp">
				</div>
			</div>

			<div class="col-12">
				<h5>Miscellaneous Details</h5>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>National Identification Number</label>
					<input type="text" class="form-control" required name="NInumber" id="password" aria-describedby="emailHelp" >
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>Local Identification Number</label>
					<input type="text" class="form-control" required name="LInumber" id="password" aria-describedby="emailHelp">
				</div>
			</div>
			<div class="col-lg-6 col-12 col-md-6">
				<div class="form-group">
					<label>Previous School Details</label>
					<input type="text" class="form-control" required name="LInumber" id="password" aria-describedby="emailHelp">
				</div>
			</div>

			<div class="col-12">
				<h5>Upload Documents</h5>
			</div>
			<div class="col-lg-12 col-12 col-md-12">
				<div class="form-group">
					<label>Documents (To Upload Multiple Document Compress It In A Single File Then Upload It)</label>
					<input type="file" class="form-control" required name="LInumber" id="password" aria-describedby="emailHelp">
				</div>
			</div>


			<div class="col-lg-12 col-12 col-md-12">
				<div class="container text-center"><br/>
					<button type="submit" class="btn bg-primary text-light">Submit</button>
					<button type="reset" class="btn bg-info mx-4  text-light">Reset</button>
				</div>
			</div>
		</div>
	</form>
</div>
<br><br><br>


<?php include 'footer.php'; ?>