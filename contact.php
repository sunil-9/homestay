<?php require("libs/fetch_data.php");?>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title><?php getwebname("titles"); echo"|"; gettagline("titles");?> | Contact</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<link id="browser_favicon" rel="shortcut icon" href="favicon/homestay_nepal.ico">
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
	<link href="css/contact.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	rel="stylesheet">
</head>

<body>
	<!--Header-->
	<?php include("header.php");?>
	<!--//header-->
		<div class="header_top" id="home">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
   <button class="navbar-toggler navbar-toggler-right mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
   aria-expanded="false" aria-label="Toggle navigation">
   <span class="navbar-toggler-icon"></span>
 </button>


 <div class="collapse navbar-collapse" id="navbarSupportedContent">
  <ul class="navbar-nav mr-auto">
   <li class="nav-item ">
    <a class="nav-link" href="index.php">Home
     <span class="sr-only">(current)</span>
   </a>
 </li>
 <li class="nav-item ">
  <a class="nav-link" href="about.php">About</a>
</li>

						<!-- 	<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
								    aria-expanded="false">
									Home Stays
								</a>
								 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#"></a>
									<?php //getcategoriesmenu("location");
									?>
								</div> 
							</li> -->
							<li class="nav-item active">
								<a class="nav-link " href="contact.php">Contact</a>
							</li>
							
							<li class="nav-item">
								<a class="nav-link" href="index.php#search">reservation</a>
							</li>
							<li class="nav-item">
								<a class="nav-link " href="terms.php">terms and conditions</a>
							</li>

						</ul>
						
           <form action="search.php" method="post" class="form-inline my-2 my-lg-0 header-search" name="form" >

            <input class="form-control mr-sm-2" type="search" placeholder="Search here..." required="yes" type="text" name="search[keyword]">
            <button class="btn btn1 my-2 my-sm-0" type="submit" name="submit"><i class="fas fa-search"></i></button>
          </form>



        </div>
      </nav>

    </div>
	<!--/banner-->
	<div class="banner-inner">
	</div>
	<ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="index.php">Home</a>
		</li>
		<li class="breadcrumb-item active">Contact</li>
	</ol>
	<!--//banner-->
	<!--/main-->
	<section class="main-content-w3layouts-agileits">

		<h3 class="tittle">Contact Us</h3>
		<p class="sub text-center">We love to discuss your idea</p>
		<div class="contact-map inner-sec">

			<iframe src="<?php getcontacts("titles","4");?>"
				class="map" style="border:0" allowfullscreen=""></iframe>
			</div>
			<div class="ad-inf-sec bg-light">
				<div class="container">
					<div class="address row">

						<div class="col-lg-4 address-grid">
							<div class="row address-info">
								<div class="col-md-4 address-left text-center">
									<i class="far fa-map"></i>
								</div>
								<div class="col-md-8 address-right text-left">
									<h6>Address</h6>
									<p> <?php getcontacts("titles","1");?>

									</p>
								</div>
							</div>

						</div>
						<div class="col-lg-4 address-grid">
							<div class="row address-info">
								<div class="col-md-4 address-left text-center">
									<i class="far fa-envelope"></i>
								</div>
								<div class="col-md-8 address-right text-left">
									<h6>Email</h6>
									<p>
										<a href="mailto:<?php getcontacts("titles","2");?>"><?php getcontacts("titles","2");?></a></p>
									</div>

								</div>
							</div>
							<div class="col-lg-4 address-grid">
								<div class="row address-info">
									<div class="col-md-4 address-left text-center">
										<i class="fas fa-mobile-alt"></i>
									</div>
									<div class="col-md-8 address-right text-left">
										<h6>Phone</h6>
										<p><?php getcontacts("titles","3");?></p>

									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--//main-->
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
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
							 		*/

							 		$().UItoTop({
							 			easingType: 'easeOutQuart'
							 		});

							 	});
							 </script>
							 <a href="#home" class="scroll" id="toTop" style="display: block;">
							 	<span id="toTopHover" style="opacity: 1;"> </span>
							 </a>

							 <!-- //Custom-JavaScript-File-Links -->
							 <script src="js/bootstrap.js"></script>


							</body>

							</html>