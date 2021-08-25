<!Doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title><?php echo $pageTitle; ?></title>
        <meta name="description" content="University Management system">
		<meta name="author" content="OMARABEDELKADER">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <header class="container header_area fix" >
			<div id="sticker">
				<div class="head">
					<a href="#"><div class="logo fix">
						<img src="img/logo.png" alt="" />
					</div></a>
					<div class="uniname fix">
						<h2>University Management System</h2>
					</div>
				</div>
				<div class="menu fix">
					<div class="dateshow fix"><p><?php echo "Date : ".date("d M Y"); ?></p></div>
				<ul>
						<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
						
						<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> User</a></li>
					</ul>
				</div>
			</div>
		</header>
		<div class="maincontent container fix">
			<div id="stickerside">
				<div class="sidebar fix" >
						<ul>
							<li><span class="spcl"><i class="fa fa-server" aria-hidden="true"></i> Faculty Heads Area</span></li>
								<ul>
									<li><a href="ad_login.php"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>
								</ul>
							
							<li><span class="spcl"><i class="fa fa-male" aria-hidden="true"></i> Faculty Area</span></li>
								<ul>
									<li><a href="facultylogin.php"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>
									<li><a href="fct_single_profile.php"><i class="fa fa-user" aria-hidden="true"></i> Profile</a></li>
									<li><a href="class_att.php"><i class="fa fa-database" aria-hidden="true"></i> Class Attendance</a></li>
								</ul>
							
							<li><span class="spcl"><i class="fa fa-graduation-cap" aria-hidden="true"></i> Student Area</span></li>
								<ul>
									<li><a href="st_login.php"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>
									<li><a href="st_profile.php"><i class="fa fa-user" aria-hidden="true"></i> Profile</a></li>
								</ul>			
						</ul>					
					</div>
				</div>
				<div class="content fix">