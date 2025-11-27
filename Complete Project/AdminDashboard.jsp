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
    		background-image: url("pics/nur1.jpg");
    		background-size: cover;
    	}
    	
    	
    	.main_heading{
    		text-align: center;
    		font-family:Bree;
    		font-size: 40px;
    		text-shadow:bottom left gray;
    		text-decoration: underline;
    		
    		color: #000123;
    		animation-name: color;
    		animation-duration: 2s;
    		animation-iteration-count: 999999999;

    	}
       
        
    	.main{
    		background: rgba(0, 0, 0,0.5);
    		margin: 10px;
    		margin-top: 140px;
    		padding: 30px;
    		box-shadow: 1px 2px 10px 1px #ffffff;
    		border-radius: 5px;
    		width: 1150px;
    	}
    	.main1{
    		background: rgba(0, 0, 0,0.5);
    		margin: 10px;
    		padding: 30px;
    		box-shadow: 1px 2px 10px 1px #ffffff;
    		border-radius: 5px;
    		width: 1150px;
    	}
    	.well{
    		padding: 10px;
    		margin: 10px;
    		text-align: center;
    		background:linear-gradient(to right,white 70%, cyan);
    		border-top-right-radius: 10px;
    		border-bottom-left-radius: 10px;
    		color: black;
    		text-decoration: none;

    	}
    	.well:hover{
    		cursor: pointer;
    		color: white;
    		background:linear-gradient(to right,cyan 70%, white);
    		text-decoration: none;
                color: black;
    	}
    	.headline1{
    		width: 170px;
    		height: 30px;
    		rotate: -30deg;
    		background-color: #000123;
    		color: #ffffff;
    		text-align: center;
    		font-family: bree serif;
    		font-size: 16px;
    		padding: 2px;
    		border-radius:5px;
    		border-top-right-radius: 20px;
    		border-bottom-left-radius: 0px;
    		margin-top: -130px;
    		margin-left: -35px;
    		box-shadow: 2px 2px 10px 2px lightskyblue;
    	}
    	.headline2{
    		width: 180px;
    		height: 30px;
    		rotate: -30deg;
    		background-color: #000123;
    		color: #ffffff;
    		text-align: center;
    		font-family: bree serif;
    		font-size: 16px;
    		padding: 2px;
    		border-radius:5px;
    		border-top-right-radius: 20px;
    		border-bottom-left-radius: 0px;
    		margin-top: -195px;
    		margin-left: -42px;
    		box-shadow: 2px 2px 10px 2px lightskyblue;
    	}
    	.headline3{
    		width: 180px;
    		height: 30px;
    		rotate: -30deg;
    		background-color: #000123;
    		color: #ffffff;
    		text-align: center;
    		font-family: bree serif;
    		font-size: 16px;
    		padding: 2px;
    		border-radius:5px;
    		border-top-right-radius: 20px;
    		border-bottom-left-radius: 0px;
    		margin-top: -190px;
    		margin-left: -45px;
    		box-shadow: 2px 2px 10px 2px lightskyblue;
    	}
    	.abc{
    		font-size: 10px;
    		width: 160px;
    		font-weight: bold;
    	}
        .container{
            margin-top: -30px;
        }
        .brandname{
    		background-color:transparent;
    		padding: 10px;
    		margin-top: -50px;
    		background: rgba(0, 0, 0, 0.2);
    	}
       
    
    	.logout{
    		font-family: Roboto;
    		margin-top: 10px;
    		float: right;
    		padding: 25px;
                padding-top: 50px;
    		
    		font-family: bree sarif;
    		font-weight: bold;
    		text-decoration: underline;
    	}
        .block{
            display: inline-block;
        }
        .floatoption{
            float: right;
        }
        .brand{
            color:#040652;
            font-weight: bold;
            font-family: Bree;
            margin-top: 50px;
            text-decoration: underline;
        }
        .name{
            font-weight: bold;
        }
        #popup{
            padding: 10px;
            font-weight: bold;
            color: limegreen;
            font-size: 17px;
        } 
    </style>
 
</head>
<body onload='myfunction()'>
    
	<div class="jumbotron brandname">
            <div class="block">
                <h2 class="brand">Skyline</h2>
                <span class="name">Welcome  <%out.print( session.getAttribute("session_uname"));%></span>
            </div>
            <div class="block floatoption">
		<a href="LoginPage.jsp"><p class="logout">logout</p></a>
            </div>
	</div>

    <h1 class="main_heading">ADMIN DASHBOARD</h1><br>
	<div class="container">
            <div class="text-center" id="popup"></div>
		<div class="main1 row">
			<div class="col-sm-2">
				<a style="text-decoration:none;" href="NewUserRegistration_AdminDB.jsp"><div class="well">Create User</div></a>
			</div>
			<div class="col-sm-2">
                            <a style="text-decoration:none;" href="DisplayAllUsers_AdminDB.jsp"><div class="well">Display all Users</div></a>
			</div>
			<div class="col-sm-2">
                            <a style="text-decoration:none;" href="DayBook.jsp"><div class="well">Day Book</div></a>
			</div>
                        <div class="col-sm-2">
                            <a style="text-decoration:none;" href="DisplayUpdateUser_AdminDB.jsp"><div class="well">Update User</div></a>
			</div>
			
			<div class="col-sm-2">
                            <a style="text-decoration:none;" href="DisplayEmployee_AdminDB.jsp"><div class="well">Employee User</div></a>
			</div>
			<div class="col-sm-2">
                            <a style="text-decoration:none;" href="DisplayAgent_AdminDB.jsp"><div class="well">Agent User</div></a>
			</div>
		</div>
		<div class="headline1">User Details</div>
	</div>

	<div class="container">
		<div class="main">
			<div class="row">
				<div class="col-sm-2">
                                    <a style="text-decoration:none;" href="5BHK_EmployeeTask_AdminDB.jsp"><div class="well">5BHK</div></a>
				</div>
				<div class="col-sm-2">
                                    <a style="text-decoration:none;" href="4BHK_EmployeeTask_AdminDB.jsp"><div class="well">4BHK</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="3BHK_EmployeeTask_AdminDB.jsp"><div class="well">3BHK</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="2BHK_EmployeeTask_AdminDB.jsp"><div class="well">2BHK</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="1BHK_EmployeeTask_AdminDB.jsp"><div class="well">1BHK</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="1RK_EmployeeTask_AdminDB.jsp"><div class="well">1RK</div></a>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="Row_House_EmployeeTask_AdminDB.jsp"><div class="well">Row House</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="Bunglows_EmployeeTask_AdminDB.jsp"><div class="well">Bunglows</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="Booking_EmployeeTask_AdminDB.jsp"><div class="well">Booking</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="ClientPayment_EmployeeTask_AdminDB.jsp"><div class="well">Display Sales</div></a>
				</div>
                                <div class="col-sm-2">
					<a style="text-decoration:none;" href="RequestRaise_EmployeeTask_AdminDB.jsp"><div class="well"> Request Raised</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="PettyCash_EmployeeTask_AdminDB.jsp"><div class="well">Display PettyCash</div></a>
				</div>
			</div>
		</div>
		<div class="headline2">Employee Task Details</div>

	</div>

	<div class="container">
		<div class="main">
			<div class="row">
				<div class="col-sm-2">
                                    <a style="text-decoration:none;" href="5BHK_AgentTask_AdminDB.jsp"><div class="well">5BHK</div></a>
				</div>
				<div class="col-sm-2">
                                    <a style="text-decoration:none;" href="4BHK_AgentTask_AdminDB.jsp"><div class="well">4BHK</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="3BHK_AgentTask_AdminDB.jsp"><div class="well">3BHK</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="2BHK_AgentTask_AdminDB.jsp"><div class="well">2BHK</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="1BHK_AgentTask_AdminDB.jsp"><div class="well">1BHK</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="1RK_AgentTask_AdminDB.jsp"><div class="well">1RK</div></a>
				</div>
			</div>
			<div class="row">
                                <div class="col-sm-1"></div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="Row_House_AgentTask_AdminDB.jsp"><div class="well">Row House</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="Bunglows_AgentTask_AdminDB.jsp"><div class="well">Bunglows</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="Booking_AgentTask_AdminDB.jsp"><div class="well">Booking</div></a>
				</div>
                                <div class="col-sm-2">
                                    <a style="text-decoration:none;" href="DisplaySales_AgentTask_AdminDB.jsp"><div class="well">Display Sales</div></a>
				</div>
				<div class="col-sm-2">
					<a style="text-decoration:none;" href="RequestRaise_AgentTask_AdminDB.jsp"><div class="well"> Request Raised</div></a>
				</div>
				
				<div class="col-sm-1"></div>

			</div>
		</div>
		<div class="headline3">Agent Task Details</div>

	</div>
</body>
</html>