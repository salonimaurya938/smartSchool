<?php include 'header.php'; ?>

		<main id="main" class="main">
			<div class="pagetitle">
				<h1 class="h1font" style="font-size: 35px; margin-top: 8px">Online Quiz Test</h1>
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">Start Quiz...</h5>
								<div class=" col-12 col-md-12">
									<ul class="nav nav-tabs mb-3" id="ex1" role="tablist">
										<li class="nav-item" role="presentation">
											<a class="nav-link active " id="ex1-tab-1" data-bs-toggle="tab"
												href="#ex1-tabs-1" role="tab" aria-controls="ex1-tabs-1"
												aria-selected="true">Ongoing</a>
										</li>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<!-- <li class="nav-item" role="presentation">
											<a class="nav-link tabs-margin" id="ex1-tab-2" data-bs-toggle="tab"
												href="#ex1-tabs-2" role="tab" aria-controls="ex1-tabs-2"
												aria-selected="false">Spaces</a>
										</li>
										<li class="nav-item" role="presentation">
											<a class="nav-link tabs-margin" id="ex1-tab-3" data-bs-toggle="tab"
												href="#ex1-tabs-3" role="tab" aria-controls="ex1-tabs-3"
												aria-selected="false">Packages</a>
										</li>-->
										<li class="nav-item" role="presentation">
											<a class="nav-link tabs-margin tab-margin-1" id="ex1-tab-4"
												data-bs-toggle="tab" href="#ex1-tabs-4" role="tab"
												aria-controls="ex1-tabs-4" aria-selected="false">
												Quiz Attempted</a>
										</li>
									</ul>
									<div class="tab-content" id="ex1-content">
										<div class="tab-pane fade show active" id="ex1-tabs-1" role="tabpanel"
											aria-labelledby="ex1-tab-1">
											<div th:each="quizDetail,id:${quizDetails}">
												<div th:each="categoris:${cate}">
													<div th:if="${categoris.category}==${quizDetail.category}">
														<div class="alert alert-primary alert-dismissible fade show"
															role="alert">
															<b><span class="">Subject : </span><span
																	th:text="${quizDetail.subject}"><!--General Knowledge--></span>
																<span style="margin-left: 90%;">Marks : <span
																		th:text="${quizDetail.marks}">20</span></span><br></b>
															<span>Total Time : <span
																	th:text="${quizDetail.totalTime}"><!--20 min--></span></span><br>
															<span>Class : </span><span
																th:text="${quizDetail.classes}"><!--Class 1--></span><br>
															<span>Category : </span><span
																th:text="${categoris.category}"><!--Class 1--></span><br>
															<span
																th:text="${quizDetail.negativeMarks}"><!--Class 1--></span><br>
															<span th:text="${quizDetail.title}">
																<!--Content Word discription--></span>
															<br><button type="button" id="startButton"
																class="text-light"
																style="border: none; border-radius: 8px; margin-left: 90%; background-color:navy;padding: 5px;">
																<a th:href="|@{/testQuiz{category}(category=${categoris.category})}|"
																	class="text-light">Start Quiz ></a></button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--	<div class="tab-pane fade" id="ex1-tabs-2" role="tabpanel"
											aria-labelledby="ex1-tab-2">
											<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum recusandae
												doloremque
												natus nobis fugit, quidem esse illo doloribus iusto praesentium vero
												facilis quas
												tempora culpa eligendi corrupti enim. Placeat ex dolorum debitis numquam
												voluptates
												dolore incidunt, odit dolorem vel totam accusamus delectus a sit
												assumenda blanditiis
												possimus quos eius illo?</p>
										</div>
										<div class="tab-pane fade" id="ex1-tabs-3" role="tabpanel"
											aria-labelledby="ex1-tab-3">
											<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum recusandae
												doloremque
												natus nobis fugit, quidem esse illo doloribus iusto praesentium vero
												facilis quas
												tempora culpa eligendi corrupti enim. Placeat ex dolorum debitis numquam
												voluptates
												dolore incidunt, odit dolorem vel totam accusamus delectus a sit
												assumenda blanditiis
												possimus quos eius illo?</p>
										</div>-->
										<div class="tab-pane fade" id="ex1-tabs-4" role="tabpanel"
											aria-labelledby="ex1-tab-4">
											<div th:each="quizDetail,id:${quizDetails}">
												<div th:each="categoris:${cate}">
													<div th:if="${categoris.category}==${quizDetail.category}">
														<div class="alert alert-success alert-dismissible fade show"
															role="alert">
														
															<b><span class="">Subject : </span><span
																	th:text="${quizDetail.subject}"><!--General Knowledge--></span>
																<span style="margin-left: 90%;">Marks : <span
																		th:text="${quizDetail.marks}">20</span></span><br></b>
															<span>Total Time : <span
																	th:text="${quizDetail.totalTime}"><!--20 min--></span></span><br>
															<span>Class : </span><span
																th:text="${quizDetail.classes}"><!--Class 1--></span><br>
															<span>Category : </span><span
																th:text="${categoris.category}"><!--Class 1--></span><br>
															<span
																th:text="${quizDetail.negativeMarks}"><!--Class 1--></span><br>
															<span th:text="${quizDetail.title}">
																<!--Content Word discription--></span>
															<br><button type="button" id="startButton"
																class="text-light"
																style="border: none; border-radius: 8px; margin-left: 87%; background-color:darkgreen;padding: 5px;">
																<a th:href="|@{/testQuiz{category}(category=${categoris.category})}|"
																	class="text-light">Restart Quiz ></a></button>
														</div>
													</div>
												</div>
											</div>


										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main><!-- End #main -->
<?php include 'footer.php'; ?>