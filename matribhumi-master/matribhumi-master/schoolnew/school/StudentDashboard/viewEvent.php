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
							<table>
							<thead>
								<tr>
									<th>Sr.no</th>
									<th>Events</th>								
								</tr>
							</thead>
							<tbody>
								<tr th:each="event,id:${events}">
									<td th:text="${id.count}"></td>
									<td th:text="${event.event}"></td>								
								</tr>
								<!-- Add more rows as needed -->
							</tbody>
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
		background-color: #f2f2f2;
		color: #333;
	}

	/* Style alternating rows */
	tr:nth-child(even) {
		background-color: #f2f2f2;
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

<script>
	function reloadPage(){
		location.reload(true);
	}
</script>

<?Php include 'footer.php'; ?>