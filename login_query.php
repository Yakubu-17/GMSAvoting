<?php
	require_once 'admin/dbcon.php';
	
	if(isset($_POST['login'])){
		$idno=mysqli_real_escape_string($conn,$_POST['idno']);
		//$gender=$_POST['gender'];

	
		$result = $conn->query("SELECT * FROM voters WHERE id_number = '$idno'  && `gender` = 'Female' && `account` = 'active' && `status` = 'Unvoted'") or die(mysqli_errno());
		$row = $result->fetch_array();
		$voted = $conn->query("SELECT * FROM `voters` WHERE id_number = '$idno'  && `status` = 'Voted'")->num_rows;
		$numberOfRows = $result->num_rows;				
		
		


		$result1 = $conn->query("SELECT * FROM voters WHERE id_number = '$idno'  && `gender` = 'Male' && `account` = 'active' && `status` = 'Unvoted'") or die(mysqli_errno());
		$row1 = $result1->fetch_array();
		$voted1 = $conn->query("SELECT * FROM `voters` WHERE id_number = '$idno'  && `status` = 'Voted'")->num_rows;
		$numberOfRows1 = $result1->num_rows;				
		
		
		if ($numberOfRows > 0){
			session_start();
			$_SESSION['voters_id'] = $row['voters_id'];
			header('location:vote.php');
		}
		if ($numberOfRows1 > 0){
			session_start();
			$_SESSION['voters_id'] = $row1['voters_id'];
			header('location:vote1.php');
		}
		
		if($voted == 1){
			echo " <br><center><font color= 'red' size='3'>Harram!!! You Can Only Vote Once</center></font>";
		}else{
			echo " <br><center><font color= 'red' size='3'>LOGIN ERROR!</center></font>";
		}

		
	}
?>