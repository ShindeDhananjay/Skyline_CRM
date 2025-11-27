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
    		width: 500px;
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
                
                
                var date=$('#date').val();
                var time=$('#time').val();
                var reqd=$('#reqd').val();
          
                
                
                var data=/^[A-Za-z]+$/;
                
                if(date==""){
                    $(".date").after('<span class="error">Please Enter the Date</span>');
                    $(".error").fadeOut(2000);
                  
                }
                
                
                else if(time==""){
                    $(".time").after('<span class="error">Please Enter the Time</span>');
                    $(".error").fadeOut(2000);
                
                }
                
                else if(reqd==""){
                    $(".reqd").after('<span class="error">Please Enter Request Details</span>');
                    $(".error").fadeOut(2000);
                    $("#reqd").focus();
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
            
	<h1 class="main_heading">Request Raise Form</h1>
	<center>
          
            <form class="well" id="form1" name="f1" method="post" action="RequestRaise_EmployeeDB_Process.jsp">
                        
			<div class="row">
				<div class="form-group col-sm-12">
					<label>Request Date </label> <span class="date"></span>
                                        <input type="date" name="date" class="form-control" id="date" >
				</div>
				
			</div>
                        <div class="row">
				
				<div class="form-group col-sm-12">
					<label>Request Time</label> <span class="time"></span>
                                        <input type="time" name="time" class="form-control" id="time">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-12">
					<label>Request Details</label> <span class="reqd"></span>
                                        <textarea rows="3" cols="3"  class="form-control" id="reqd" name="reqd"></textarea>
                                       
				</div>
			</div>
                        <div class="row">
                               
				<div class="form-group col-sm-12">
					<label>Request Priority</label>
                                        <div class="radio-inline">
                                            <input type="radio" name="reqp" value="High" reaquired >High
                                        </div>
                                        <div class="radio-inline">
                                            <input type="radio" name="reqp" value="Medium" required>Medium
                                        </div>
                                        <div class="radio-inline">
                                            <input type="radio" name="reqp" value="Low" required>Low 
                                        </div>
				</div>
			</div>
                        <div class="row">
                                <div class="form-group col-sm-12">
					<label>Request Raised By</label>
                                        <input style="background: rgba(0, 0, 0, 0.5)"   readonly type="text" value="<%=session.getAttribute("session_uname")%>"  name="entryby" class="form-control">
				</div>
				
			</div>
			
			
			<div class="form-group">
				<center>
					<input class="btn btn-glyaphicon" type="submit" value="Submit Request">
					<input class="btn btn-glyaphicon" type="reset" value="Reset">
				</center>
			</div>
		</form>
	</center>

</body>
</html>