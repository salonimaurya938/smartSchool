<?Php include 'header.php'; ?>

	<section>
		<main id="main" class="main">
			<div class="pagetitle">
				<h1>View All Question</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="viewhomework">Admin</a></li>
						<li class="breadcrumb-item">Gallery</li>
						<li class="breadcrumb-item active">View All Photos</li>
					</ol>
				</nav>
			</div><!-- End Page Title -->
			<br>
			<section class="section">
				<p>
					Use the following pattern to add the Bootstrap icons to anywhere in your project.
					<code>&lt;i class=&quot;bi <strong>alarm-fille</strong>&quot;&gt;&lt;/i&gt;</code> Replace the bold
					part with the below icon names.
					Check the <a href="https://icons.getbootstrap.com/" target="_blank">Official website</a> for more
					info.
				</p>

				<div class="container">
					<div class="row">
						<div class="col-md-3" th:each="im:${lists}">
							<div class="cards mt-3">

								<img th:src="@{'img/'+${im.imageName}}" width="100%" height="100px"
									alt="Not find this path">

							</div>
						</div>
					</div>
				</div>

			</section>
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
<?Php include 'footer.php'; ?>