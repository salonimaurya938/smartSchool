<?Php include 'header.php'; ?>
	<section>
		<main id="main" class="main">
			<div class="pagetitle">
				<h1>View All Complaints</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="viewhomework">Admin</a></li>
						<li class="breadcrumb-item">Complaints</li>
					</ol>
				</nav>
				<button type="button" class="btn btn-primary btn1" data-bs-toggle="modal"
					data-bs-target="#staticBackdrop">
					Add+
				</button>

				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
					tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">

							<form class="row" th:action="@{/addComplaints}" method="post" enctype="multipart/form-data">
								
									<label for="complaints" class="form-label">Complaints</label>
									<input type="text" name="complaints" class="form-control" id="inputNanme4"
										th:field="*{complaints}">					

								<br><br><br>
								<div class="text-center" style="text-align: center;">
									<button type="submit" name="submit" class="btn btn-primary">Submit</button>
									<button type="reset" name="reset" class="btn btn-secondary">Reset</button>
								</div>
							</form>
						</div>
					</div>
				</div>


			</div><!-- End Page Title -->
			<br>
			<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">All Student Complaints</h5>
						<table width="100%">
							<tr>
								<th>Id</th>
								<th>Complaints</th>
								<th>Action</th>
							</tr>
							<tr th:each="lists:${lists}">
								<td th:text="${lists.id}"></td>
								<td th:text="${lists.complaint}"></td>
								<td>
									<form th:action="@{/deleteComplaints/{id}}" method="post" th:object="${lists}">
										<input type="hidden" th:value="${lists.id}" name="id" />
										<button type="submit" value="Submit" class="bg-danger">Delete</button>
									</form>
								</td>
							</tr>
						</table>

					</div>
				</div>
			</div>
</div><!-- End Page Title -->
</main><!-- End #main -->
</section>
</div>

<style>
	button {
		border-radius: 5px;
		color: white;
		border: none;
	}

	.btn1 {
		position: relative;
		top: -10px;
		left: 94%;
	}
</style>

<?Php include 'footer.php'; ?>