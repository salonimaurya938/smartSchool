<!-- add header -->
<?php include 'header.php'; ?>

<main id="main" class="main">  
<div class="pagetitle">
      <h1>Chapter</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashBoard.php">Home</a></li>
          <li class="breadcrumb-item active">Chapter</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    <section class="section profile">
      <div class="row">
      <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Chapter</h5>

              <!-- Vertical Form -->
              <form action="db/adminchapter.php" method="post" class="row g-3">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Chapter Name</label>
                  <input type="text" class="form-control" name="chap_name" id="inputNanme4">
                </div>
                <div class="col-12">
                  <label for="inputPassword4" class="form-label">Chapter Description</label>
                  <input type="text" class="form-control" name="chap_description" id="inputPassword4">
                </div>
                <div class="col-12">
                  <label for="inputEmail4" class="form-label">Which Chapter</label>
                  <input type="text" class="form-control" name="w_chapter" id="inputEmail4">
                </div>
                <div class="col-12">
                  <label for="inputEmail4" class="form-label">Subject Id</label>
                  <input type="text" class="form-control" name="subject_id" id="inputEmail4">
                </div>
                <div class="text-center">
                  <button type="submit" name="save" class="btn btn-primary">Submit</button>
                  <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
              </form><!-- Vertical Form -->

            </div>
          </div>
      </div>
</section>
</main>  
<!-- add footer -->
<?php include 'footer.php'; ?>