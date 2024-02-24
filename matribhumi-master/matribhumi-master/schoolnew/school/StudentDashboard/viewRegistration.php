<?Php include 'header.php'; ?>
	<section>
		<main id="main" class="main">

			<div class="pagetitle">
				<h1>Holidays & Acadmic Plan</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="adminDashBoard">Admin</a></li>
						<li class="breadcrumb-item">Holidays & Acadmic Plan</li>
						<li class="breadcrumb-item active">View Events</li>
					</ol>
				</nav>
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">View Events</h5>

							<table width="100%">
								<tr>
									<th>Id</th>
									<th>Name</th>
									<th>Email</th>
									<th>Mobile Number</th>
									<th>Address</th>
								</tr>
								<tr th:each="datas:${students}">
									<td th:text="${datas.id}"></td>
									<td th:text="${datas.studentName}"></td>
									<td th:text="${datas.email}"></td>
									<td th:text="${datas.mob}"></td>
									<td th:text="${datas.address}"></td>
									<td>

										<div class="form">
											<form th:action="@{/deleteregister{id}}" method="post" th:object="${students}">
												<input type="hidden" th:value="${datas.id}" name="id" />
												<button type="submit" value="Submit"
													class="bg-danger" onclick="reloadPage()">Delete</button>
											</form>
										</div>
										<div class="form">
											<button class="bg-success"><a
													th:href="|@{/updateEvents{id}(id=${datas.id})}|"
													style="color: white;">Update</a>&nbsp;</button>
										</div>
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
	.form{
		margin-left: 2px;
		float: left;
	}
</style>

<script>
	function reloadPage(){
		location.reload(true);
	}
</script>
<?Php include 'footer.php'; ?>