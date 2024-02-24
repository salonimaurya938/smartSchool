<?php include 'header.php'; ?>

<section class="main-title-section-wrapper aligncenter">
    <div class="main-title-section-bg"  style="background-image: url(assets/img/exam.jpg);"></div>
    <div class="container">
        <div class="main-title-section">
            <h1>Exam Result</h1>
        </div>
        <div class="breadcrumb"><a href="index.php">Home</a><span
                class="fas fa-caret-right"></span><span
                class="current">Exam Result</span></div>
    </div>
</section>
</div>
<div class="container spacet60">
            <div class="row">
                                <div class="col-md-12 spacet60 pt-0-mobile">
                        <form id="form1" class="spaceb60 spacet40" action="https://demo.smart-school.in/cbseexam" id="employeeform" name="employeeform"
         method="post" accept-charset="utf-8" enctype="multipart/form-data">

         
         <h3 class="entered pb20"> Exam Result</h3>
            <div class="row">
               <div class="col-lg-6 col-md-5 col-sm-6">
                  <div class="form-group">
                     <label for="email">Exam<small class="req"> *</small> </label>

                     <select class="form-control" name="exam_id">
                        <option value="">Select</option>
                                                   <option value="3" >Monthly Exam Test</option>
                                                      <option value="8" >Monthly Examination-(Chapter Wise)</option>
                                                      <option value="11" >Monthly Test (August -2023)</option>
                                                      <option value="14" >Online Examination (October)</option>
                                                      <option value="4" >Practical Test</option>
                                                      <option value="6" >Practice Test</option>
                                                      <option value="13" >Quarterly Examination(September-2023)</option>
                                                      <option value="7" >Quiz Test</option>
                                                      <option value="5" >Weekly Test</option>
                                                </select>
                     <span class="text-danger">
                                             </span>
                  </div>
               </div>   
            <div class="col-lg-3 col-md-4 col-sm-3">   
               <div class="form-group">
                  <label for="email">Admission No.<small class="req"> *</small> </label>
                  <input type="text" class="form-control" name="roll_no" value="" />
                  <span class="text-danger">
                                       </span>
               </div>
            </div>   
            <div class="col-lg-2 col-md-3 col-sm-3">
            
               <button type="submit" class="onlineformbtn search-top-space">Search</button>
               
            </div>   
         </div>

      </form>

<div class="spaceb60 table-responsive">
   
</div>
<br><br>






<script type="text/javascript">

   function printDiv(tagid) {
       
            var hashid = "#"+ tagid;
            var tagname =  $(hashid).prop("tagName").toLowerCase() ;
            var attributes = ""; 
            var attrs = document.getElementById(tagid).attributes;
              $.each(attrs,function(i,elem){
                attributes +=  " "+  elem.name+" ='"+elem.value+"' " ;
              })
            var divToPrint= $(hashid).html() ;
            var head = "<html><head>"+ $("head").html() + "</head>" ;
            var allcontent = head + "<body  onload='window.print()' >"+ "<" + tagname + attributes + ">" +  divToPrint + "</" + tagname + ">" +  "</body></html>"  ;
            var newWin=window.open('','Print-Window');
            newWin.document.open();
            newWin.document.write(allcontent);
            newWin.document.close();
         
            setTimeout(function(){newWin.close();},10);

   }
</script>                </div>
                

            </div><!--./row-->
        </div><!--./container--
                    
             
<?php include 'footer.php'; ?>             