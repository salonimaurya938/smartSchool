<?Php include 'header.php'; ?>

		<main id="main" class="main">

			<div class="pagetitle">
				<h1>Book Details</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="adminDashBoard">Admin</a></li>
						<li class="breadcrumb-item">Library</li>
						<li class="breadcrumb-item active">View All Book</li>
					</ol>
				</nav>
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Courses</h5>

							<div class="container">
								<div class="row">
									<div class="col-md-3 division" th:each="books,id:${book}">
										<div>
											<a th:href="@{'img/'+${books.subIcon}}" target="_blank"><img
													th:src="@{'img/'+${books.subIcon}}" width="100%" height="120px"
													alt="" class="mt-2"></a>
										</div>
										<div style="margin-top: 8px;">
										<h6><span><b>Book Name </b> : </span><span th:text="${books.subName}"></span></h6>
										<span><b>Author Name </b> : </span><span th:text="${books.author}"></span><br>									
										<span><b>Discription </b> : </span><span th:text="${books.subTitle}"></span><br>										
										<span><b>Publiser</b> : </span><span th:text="${books.publisher}"></span><br>
										<span><b>Issue Date</b> : </span><span th:text="${books.bookIssueDate}"></span><br>
										<span><b>Submision Date</b> : </span><span th:text="${books.bookSubmitDate}"></span><br>
										<span><b>Class</b> : </span><span th:text="${books.classes}"></span>&ensp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&emsp;&emsp;
										<a href="https://www.javatpoint.com/spring-boot-tutorial" style="color: white;"><i class="bi bi-eye-fill" style="color: darkorange;"></i></a>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
      </div>
<!-- End Page Title -->
<!--	<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Book Details</h5>
						<table width="100%" style="font-size: 14px;">
					
							<tr th:each="books,id:${book}">
								<td th:text="${id.count}"></td>
								<td th:text="${books.subName}"></td>
								<td th:text="${books.subIc
								on}"></td>
								<td th:text="${books.subTitle}"></td>
								<td th:text="${books.publisher}"></td>
								<td th:text="${books.author}"></td>																
								<td th:text="${books.substatus}"></td>
								<td>
									<button class="bg-info"><a th:href="@{/img/key.png}" download="download"
											style="color: white;">Download</a>&nbsp;</button>
								</td>
							</tr>
						</table>
					</div>
				</div>			
			</div>	-->
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