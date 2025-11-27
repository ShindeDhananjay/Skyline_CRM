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
    		background-image:  url("pics/nur1.jpg");
    		background-size: cover;
    	}
    	
    	.main_heading{
    		text-align: center;
    		font-family: bree;
    		font-size: 40px;
    		text-shadow:bottom left gray;
    		text-decoration: underline;
    		color: #000123;

    	}
    	
    	.main{
    		background: rgba(0, 0, 0,0.5);
    		margin: 50px;
    		margin-top: 70px;
    		padding: 30px;
    		box-shadow: 1px 2px 10px 1px #ffffff;
    		border-radius: 5px;
    	}
    	.well{
    		padding: 20px;
    		margin: 10px;
    		text-align: center;
    		background:linear-gradient(to right,white 70%, cyan);
    		border-top-right-radius: 10px;
    		border-bottom-left-radius: 10px;
    		color: #000123;
    		text-decoration: none;


    	}
    	.well:hover{
    		cursor: pointer;
    		color: black;
    		text-decoration: none;
    		background:linear-gradient(to right,cyan 70%, white);
    	}
    	.opns{
    		display: inline-block;
    		width: 250px;
    		padding: 10px;
    		margin: 10px;
    		text-align: center;
    		height: 120px;
                font-size: 15px;
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
         
            font-weight: bold;
            color: limegreen;
            font-size: 17px;
        }
    </style>
    <%
        String idx=request.getParameter("showpopup");
    %>
        <script>
            function myfunction(){
                var myvariable=document.f1.tempvar.value;
                if(myvariable == "update"){
                    popup_update_func(); 
                }
                else if(myvariable == "delete"){
                    popup_delete_func(); 
                }
                else if(myvariable == "added"){
                    popup_added_func(); 
                }
                
            }
            function popup_update_func(){
               document.getElementById('popup').innerHTML="Enquiry Updated Successfully ....  <i class='fa-solid fa-check'></i>"
               setTimeout("vanish()",2500);
              
            }
            function popup_delete_func(){
               document.getElementById('popup').innerHTML="<span style='color:red;'>Enquiry Deleted Successfully ....  <i class='fa-solid fa-check'></i>"
               setTimeout("vanish()",2500);
              
            }
            function popup_added_func(){
               document.getElementById('popup').innerHTML="Enquiry Added Successfully ....  <i class='fa-solid fa-check'></i>"
               setTimeout("vanish()",2500);
              
            }
            function vanish(){
                document.getElementById('popup').innerHTML="";
            }
        </script>
	
</head>
<body onload="myfunction()">
    <form name='f1'>
        <input type="hidden" name='tempvar' value="<%= idx%>">
    </form> 
	
	<div class="jumbotron brandname">
            <div class="block">
                <h2 class="brand">Skyline</h2>
                <span class="name">Welcome  <%out.print( session.getAttribute("session_uname"));%></span>
            </div>
            <div class="block floatoption">
		<a href="LoginPage.jsp"><p class="logout">logout</p></a>
            </div>
	</div>

	<h1 class="main_heading">EMPLOYEE DASHBOARD</h1>

	<div class="container-well">
            <div class="text-center" id="popup"></div>
		<div class="main">
			<center>
				<div class="row">
					<div class="opns">
						<a href="NewEnquiryForm_EmployeeDB.jsp"><div class="well">Enquiry</div></a>
					</div>
                                        <div class="opns">
                                            <a href="Booking_EmployeeDB.jsp"><div class="well">Booking</div></a>
					</div>
                                        <div class="opns">
                                            <a href="ClientPayment_EmployeeDB.jsp"><div class="well">Sales Entry</div></a>
					</div>
                                        <div class="opns">
                                            <a href="PettyCash_EmployeeDB.jsp"><div class="well">Petty Cash</div></a>
					</div>
					
					<div class="opns">
                                            <a href="FollowUp_EmployeeDB.jsp"><div class="well">Follow Up</div></a>
					</div>
					
					
				</div>
				<div class="row">
                                        <div class="opns">
                                            <a href="DisplayAllEnquiries_EmployeeDB.jsp"><div class="well">All Enquiries</div></a>
					</div>
                                        <div class="opns">
                                            <a href="DisplayBooking_EmployeeDB.jsp"><div class="well">Display Booking</div></a>
					</div>
                                        
					<div class="opns">
                                            <a href="DisplayClientPayment_EmployeeDB.jsp"><div class="well">Display Sales</div></a>
					</div>
					
					<div class="opns">
                                            <a href="DisplayPettyCash_EmployeeDB.jsp"><div class="well">Display Petty Cash</div></a>
					</div>
                                        <div class="opns">
                                            <a href="Lead_EmployeeDB.jsp"><div class="well">Lead</div></a>
					</div>
				</div>
                            <div class="row">
                                        
                                        
                                        
					<div class="opns">
                                            <a href="RequestRaise_EmployeeDB.jsp"><div class="well">Request Raised</div></a>
					</div>
					
					<div class="opns">
						<a href="DisplayRequest_EmployeeDB.jsp"><div class="well">Display Request Raised</div></a>
					</div>
                                        
				</div>
			</center>
		</div>

	</div>
</body>
</html>