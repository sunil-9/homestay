<?php require("libs/fetch_data.php");?>
<?php //code to get the item using its id
include("database/conn.php");//database config file
$id=$_REQUEST['id'];
 $query="SELECT * from homestay_info where id='".$id."'";
  $result=mysqli_query($GLOBALS["___mysqli_ston"],$query) or die ( ((is_object($GLOBALS["___mysqli_ston"]))? mysqli_error($GLOBALS["___mysqli_ston"]) : (($___mysqli_res = mysqli_connect_error()) ?$___mysqli_res : true)));

$row = mysqli_fetch_assoc($result);
//pageview count query
$page=$row['title'];
 $count="SELECT * FROM page_hits WHERE page='".$page."'";

$feedback=mysqli_query($GLOBALS["___mysqli_ston"],$count) or die ( ((is_object($GLOBALS["___mysqli_ston"]))? mysqli_error($GLOBALS["___mysqli_ston"]) : (($___mysqli_res = mysqli_connect_error()) ?$___mysqli_res : true)));

$roo=mysqli_fetch_assoc($feedback);
?>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title><?php echo $row['title']; ?>|<?php getwebname("titles");?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<link id="browser_favicon" rel="shortcut icon" href="homestay/icon/<?php geticon("homestay_info"); ?>">
	<meta charset="utf-8" name="description" content="<?php getshortdescription("titles");?>">
	<meta name="keywords" content="<?php getkeywords("titles");?>" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/single.css">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	rel="stylesheet">
	<!--additional javascripts will be placed here-->
	<?php getjavascripts("links"); ?>

<!-- //for-mobile-apps -->
<link href="homestay/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="homestay/css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="homestay/css/chocolat.css" type="text/css" media="screen">
<link href="homestay/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="homestay/css/flexslider.css" type="text/css" media="screen" property="" />
<link rel="stylesheet" href="homestay/css/jquery-ui.css" />
<link href="homestay/css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="homestay/js/modernizr-2.6.2.min.js"></script>
<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Federo" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!--  for ajax -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</head>

<body>

	<!--for facebook comment-->
	<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v4.0"></script>

<!-- for facebook comment end-->
	<!--Header-->
	<?php include("header.php");?>
						<!-- <div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active">
								<a class="nav-link" href="index.php">Home
									<span class="sr-only">(current)</span>
								</a>
							</li>
							<li class="nav-item">
								<p></p>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#about_host"> Host</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#location">Location</a>
							</li>
							
							<li class="nav-item">
								<a class="nav-link" href="#reservation">Reservation</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#Rules">Rules</a>
							</li>

						</ul>
						
							<form action="search.php" method="post" class="form-inline my-2 my-lg-0 header-search" name="form" >
							
								<input class="form-control mr-sm-2" type="search" placeholder="Search here..." required="yes" type="text" name="search[keyword]">
								<button class="btn btn1 my-2 my-sm-0" type="submit" name="submit"><i class="fas fa-search"></i></button>
							</form>
		
						

					</div>
				</nav>

			</div> -->
	<!--//header-->
	<!--update database on page views-->
	<?php  require_once('database/connection.php');
	require_once('counter.php');
	$pn=updateCounter(''.$row['title'].''); // Updates page hits
	echo $pn;

	 updateInfo(); // Updates hit info 
?>
	<div class="banner-inner">
		</div>
	
	<ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="index.php">Home</a>
		</li>
		<li class="breadcrumb-item active">Details</li>
	</ol>

	<!--//banner-->
	<section class="banner-bottom">
		<!--/blog-->
		<div class="container"  style="margin-left: 90px;margin-right: 90px;max-width: 1400px;">
			<div class="row">
				<!--left-->
				<div class="col-lg-8 left-blog-info-w3layouts-agileits text-left">
					<div class="blog-grid-top">
						<div class="b-grid-top">
							<div class="blog_info_left_grid">
								<a href="#">
									<img src="homestay/admin/profile_pic/<?php echo $row['photo']; ?>" class="img-fluid" alt="image not available" style="width:900px;height:300px">
								</a>
							</div>
							<div class="blog-info-middle">
								<ul>
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i><?php echo $row['date']; ?></a>
										</li>
										<li class="mx-2">
											<a href="#">
												<i class="far fa-user"></i><?php echo $row['owner_name']; ?></a>
											</li>
											<li>
												<a href="#">
													<i class="far fa-tags"></i> <?php echo $row['tags']; ?></a>
												</li>
												<li>
													<a href="#">
														<i class="far fa-eye fa-x2"></i> <?php echo $roo['count']; ?></a>
													</li>

												</ul>
											</div>
										</div>

										<h3>
											<a href="single.html"><?php echo $row['title']; ?></a>
										</h3>
										<!--sharing script-->
										<?php getsharingscript("links"); ?>
										<?php echo $row['content']; ?>
									</div>

									<!--comments script will go here-->
<div style="margin-top: 40px;">
<?php require_once('homestay/index.php');
?>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>



<div class="container" style="margin-top: 40px;">
   <form method="POST" id="comment_form">
    <div class="form-group">
     <input type="text" name="comment_name" id="comment_name" class="form-control" placeholder="Enter Name" />
    </div>
    <div class="form-group">
     <textarea name="comment_content" id="comment_content" class="form-control" placeholder="Enter Comment" rows="5"></textarea>
    </div>
    <div class="form-group">
     <input type="hidden" name="comment_id" id="comment_id" value="0" />
     <input type="hidden" name="h_id" id="comment_id" value="<?php echo $_GET['id']; ?>" />
     <input type="submit" name="submit_comment" id="submit" class="btn btn-info" value="Submit" />
    </div>
   </form>
   <span id="comment_message"></span>
   <br />
   <div id="display_comment"></div>
  </div>
  <script type="text/javascript">


$(document).ready(function(){
 
 $('#comment_form').on('submit', function(event){
  event.preventDefault();
// alert("thank you!");
  var form_data = $(this).serialize();
 // alert(form_data);
    $.ajax({
     url:"add_comment.php",
     method:"POST",
     data:form_data,
     dataType:"JSON",
     success:function(data)
     {
      if(data.error != '')
      {
     
       $('#comment_form')[0].reset();
       $('#comment_message').html(data.error);
       $('#comment_id').val('0');
       load_comment();
      }
     }
    })
 });


 function load_comment()
 {
  $.ajax({
   url:"fetch_comment.php?id=<?php echo $_GET['id']; ?>",
   method:"POST",
   success:function(data)
   {
    $('#display_comment').html(data);

   }
  })
 }
        load_comment();


 $(document).on('click', '.reply', function(){
  var comment_id = $(this).attr("id");
  $('#comment_id').val(comment_id);
  $('#comment_name').focus();
 });
 
});
</script>


<?php //include 'star/show_rating.php';?>
</div>
</div>

<!--right-->
								<aside class="col-lg-4 col-md-4 agileits-w3ls-right-blog-con text-right" style="padding-left: 90px;">
									<div class="right-blog-info text-left">
										
										<div class="tech-btm widget_social">
											<h4>Stay Connected</h4>
											<ul>

												<li>
													<a class="twitter" href="<?php getlinks("links","twitter");?>">
														<i class="fab fa-twitter"></i>
														<span class="count"></span> Twitter</a>
													</li>
													<li>
														<a class="facebook" href="<?php getlinks("links","facebook");?>">
															<i class="fab fa-facebook-f"></i>
															<span class="count"></span> Facebook</a>
														</li>
														<li>
															<a class="dribble" href="<?php getlinks("links","dribble");?>">
																<i class="fab fa-dribbble"></i>

																<span class="count"></span> Dribble</a>
															</li>
															<li>
																<a class="pin" href="<?php getlinks("links","pinterest");?>">
																	<i class="fab fa-pinterest"></i>
																	<span class="count"></span> Pinterest</a>
																</li>

															</ul>
														</div>
														<div class="tech-btm">
															<h4>Featured Homestay</h4>
															<?php geteditorschoice("featured_homestay");?>
															<!--olderpostsendhere-->
														</div>
													
													<div class="tech-btm">
											<h4>recent homestay</h4>
											<?php getolderposts("homestay_info");?>
										
										</div>
										</div>
												</aside>
												</div></div>
												<div id="fb-root"></div>

</section>
									<!--footer-->
									<?php include("footer.php");?>
									<!---->
									<!-- js -->
									<script src="js/jquery-2.2.3.min.js"></script>
									<!-- //js -->
									<!--/ start-smoth-scrolling -->
									<script src="js/move-top.js"></script>
									<script src="js/easing.js"></script>
									<script>
										jQuery(document).ready(function ($) {
											$(".scroll").click(function (event) {
												event.preventDefault();
												$('html,body').animate({
													scrollTop: $(this.hash).offset().top
												}, 900);
											});
										});
									</script>
									<!--// end-smoth-scrolling -->

									<script>
										$(document).ready(function () {

							 		$().UItoTop({
							 			easingType: 'easeOutQuart'
							 		});

							 	});
							 </script>
							 <a href="#home" class="scroll" id="toTop" style="display: circle;">
							 	<span id="toTopHover" style="opacity: 1;"> </span>
							 </a>

							 <!-- //Custom-JavaScript-File-Links -->
							 <script src="js/bootstrap.js"></script>


							</body>

							</html>
