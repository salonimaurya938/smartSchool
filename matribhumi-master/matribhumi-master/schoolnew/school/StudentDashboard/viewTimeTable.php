<?Php include 'header.php'; ?>
		<main id="main" class="main">

			<div class="pagetitle">
				<h1>Time Table</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="adminDashBoard">Admin</a></li>
						<li class="breadcrumb-item">Time Table</li>
						<li class="breadcrumb-item active">Time Table View</li>
					</ol>
				</nav>
			      <!-- End Page Title -->
			<div style="width: 100%;">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Time Table Details</h5>
						<table width="100%" style="font-size: 80%" HSPACE=3 VSPACE=4>
							<thead>
								<tr>
									<th>School Time</th>
									<th>Monday</th>
									<th>Tuesday</th>
									<th>Wednesday</th>
									<th>Thursday</th>
									<th>Friday</th>
									<th>Saturday</th>
									<th>Sunday</th>
								</tr>
							</thead>
							<tbody>
								<tr th:each="timeTables:${timeTables}">
									<td th:text="${timeTables.schoolTime}"></td>
									<td th:text="${timeTables.monday}"></td>
									<td th:text="${timeTables.tuesday}"></td>
									<td th:text="${timeTables.wednesday}"></td>
									<td th:text="${timeTables.thursday}"></td>
									<td th:text="${timeTables.friday}"></td>
									<td th:text="${timeTables.saturday}"></td>
									<td th:text="${timeTables.sunday}"></td>
								</tr>
								<!-- Add more rows as needed -->
							</tbody>
						</table>
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
		margin-left: 2px;
		float: left;
	}

	/* Define some basic table styles */
	table {
		border-collapse: collapse;
		width: 100%;
		margin-bottom: 20px;
	}

	th,
	td {
		padding: 12px 15px;
		text-align: left;
		border-bottom: 1px solid #ddd;
	}

	/* Style the table header */
	th {
		background-color: #cfc1df;
		color: #333;
	}

	/* Style alternating rows */
	tr:nth-child(even) {
		background-color: #f5f3f9;
	}

	/* Style table rows on hover */
	tr:hover {
		background-color: #ddd;
	}

	/* Add some spacing and center-align text in the first column */
	td:first-child {
		padding-left: 10px;
		/*text-align: center;*/
	}
	
</style>

<?Php include 'footer.php'; ?>