<?Php include 'header.php'; ?>

	<section>
		<main id="main" class="main">

			<div class="pagetitle">
				<h1>View All Question</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="viewhomework">Admin</a></li>
						<li class="breadcrumb-item">Library</li>
						<li class="breadcrumb-item active">View All Homework</li>
					</ol>
				</nav>
			</div><!-- End Page Title -->
			<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">All Student Complaints</h5>
						<table>
							<thead>
								<tr>
								<th>Question No.</th>
								<th>Homework</th>
							</tr>
							</thead>
							<tbody>
								<tr th:each="questions,id:${question}">
								<td th:text="${id.count}"></td>
								<td th:text="${questions.question}"></td>
							</tr>
								<!-- Add more rows as needed -->
							</tbody>
						</table>
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
<?Php include 'footer.php'; ?>