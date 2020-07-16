
<?php include ('head.php');?>
<body>

    <div id="wrapper">

       <?php include ('side_bar.php');?>
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-md-6 col-md-offset-2">
                    <h3 class="page-header" style="text-align: center; ">Registration</h3>
                </div>
				<div class = "col-md-6 col-md-offset-2">
					<div class="panel panel-green">
                        <div class="panel-heading">
                            Please Enter the Detail Needed Below
                        </div>
                        <div class="panel-body">
                         <form method = "post" enctype = "multipart/form-data">	
											<div class="form-group">
												<label>Reference Number</label>
												<input class ="form-control" type = "text" name = "id_number" placeholder = "Reference Number" required="true">
													
											</div>
											
											
											
											<div class="form-group">
												<label>Firstname</label>
													<input class="form-control" type ="text" name = "firstname" placeholder="Firstname" required="true">
											</div>
											<div class="form-group">
												<label>Lastname</label>
													<input class="form-control"  type = "text" name = "lastname" placeholder="Please enter lastname" required="true">
											</div>

											<div class="form-group">
					                         	<label>Gender</label>
							                      <select class = "form-control" name = "gender" required>
								                    <option></option>
								                    <option>Male</option>
								                    <option>Female</option>
							                     </select>
					                         </div>
											
											<div class="form-group">
												<label>Year_Level</label>
													<select class = "form-control" name = "year_level">
														<option></option>
														<option>1st Year</option>
														<option>2nd Year</option>
														<option>3rd Year</option>
														<option>4th Year</option>
														
													</select>
											</div>
																	
											 	 <button name = "save" type="submit" class="btn btn-success">Save Data</button>
												 
						  				 </div>
                                       
										
										</form>
								
							<?php 
								require 'dbcon.php';
								
								if (isset($_POST['save'])){
									$firstname=$_POST['firstname'];
									$lastname=$_POST['lastname'];
									$id_number=$_POST['id_number'];
									$gender=$_POST['gender'];
									$year_level=$_POST['year_level'];
									


									$query = $conn->query("SELECT * FROM voters WHERE id_number='$id_number'") or die (mysql_error());
									$count = $query->fetch_array();

									if ($count  > 0){ 
									?>
										<script>
											alert("Reference Number Already Exist");
										</script>
									<?php
										}
										else{
										$conn->query("insert into voters(id_number, gender, firstname,lastname,year_level,status) VALUES('$id_number', '$gender','$firstname','$lastname','$year_level','Unvoted')");
									?>
									<script>
										alert('Voters Successfully Save');
									</script>
							<?php
									}
								} 
							?>
						  
						
						</div>
						</form>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
<?php include ('script.php');?>
<?php include ('footer.php');?>
</body>

</html>

