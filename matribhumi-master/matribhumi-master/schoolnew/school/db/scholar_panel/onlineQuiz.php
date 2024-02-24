<?php include 'header.php'; ?>


<div class="col-lg-9 contact">
    <br />
    <div class="tab-pane fade show active" id="ex1-tabs-1" role="tabpanel" aria-labelledby="ex1-tab-1">
        <?php

        include 'db/conn.php';

        $sql = "SELECT * FROM `quiz_details`";
        $query = mysqli_query($conn, $sql);
        $i = 1;
        while ($row = mysqli_fetch_assoc($query)) :

            if ($sessionClass == $row['classes']) {
                echo $row['category']; 
        ?>
                <div class="alert alert-primary alert-dismissible fade show" role="alert">
                    <b><span class="text-success">Subject : <?php echo $row['subject']; ?> </span>
                    <span style="margin-left: 90%;">Marks : <?php echo $row['marks']; ?> </span><br></b>
                    <span><b>Total Time </b>: <?php echo $row['total_time']; ?> </span><br>
                    <span><b>Class</b> : <?php echo $row['classes']; ?> </span><br>
                    <span><b>Category</b> : <?php echo $row['category']; ?></span><br>
                    <span><b>Negative Mark  </b> : <?php echo $row['negative_marks']; ?></span><br>
                    <span><?php echo $row['title']; ?></span>
                    <br><button type="button" id="startButton" class="text-light" style="border: none; border-radius: 8px; margin-left: 90%; background-color:navy;padding: 5px;">
                        <a href="test-quiz.php?category=<?php echo $row['category'];?>" class="text-light p-3">Next ></a></button>
                </div>
        <?php
            }
            $i = $i + 1;
        endwhile;
        ?>
    </div>
</div>


<?php include 'footer.php'; ?>