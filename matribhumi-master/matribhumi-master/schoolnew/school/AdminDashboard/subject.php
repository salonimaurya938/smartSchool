<?php include 'header.php'; ?>
<main id="main" class="main">  
<div class="pagetitle">
      <h1>Subject</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashBoard.php">Home</a></li>
          <li class="breadcrumb-item active">Subject</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    <section class="section profile">
      <div class="row">
      <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Subject</h5>

              <!-- Vertical Form -->
              <form action="db/addsubject.php" method="POST" class="row g-3">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">subject Name</label>
                  <input type="text" class="form-control" name="subName" id="inputNanme4">
                </div>
                <div class="col-12">
                  <label for="inputPassword4" class="form-label">Subject Status</label>
                  <input type="text" class="form-control" name="subStatus" id="inputPassword4">
                </div>
                <div class="col-12">
                  <label for="inputEmail4" class="form-label">Subject Icon</label>
                  <input type="file" class="form-control" name="subIcon" id="inputEmail4">
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

<?php include 'footer.php'; ?>
