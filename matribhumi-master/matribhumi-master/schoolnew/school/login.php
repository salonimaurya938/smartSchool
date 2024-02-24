<?php include 'header.php'; ?>
<!-- ** Container ** -->
<div class="container">
	<!-- Primary -->
	<section id="primary" class="content-full-width">
		<!-- #post-24491 -->
		<div id="post-24491" class="post-24491 page type-page status-publish hentry">
			<div data-elementor-type="wp-page" data-elementor-id="24491" class="elementor elementor-24491" data-elementor-settings="[]">
				<div class="elementor-inner">
					<div class="elementor-section-wrap">
						<section class="elementor-section elementor-top-section elementor-element elementor-element-4080858c elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="4080858c" data-element_type="section">
							<div class="elementor-container elementor-column-gap-default">
								<div class="elementor-row">
									<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-5a07424f" data-id="5a07424f" data-element_type="column">
										<div class="elementor-column-wrap elementor-element-populated">
											<div class="elementor-widget-wrap">
												<div class="elementor-element elementor-element-3c2177ec elementor-widget elementor-widget-text-editor" data-id="3c2177ec" data-element_type="widget" data-widget_type="text-editor.default">
													<div class="elementor-widget-container">
														<div class="elementor-text-editor elementor-clearfix">
															<!-- wp:shortcode -->
															<div class="woocommerce">
																<div class="woocommerce-notices-wrapper">
																</div>

																<div class="col-md-6 offset-md-3" id="formid">

																	<div class="my-card mt-5 radius">

																		<div class="container">
																			<img style="width: 60px; margin-left: 20%;" class="key" src="assets/img/key.png" alt="" />
																		</div>
																		<h3 class="text-center">Student Login here...</h3>																		
																		<form action="studentDashboard/db/login.php" method="post" class="formId">
																			<div class="form-group">
																				<label for="username">Username</label>
																				<input type="text" required name="username" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter Your username...">
																			</div>
																			<div class="form-group">
																				<label for="password">Password</label>
																				<input type="password" class="form-control" required name="password" id="password" aria-describedby="emailHelp" placeholder="Enter Your password...">
																			</div>
																			<div class="container">
																				<button type="submit" class="btn bg-primary text-light">Submit</button>
																				<button type="reset" class="btn bg-info  text-light">Reset</button>
																			</div>
																		</form>
																	</div>
																</div> <!-- /wp:shortcode -->
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
						</section>
					</div>

					<style>
						.formId {
							box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
							padding: 30px;
							border-radius: 10px;
						}

						.key {
							margin-left: 205px;
						}
					</style>
					<?php include 'footer.php'; ?>