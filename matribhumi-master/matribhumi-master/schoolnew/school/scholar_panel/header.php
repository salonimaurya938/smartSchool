<?php session_start(); 

echo $sessionClass = $_SESSION['class'];
$sessionUsername = $_SESSION['username'];
$sessionId = $_SESSION['id'];
//echo $sessionClass;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Logis Bootstrap Template - Service Details</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="user_assets/img/favicon.png" rel="icon">
    <link href="user_assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="user_assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="user_assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="user_assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="user_assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="user_assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link href="user_assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="user_assets/css/main.css" rel="stylesheet">
</head>
<body>
    <!-- ======= Header ======= -->
    <header id="header" class="header d-flex align-items-center fixed-top">
        <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

            <a href="index.html" class="logo d-flex align-items-center">
                <img src="user_assets/img/school_logo.png" alt="Not Found">
            </a>

            <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
            <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
            <nav id="navbar" class="navbar">
                <ul>    
                    <li class="dropdown"><a href="#"><span><img src="user_assets/img/img22.png" height="30px" width="30px" style="border-radius:50%;"></span> <i
                                class="bi bi-chevron-down dropdown-indicator"></i></a>
                        <ul>
                            <li><a href="profile.php" class="text-success">My Profile</a></li>
                            <li><a href="logout.php" class="text-danger">Logout</a></li>
                        </ul>
                    </li>                   
                </ul>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->
    <!-- End Header -->

    <main id="main">
        <div class="breadcrumbs">
            <div class="page-header d-flex align-items-center">

            </div>
            <!-- <nav>
                <div class="container">
                    <ol>
                        <li><a href="index.html">Home</a></li>
                        <li>Service Details</li>
                    </ol>
                </div>
            </nav> -->
        </div>

          <!-- ======= Service Details Section ======= -->
   <section id="service-details" class="service-details p-0">
    <div class="container-fluid" data-aos="fade-up">
        <div class="row gy-4">
            <div class="col-lg-3" style="background: rgb(13 110 253 / 7%);">
                <div class="services-list">
                    <a href="scholarDashboard.php" class="active">Dashboard</a>
                    <a href="profile.php" style="color:green;">Profile</a>
                    <a href="onlineQuiz.php" style="color:red;">Online Quiz</a>
                    <a href="attempted.php" style="color:navy;">Quiz Attempted</a>
                    <a href="logout.php" style="color:orange;">Logout</a>
                </div>
            </div>