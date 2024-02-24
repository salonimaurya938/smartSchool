<?php include 'header.php'; ?>

<div class="col-lg-9 contact bg-body-secondary">

    <div class="row justify-content-center p-3">
        <div class="col-lg-5 px-4">
            <div class="row  p-4  bg-white">
                <h5 class="title text-success">Profile Image</h5>
                <div class="col-12">
                <img src="user_assets/img/img22.png" style="height: 200px; width:200px; border-radius:50%;" />
                </div>
            </div>
        </div>
        <div class="col-lg-7">
            <div class="row  p-4  bg-white">
                <h5 class="title text-danger">Profile Edit</h5>
                <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                    <div class="row ">
                        <div class="col-md-12 form-group">
                            <input type="text" name="name" class="form-control" id="name" placeholder="Name" required>
                        </div>
                        <div class="col-md-12 form-group mt-3 mt-md-0">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
                        </div>
                        <div class="col-md-12 form-group mt-3 mt-md-0">
                            <input type="email" class="form-control" name="mob" placeholder="Mobile No" required>
                        </div>
                        <div class="col-md-12 form-group mt-3 mt-md-0">
                            <input type="file" class="form-control" name="pic" placeholder="" required>
                        </div>
                    </div>

                    <div class="my-3">
                        <div class="loading">Loading</div>
                        <div class="error-message"></div>
                        <div class="sent-message">Your message has been sent. Thank you!</div>
                    </div>
                    <div class="text-center"><button class="bg-info" type="submit">Submit</button></div>
                </form>
            </div>
            <div class="row  p-4  bg-white mt-4">
                <h5 class="title text-info">Change Password</h5>

                <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                    <div class="row ">
                        <div class="col-12 form-group">
                            <input type="text" name="name" class="form-control" id="name" placeholder="New Password" required>
                        </div>
                        <div class="col-12 form-group mt-3 mt-md-0">
                            <input type="text" class="form-control" name="email" id="email" placeholder="Confirm Password" required>
                        </div>
                    </div>

                    <div class="my-3">
                        <div class="loading">Loading</div>
                        <div class="error-message"></div>
                        <div class="sent-message">Your message has been sent. Thank you!</div>
                    </div>
                    <div class="text-center"><button class="bg-danger" type="submit">Submit</button></div>
                </form>
            </div>
        </div>




    </div>



</div>
</div>

<?php include 'footer.php'; ?>