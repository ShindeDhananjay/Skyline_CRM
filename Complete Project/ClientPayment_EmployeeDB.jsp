<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
	</script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style type="text/css">
    	@import url("https://fonts.googleapis.com/css2?family=Bree+Serif&family=Caveat:wght@400;700&family=Lobster&family=Monoton&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Playfair+Display+SC:ital,wght@0,400;0,700;1,700&family=Playfair+Display:ital,wght@0,400;0,700;1,700&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&family=Source+Sans+Pro:ital,wght@0,400;0,700;1,700&family=Work+Sans:ital,wght@0,400;0,700;1,700&display=swap");
    </style>
   


    <style type="text/css">
    	body{
    		margin: 0px;
    		background-image: url("pics/main1.jpg");
    		background-size: cover;
    	}
    	.brandname{
    		background-color:transparent;
    		padding: 10px;
    		margin-top: -50px;
    		background: rgba(0, 0, 0, 0.2);
    	}
    	.db{
    		font-family: Roboto;
    		margin-top: 10px;
    		float: right;
    		padding-top: 50px;
    		font-family: bree sarif;
    		font-weight: bold;
                color: white;
    		text-decoration: underline;
    	}
    	.logout{
    		font-family: Roboto;
    		margin-top: 10px;
    		float: right;
    		padding: 25px;
                padding-top: 50px;
    		color: white;
    		font-family: bree sarif;
    		font-weight: bold;
    		text-decoration: underline;
    	}
    	.main_heading{
    		text-align: center;
    		font-family: Bree;
    		font-size: 40px;
    		color: #000123;
    	}
    	
    	
    	form{
    		width: 800px;
    	}
    	.well{
    		background: rgba(0, 0, 0, 0.5);
    		color: white;
    		box-shadow: 1px 2px 10px 2px white;
    	}
    	.form-control{
    		background: rgba(0, 0, 0, 0.5);
    		color: white;
    	}
    	div{
    		text-align: left;
    	}
    	.btn{
    		background: rgba(0, 0, 0, 0.5);
    		color: white;
    		width: 150px;
    	}
    	.btn:hover{
    		color: white;
    		background-color: #000123;
    	}
        .block{
            display: inline-block;
        }
        .floatoption{
            float: right;
        }
        .brand{
            color:gold;
            font-weight: bold;
            font-family: Bree;
            margin-top: 50px;
            
            text-decoration: underline;
        }
        .name{
            font-weight: bold;
            color: white;
        }
        #popup{
            padding: 5px;
            font-weight: bold;
            color: limegreen;
            font-size: 17px;
        }
    .error{
            color:red;
            font-weight: bold;
            
            
        }
    </style>
    <script>
        $(document).ready(function(){
            $('#form1').submit(function(e){
                e.preventDefault(); // stop submit action 
                
                var fname=$('#fname').val();
                var lname=$('#lname').val();
                var pamt=$('#pamt').val();
                var date=$('#date').val();
          
                
                
                var data=/^[A-Za-z]+$/;
                
                if(date==""){
                    $(".date").after('<span class="error">Please Enter the Date</span>');
                    $(".error").fadeOut(2000);
                    
                }
                
                else if(fname==""){
                    $(".fname").after('<span class="error">Please Enter First Name</span>');
                    $(".error").fadeOut(2000);
                    $("#fname").focus();
                }
                else if(!fname.match(data)){
                    $(".fname").after('<span class="error">Please Enter Valid First Name</span>');
                    $(".error").fadeOut(2000);
                    $("#fname").focus();
                }
                else if(lname==""){
                    $(".lname").after('<span class="error">Please Enter Last Name</span>');
                    $(".error").fadeOut(2000);
                    $("#lname").focus();
                }
                else if(!lname.match(data)){
                    $(".lname").after('<span class="error">Please Enter Valid Last Name</span>');
                    $(".error").fadeOut(2000);
                    $("#lname").focus();
                }
                else if(pamt==""){
                    $(".pamt").after('<span class="error">Please Enter Phone Number</span>');
                    $(".error").fadeOut(2000);
                    $("#pamt").focus();
                }
                
                else{
                  
                    $(this).unbind('submit').submit();
                }
            });
        });
        
    </script>
    
	
</head>
<body>
        
	<div class="jumbotron brandname">
            <div class="block">
                <h2 class="brand">Skyline</h2>
                <span class="name">Welcome <%out.print(session.getAttribute("session_uname"));%></span>
            </div>
            <div class="block floatoption">
		<a href="EmployeeDashboard.jsp"><p class="db">Go To DashBoard</p></a>
		<a href="LoginPage.jsp"><p class="logout">logout</p></a>
            </div>
	</div>
            
	<h1 class="main_heading">Client Payment Form</h1>
	<center>
           
            <form class="well" id="form1" name="f1" method="post" action="ClientPayment_EmployeeDB_Process.jsp">
                        <div class="row" style="margin-top:15px;">
                            <div class="form-group col-sm-2"></div>
				<div class="form-group col-sm-2">
                                    <h5 style="font-weight:bold;" class="text-center">Payment Date</h5>
				</div>
				<div class="form-group col-sm-4">
					
                                    <input type="date" name="date" class="form-control" id="date" >
				</div>
                            <div class="form-group col-sm-4"><span class="date"></span></div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
                                    <label>First Name</label><span class='fname'> </span>
                                    <input type="text" name="fname" class="form-control" id="fname">
				</div>
				<div class="form-group col-sm-6">
					<label>Last Name</label><span class='lname'> </span>
                                        <input type="text" name="lname" class="form-control" id="lname">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Payment For</label>
                                        <select name="pfor"  class="form-control" required>
                                            <option value="" selected disabled>---Select Option---</option>
						<option value="5BHK">5BHK</option>
                                                <option value="4BHK">4BHK</option>
						<option value="3BHK">3BHK</option>
                                                <option value="2BHK">2BHK</option>
                                                <option value="1BHK">1BHK</option>
						<option value="1RK">1RK</option>
                                                <option value="Row House">Row House</option>
                                                <option value="Bunglows">Bunglows</option>

					</select>
					
				</div>
				<div class="form-group col-sm-6">
					<label>Payment Mode</label>
                                        <select class="form-control" name="pmode" required>
                                            <option value='' selected disabled>---Select Option---</option>
                                            <option value="Netbanking Payment">NetBanking Payment</option>
                                            <option value="Cheque Payment">Cheque Payment</option>
                                            <option value="UPI Payment">UPI Payment</option>
                                            <option value="Cash Payment">Cash Payment</option>
                                        </select>
				</div>
			</div>
                        <div class="row">
				<div class="form-group col-sm-6">
					<label>Payment Amount</label> <span class='pamt'> </span>
					<input type="number" name="pamt"  class="form-control" id='pamt'>
				</div>
				<div class="form-group col-sm-6">
					<label>Payment Entry By</label>
                                        <input style="background: rgba(0, 0, 0, 0.5)"   readonly type="text" value="<%=session.getAttribute("session_uname")%>"  name="entryby" class="form-control">
				</div>
			</div>
			
			
			<div class="form-group">
				<center>
					<input class="btn btn-glyaphicon" type="submit" name="submit" value="Submit Booking">
					<input class="btn btn-glyaphicon" type="reset" name="reset" value="Reset">
				</center>
			</div>
		</form>
	</center>

</body>
</html>