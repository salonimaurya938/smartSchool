<?php include 'header.php'; ?>

<style>
.scroll::-webkit-scrollbar{display: none;}
</style>

<main id="main" class="main">

  <div class="pagetitle">
    <h1>Profile</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
        <li class="breadcrumb-item active">Slider</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section profile">
    <div class="row">
      <div class="col-xl-12">

        <div class="card">
          <div class="card-body pt-3">
            <h5 class="card-title">Add Slider</h5>

            <form method="post" action="db/slider.php"
              enctype="multipart/form-data">
              <div class="row">
                <div class="col-lg-6 col-md-6 col-12">
                  <label for="inputNanme4" class="form-label">Status</label>
                  <select class="form-control" name="status">
                    <option value="1">Active</option>
                    <option value="0">InActive</option>
                  </select>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                  <label for="inputNanme4" class="form-label">Banner</label>
                  <input type="file" class="form-control" name="pic" required>
                  <span style="font-size:10px; color:red;">(Upload Only
                    jpeg/jpg/png formate) </span>
                </div>

                <div class="col-lg-6 col-md-6 col-12">
                  <label for="inputNanme4" class="form-label">Title</label>
                  <input type="text" class="form-control" name="title">
                </div>

                <div class="col-lg-6 col-md-6 col-12">
                  <label for="inputNanme4" class="form-label">Description</label>
                  <textarea rows="3" class="form-control" name="desc"></textarea>
                </div>

                <div class="col-lg-12 col-md-12 col-12 pt-4">
                  <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                </div>

              </div>

            </form>
          </main>

          <br />
          

        </div>
        <div class="card">
            <div class="card-body pt-3">
              <h5 class="card-title">Add Slider</h5>
              <div class="row scroll" style="overflow-X: scroll;">
                <!-- Table with stripped rows -->
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Banner</th>
                      <th scope="col">Title</th>
                      <th scope="col">Description</th>
                      <th scope="col">Status</th>
                      <th scope="col">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    include 'db/conn.php';
                    //$url="https://mahalakshmisilkhouse.com/";
                    $sql="SELECT * FROM slider";
                    $res=mysqli_query($conn,$sql);
                    $a=1;
                    while($row=mysqli_fetch_array($res,MYSQLI_BOTH))
                    {
                    ?>
                    <tr>
                      <th scope="row"><?php echo $a; ?></th>
                      <td><img src="../<?php echo $row['banner']; ?>"
                          style="height: 100px;width:100px;" /></td>
                      <td><?php echo $row['title']; ?></td>
                      <td><?php echo $row['text']; ?></td>
                      <td><a
                          href="db/update_slider.php?id=<?php echo $row['id']; ?>">
                          <span class="badge <?php if($row['status']==1){echo "bg-success";}
                            else { echo "bg-warning";} ?>">
                            <?php if($row['status']==1){echo "Active";} else {
                            echo "InActive";} ?></span></a></td>
                      <td><a href="edit_slider.php?id=<?php echo $row['id']; ?>"><span
                            class="bi bi-pencil-square" style="color:blue;"></span></a>
                        <a
                          href="db/delete_slider.php?id=<?php echo $row['id']; ?>"><span
                            class="bi bi-trash-fill" style="color:red;"></span></a></td>
                    </tr>
                    <?php
                    $a++;
                    }
                    ?>

                  </tbody>
                </table>
                <!-- End Table with stripped rows -->
              </div>
              <div>
              </div>
            </div>
          </div>
      </div>
    </section>

    <?php include 'footer.php'; ?>
