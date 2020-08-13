<?php include ('head.php');?>

<body>

    <div class="container">
        <div class="row">
        <div class="col-md-4 col-md-offset-4">
		  <nav style="text-align: center; background-color: green; padding: 0px; color:white; margin:30px 5px">
          <div class="row">
               <div class="column">
                 <img src="images/KNUST.png" alt="KNUST" class = "img-responsive" height = "150px" width = "150px">
               </div>
               <div class="column">
                <img src="images/GMSA.png" alt="GMSA" class = "img-responsive"  height = "150px" width = "150px" >
               </div>
               <div class="column">
                 <img src="images/EC.png" alt="EC" class = "img-responsive" height = "150px" width = "150px" >
               </div>
            </div>
           <h3 style="text-align: center; position:relative; top:-30px;">GMSA-KNUST Online Voting System - Admin Panel</h3>
          </nav>
          </div>
            <div class="col-md-4 col-md-offset-4">
                <div style ="position:relative; top:-100px;"  class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <center><h3 class="panel-title">Admin Log In</h3></center>
                    </div>
                    <div class="panel-body">
                        <form role="form" method = "post" enctype = "multipart/form-data">
                            <fieldset>
							
                                <div class="form-group">
									<label for = "username" >Username</label>
										<input class="form-control" placeholder="Please Enter your Username" name="username" type="text" autofocus>
                                </div>
								
                                <div class="form-group">
									<label for = "username" >Password</label>
										<input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                             
                              
                                <button class="btn btn-lg btn-success btn-block " name = "login">Login</a>
								
								
                            </fieldset>
							
									<?php include ('login_query.php');?>
                        </form>
                    </div>
                </div>
            </div>
			
			 </div>
        </div>
    </div>

  <?php include ('script.php');?>
  <?php include ('footer.php');?>

</body>

</html>
