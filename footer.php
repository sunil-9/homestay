<!--footer-->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 footer-grid-agileits-w3ls text-left">
					<h3>About US</h3><mark style="color:white;font-size:20px">
					<p><em><?php getshortdescription("titles"); ?></em></p></mark>
					<div class="read">
						<a href="about.php" class="btn btn-primary read-m">Read More</a>
					</div>
				</div>
				<div class="col-lg-4 footer-grid-agileits-w3ls text-left">

					<div class="tech-btm">
						<h3>Popular Homestay</h3>
						<p style="color: white"><?php getpopularposts("page_hits"); ?></p>
					</div>
				</div>
				<!-- subscribe -->


				<div class="col-lg-4 subscribe-main footer-grid-agileits-w3ls text-left">
					<h2>Signup to our newsletter</h2>
					<div class="subscribe-main text-left">
						<style type="text/css">
							
							.subscribe-form input:placeholder{
								color: white;
							}
						</style>
							<div class="subscribe-form">

									<form  method="post" class="subscribe_form" action=''>
										<input style="background-color:white;font-size: 16px;border: none; height: 14px;" class="form-control"  type="text" placeholder="Your name" required="" name ='name'>
										<br/>
										<input style="background-color:white;font-size: 16px;border: none;height: 14px;"class="form-control" type="email" placeholder="Enter your email..." required="" name ='email'>
										<button type="submit" class="btn btn-primary submit" name='save'>Submit</button>
									</form>
									<div class="clearfix"> </div>
						   </div>
						   

						<p>We respect your privacy.No spam ever!</p>
					</div>
					<?php
					require 'database/db_connect.php';
				if(isset($_POST['save']))
				{
					$name =$_POST['name'];
					$email = $_POST['email'];
					$approval = "Not Allowed";
					$sql = "INSERT INTO `newsletter`(`full_name`, `email`,`c_date`,`approval`) VALUES ('$name','$email',now(),'$approval')" ;
					
					
					if(mysqli_query($con,$sql)){
						echo 'Thank you for your support ! :)';
					}
				

					
				}
				?>
					<!-- //subscribe -->
				</div>
			</div>
			<!-- footer -->
			<div class="footer-cpy text-center">
				<div class="footer-social">
					<div class="copyrighttop">
						<ul>
							<li class="mx-3">
								<a class="facebook" href="<?php getlinks("links","facebook");?>">
									<i class="fab fa-facebook-f"></i>
									<span>Facebook</span>
								</a>
							</li>
							<li>
								<a class="facebook" href="<?php getlinks("links","twitter");?>">
									<i class="fab fa-twitter"></i>
									<span>Twitter</span>
								</a>
							</li>
							<li class="mx-3">
								<a class="facebook" href="<?php getlinks("links","googleplus");?>">
									<i class="fab fa-google-plus-g"></i>
									<span>Google+</span>
								</a>
							</li>
							<li>
								<a class="facebook" href="<?php getlinks("links","pinterest");?>">
									<i class="fab fa-pinterest-p"></i>
									<span>Pinterest</span>
								</a>
							</li>
						</ul>

					</div>
				</div>
				<div class="w3layouts-agile-copyrightbottom">
					<p> Homestay website © <?php $current=date("Y"); print_r($current);?> 
					</p>
					<fieldset><h4><strong>Language</strong></h4>
						<div id="google_translate_element1"></div>

<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element1');
}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</fieldset>

				</div>
			</div>
			<!-- //footer -->
		</div>
	</footer>