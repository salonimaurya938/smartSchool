<?Php include 'header.php'; ?>

	<section>
		<main id="main" class="main">

			<div class="pagetitle">
				<h1>View All Chapter</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="adminDashBoard">Admin</a></li>
						<li class="breadcrumb-item">HomeWork</li>
						<li class="breadcrumb-item active">View HomeWork</li>
					</ol>
				</nav>
			</div><!-- End Page Title -->
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Lessions</h5>
							<div class="container">
								<div class="row">
									<div class="col-md-3 division"  th:each="books,id:${chapter}">
										<span></span>
										<div style="margin-top: 8px;">
										<h6><span><b>Lession Name </b> : </span><span th:text="${books.chapName}"></span></h6>			
										<span><b>Discription </b> : </span><span th:text="${books.chapDescription}"></span>&nbsp;&nbsp;			
							            <a href="https://www.javatpoint.com/spring-boot-tutorial" style="color: white;"><i class="bi bi-eye-fill" style="color: darkorange;"></i></a>
										</div>										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main><!-- End #main -->
	</section>

</div>

<style>
	button {
		border-radius: 5px;
		color: white;
		border: none;
	}

	.form {
		float: left;
		margin-left: 2px;
	}
	.division{
		box-shadow: rgba(0, 0, 0, 0.12) 0px 1px 3px, rgba(0, 0, 0, 0.24) 0px 1px 2px;
		border-radius: 10px;
		margin-left: 5%;
		padding: 10px 20px 20px 20px;
	}
</style>

<?Php include 'footer.php'; ?>