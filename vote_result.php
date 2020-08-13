<?php include ('head.php');?>
<?php include ('sess.php');?>

<body>

    <div id="row">
        <?php 
			include ('side_bar.php');
			if(ISSET($_POST['submit']))
				{
					if(!ISSET($_POST['pres_id']))
					{
						$_SESSION['pres_id'] = "";
					}
					else
					{
						$_SESSION['pres_id'] = $_POST['pres_id'];
					}
					if(!ISSET($_POST['vice_id']))
					{
						$_SESSION['vice_id'] = "";
					}
					else
					{
						$_SESSION['vice_id'] = $_POST['vice_id'];
					}
					
					if(!ISSET($_POST['secretary_id']))
					{
						$_SESSION['secretary_id'] = "";
					}
					else
					{
						$_SESSION['secretary_id'] = $_POST['secretary_id'];
					}
					if(!ISSET($_POST['financial_id']))
					{
						$_SESSION['financial_id'] = "";
					}
					else
					{
						$_SESSION['financial_id'] = $_POST['financial_id'];
					}
					if(!ISSET($_POST['organizer_id']))
					{
						$_SESSION['organizer_id'] = "";
					}
					else
					{
						$_SESSION['organizer_id'] = $_POST['organizer_id'];
					}
					if(!ISSET($_POST['ladies_id']))
					{
						$_SESSION['ladies_id'] = "";
					}
					else
					{
						$_SESSION['ladies_id'] = $_POST['ladies_id'];
					}
					
					
					
					
				}
		?>
    </div>
			<center>
		
		<div class="col-md-6 col-md-offset-3" >
		  <div class = "alert alert-success">
			<label>PRESIDENT</label>
			<br />
			<?php
				if(!$_SESSION['pres_id'])
					{
						
					}
				else
					{
						$fetch = $conn->query("SELECT * FROM `candidate` WHERE `candidate_id` = '$_SESSION[pres_id]'")->fetch_array();
						echo $fetch['firstname']." ".$fetch['lastname']." "."<img src = 'admin/".$fetch['img']."' style = 'height:80px; width:80px; border-radius:500px;' />"; 
					}
			?>
			</div>
			<div class = "alert alert-success" >
			<label>VICE PRESIDENT</label>
			<br />
			<?php
				if(!$_SESSION['vice_id'])
					{
						
					}
				else
					{
						$fetch = $conn->query("SELECT * FROM `candidate` WHERE `candidate_id` = '$_SESSION[vice_id]'")->fetch_array();
						echo $fetch['firstname']." ".$fetch['lastname']." "."<img src = 'admin/".$fetch['img']."' style = 'height:80px; width:80px; border-radius:500px;' />"; 
					}
			?>
			</div>
			
			<div class = "alert alert-success" >
			<label>GENERAL SECRETARY</label>
			<br />
			<?php
				if(!$_SESSION['secretary_id'])
					{
						
					}
				else
					{
						$fetch = $conn->query("SELECT * FROM `candidate` WHERE `candidate_id` = '$_SESSION[secretary_id]'")->fetch_array();
						echo $fetch['firstname']." ".$fetch['lastname']." "."<img src = 'admin/".$fetch['img']."' style = 'height:80px; width:80px; border-radius:500px;' />"; 
					}
			?>
			
			</div>
			<div class = "alert alert-success">
			
			<label>FINANCIAL SECRETARY</label>
			<br />
			<?php
				if(!$_SESSION['financial_id'])
					{
						
					}
				else
					{
						$fetch = $conn->query("SELECT * FROM `candidate` WHERE `candidate_id` = '$_SESSION[financial_id]'")->fetch_array();
						echo $fetch['firstname']." ".$fetch['lastname']." "."<img src = 'admin/".$fetch['img']."' style = 'height:80px; width:80px; border-radius:500px;' />"; 
					}
			?>
			
			</div>
			<div class = "alert alert-success">
			<label>ORGANIZING SECRETARY</label>
			<br />
			<?php
				if(!$_SESSION['organizer_id'])
					{
						
					}
				else
					{
						$fetch = $conn->query("SELECT * FROM `candidate` WHERE `candidate_id` = '$_SESSION[organizer_id]'")->fetch_array();
						echo $fetch['firstname']." ".$fetch['lastname']." "."<img src = 'admin/".$fetch['img']."' style = 'height:80px; width:80px; border-radius:500px;' />"; 
					}
			?>
			
			</div>
			<div class ="alert alert-success" >
			<label>LADIES WING PRESIDENT</label>
			<br />
			<?php
				if(!$_SESSION['ladies_id'])
					{
						
					}
				else
					{
						$fetch = $conn->query("SELECT * FROM `candidate` WHERE `candidate_id` = '$_SESSION[ladies_id]'")->fetch_array();
						echo $fetch['firstname']." ".$fetch['lastname']." "."<img src = 'admin/".$fetch['img']."' style = 'height:80px; width:80px; border-radius:500px;' />"; 
					}
			?>
			</div>
			
			
			
			
			<br />
			<button type = "submit" data-toggle = "modal" data-target = "#result" class = "btn btn-success" >Submit Final Vote</button>
		</div>
			
	</center>
	<div class="modal fade" id = "result" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
											<h4 class="modal-title" id="myModalLabel">         
												
											</h4>
										</div>
										
										
                                        <div class="modal-body">
										<p class = "alert alert-danger">Are you sure you want to submit your Votes? </p>
                                    </div>
									
									<div class="modal-footer">
								<a href = "submit_vote.php"><button type = "submit" class="btn btn-success"><i class="icon-check"></i>&nbsp;Yes</button></a>
								 <!-- /<a href = "vote.php"><button class="btn btn-danger" aria-hidden="true"><i class="icon-remove icon-large"></i>&nbsp;Back</button></a>-->
									</div>
									</div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
</body>
<?php include ('script.php')?>
</html>

