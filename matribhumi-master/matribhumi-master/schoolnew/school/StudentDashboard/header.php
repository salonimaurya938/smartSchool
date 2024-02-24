<?php
session_start();
//$username = $_SESSION['username'];
// echo $id = $_SESSION['id'];
// // $studentName = $_SESSION['studentName'];
// echo $mob = $_SESSION['mob'];
// echo $email = $_SESSION['gmail'];
// echo $name= $_SESSION['studentName'];
// echo $class= $_SESSION['class'];
// echo $dob = $_SESSION['dob'];
// echo $bloodGroup = $_SESSION['blood_group'];
// echo $address=  $_SESSION['address'];
echo $username = $_SESSION['username'];
echo $pass = $_SESSION['password'];
// echo $fname = $_SESSION['fname'];
// echo $mname = $_SESSION['mname'];
// echo $gender = $_SESSION['gender'];
// echo $rollNo =$_SESSION['rollNo'];
// echo $registrationNo = $_SESSION['registration'];
// echo $admissionNo = $_SESSION['admissionNo'];
// $class = $_SESSION['class'];
// $dob= $_SESSION['dob'];
// $bloodGroup=$_SESSION['bloodGroup'];
// $weight= $_SESSION['weight'];
// $height = $_SESSION['height'];
// $homeAddress=$_SESSION['homeAddress'];
 echo $username;
 echo $password;
// echo $studentName;
// echo $mob;
// echo $email;
// echo $class;
// echo $dob;
// echo $bloodGroup;
// echo $weight;
// echo $homeAddress;
if(isset($_SESSION['username']))
{}
else{
  // header('Location: login.html');
  echo "<script>window.location.href='login.html'</script>";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - Student Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Mar 09 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
  <!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">
<div class="d-flex align-items-center justify-content-between">
<a href="index.html" class="logo">
    <img src="../assetsfront/img/school logo.png" height="40%" width="100%" class="attachment-full size-full" alt decoding="async" />
</a> 
  <i class="bi bi-list toggle-sidebar-btn"></i>
</div><!-- End Logo -->
    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-bell"></i>
            <span class="badge bg-primary badge-number">4</span>
          </a><!-- End Notification Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
            <li class="dropdown-header">
              You have 4 new notifications
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-exclamation-circle text-warning"></i>
              <div>
                <h4>Lorem Ipsum</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>30 min. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-x-circle text-danger"></i>
              <div>
                <h4>Atque rerum nesciunt</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>1 hr. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-check-circle text-success"></i>
              <div>
                <h4>Sit rerum fuga</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>2 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-info-circle text-primary"></i>
              <div>
                <h4>Dicta reprehenderit</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>4 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>
            <li class="dropdown-footer">
              <a href="#">Show all notifications</a>
            </li>

          </ul><!-- End Notification Dropdown Items -->

        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-chat-left-text"></i>
            <span class="badge bg-success badge-number">3</span>
          </a><!-- End Messages Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
            <li class="dropdown-header">
              You have 3 new messages
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Maria Hudson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>4 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Anna Nelson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>6 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>David Muldon</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>8 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="dropdown-footer">
              <a href="#">Show all messages</a>
            </li>

          </ul><!-- End Messages Dropdown Items -->

        </li><!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2"><?php echo $email; ?></span>
          </a><!-- End Profile Iamge Icon --> 

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              
              <h6>Name:     <?php echo $username; ?></h6>
              <h6>Email:    <?php echo $username; ?></h6>
             
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="studentProfile.php">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            <!-- </li>
            <li>
              <hr class="dropdown-divider">
            </li> -->

            <!-- <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li> -->
              <!-- <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
              </a>
            </li> -->
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="db/logout.php">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

 <!-- ======= Sidebar ======= -->
 <aside id="sidebar" class="sidebar">

<ul class="sidebar-nav" id="sidebar-nav">

  <li class="nav-item">
    <a class="nav-link collapsed" href="studentdashBoard.php">
      <i class="bi bi-grid" style="color: darkorchid;"></i>
      <span>Dashboard</span>
    </a>
  </li><!-- End Dashboard Nav -->
  
  <li class="nav-item">
    <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse"
      href="admin/library">
      <i class="bi bi-menu-button-wide" style="color: lightsalmon;"></i><span>Library</span><i class="bi bi-chevron-down ms-auto"></i>
    </a>
    <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
      <li>
        <a href="viewBook.php">
          <i class="bi bi-circle"></i><span>Book List</span>
        </a>
      </li>
      <li>
        <a href="viewchapters.php">
          <i class="bi bi-circle"></i><span>Lession List</span>
        </a>
      </li>
    </ul>
  </li><!-- End Library Nav -->
  <li class="nav-item">
    <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
      <i class="bi bi-layout-text-window-reverse" style="color: deeppink;"></i><span>Home work</span><i
        class="bi bi-chevron-down ms-auto"></i>
    </a>
    <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
      <li>
        <a href="viewhomeworks.php">
          <i class="bi bi-circle"></i><span>View HomeWork</span>
        </a>
      </li>
    </ul>
  </li><!-- End Home work Nav -->

  <li class="nav-item">
    <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
      <i class="bi bi-bar-chart" style="color: sienna;"></i><span>Result & Report Card</span><i
        class="bi bi-chevron-down ms-auto"></i>
    </a>
    <ul id="charts-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
      <li>
        <a href="viewResults.php">
          <i class="bi bi-circle"></i><span>View Student Result</span>
        </a>
      </li>
    </ul>
  </li><!-- End Result & Report Card Nav -->

  <li class="nav-item">
    <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
      <i class="bi bi-calendar3-event" style="color: deepskyblue;"></i><span>Holidays & Academic plan</span><i
        class="bi bi-chevron-down ms-auto"></i>
    </a>
    <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
      <li>
        <a href="viewEvent.php">
          <i class="bi bi-circle"></i><span>Viewing Events</span>
        </a>
      </li>
    </ul>
  </li><!-- End Holidays & Academic plan Nav -->
  <li class="nav-heading">Pages</li>

  <li class="nav-item">
    <a class="nav-link collapsed" href="onlineCourse.php">
      <i class="bi bi-fast-forward-circle" style="color: orangered;"></i>
      <span>Online Courses</span>
    </a>
  </li><!-- End Holidays & Academic plan Nav -->

  <li class="nav-item">
    <a class="nav-link collapsed" href="onlineQuiz.php">
      <i class="bi bi-patch-question" style="color: darkslateblue;"></i>
      <span>Online Quiz</span>
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link collapsed" href="viewTimeTable.php">
      <i class="bi bi-calendar" style="color: lightseagreen;"></i>
      <span>TimeTable</span>
    </a>
  </li><!-- End Time Tables plan Nav -->
  <li class="nav-item">
    <a class="nav-link collapsed" href="calenderStd.php">
      <i class="bi bi-card-list" style="color: red;"></i>
      <span>Circulor and Calendar</span>
    </a>
  </li><!-- End Calender Page Nav -->

  <li class="nav-item">
    <a class="nav-link collapsed" href="noticeBoard.php">
      <i class="bi bi-envelope" style="color: orange;"></i>
      <span>Notice Board</span>
    </a>
  </li><!-- End Notic page -->

  <!--	<li class="nav-item">
    <a class="nav-link collapsed" href="login">
      <i class="bi bi-box-arrow-in-right"></i>
      <span>Login</span>
    </a>
  </li>

  <li class="nav-item">
    <a class
="nav-link collapsed" href="error404.html">
      <i class="bi bi-dash-circle"></i>
      <span>Error 404</span>
    </a>
  </li> -->
</ul>

</aside><!-- End Sidebar-->
  