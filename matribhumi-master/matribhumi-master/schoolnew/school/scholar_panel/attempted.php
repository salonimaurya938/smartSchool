<?php include 'header.php'; ?>


<div class="col-lg-9 contact">
    <br />
    <div class="tab-pane fade show active" id="ex1-tabs-1" role="tabpanel" aria-labelledby="ex1-tab-1">
        <?php

        include 'db/conn.php';

        $sq = "SELECT * FROM `scholar_register`";
        $query1 = mysqli_query($conn, $sq);
        $i = 1;
        while ($rw = mysqli_fetch_assoc($query1)) :
            // echo $rw['id'];


            $sq1 = "SELECT * FROM `quiz_attempted`";
            $query2 = mysqli_query($conn, $sq1);
            $i = 1;
            while ($rw1 = mysqli_fetch_assoc($query2)) :
                $attemed_id= $rw1['id'];

                if ($rw['id'] == $rw1['id']) {

                    // echo "testing";

                    $sql = "SELECT * FROM `quiz_details`";

                    $query = mysqli_query($conn, $sql);
                    $i = 1;
                    while ($row = mysqli_fetch_assoc($query)) :
                        
                        $add_detail_id=$row['id'];

                        // echo "add details id :: ".$row['id']."<br>";

                        if ($sessionClass == $row['classes']) {
                           if($attemed_id == $add_detail_id){

                                // echo "<br/>testing 3 <br>";
                                // $sql_data="SELECT * FROM `quiz_details` WHERE 1";  
                                // $id=$_GET['id'];

                                $sql = "SELECT * FROM `quiz_details` WHERE `id`='$attemed_id'";

                                // echo $sql;
                                
                                $query = mysqli_query($conn, $sql);
                                $i = 1;
                                while ($row2 = mysqli_fetch_assoc($query)) :
                                    if ($sessionClass == $row2['classes']) {
                                        // echo $row2['id']; 
                                        // echo $row2['category']; 
                                ?>
                                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                                            <b>
                                                <span class="text-success">Subject : <?php echo $row2['subject']; ?> </span>
                                                <span style="margin-left: 90%;">Marks : <?php echo $row2['marks']; ?> </span><br>
                                            </b>
                                            <span><b>Total Time </b>: <?php echo $row2['total_time']; ?> </span><br>
                                            <span><b>Class</b> : <?php echo $row2['classes']; ?> </span><br>
                                            <span><b>Category</b> : <?php echo $row2['category']; ?></span><br>
                                            <span><b>Negative Mark </b> : <?php echo $row2['negative_marks']; ?></span><br>
                                            <span><?php echo $row['title']; ?></span>
                                            <br><button type="button" id="startButton" class="text-light" style="border: none; border-radius: 8px; margin-left: 85%; background-color:navy;padding: 5px;">
                                                <a href="veiwSolution.php?category=<?php echo $row2['category']; ?>" class="text-light p-3">View Solution ></a></button>
                                        </div>
        <?php
            }
            $i = $i + 1;
        endwhile;
        
    }
}

$i=$i+1;  
endwhile;  
}
$i = $i + 1;
endwhile;


$i = $i + 1;
endwhile;

        ?>
        
    </div>
</div>

<?php include 'footer.php'; ?>