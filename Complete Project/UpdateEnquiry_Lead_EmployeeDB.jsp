<%@page import="java.sql.*" %>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
	</script>
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
                var pnum=$('#pnum').val();
                var email=$('#email').val();
                var minb=$('#minb').val();
                var maxb=$('#maxb').val();
                var scost=$('#scost').val();
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
                
                
                else if(pnum==""){
                    $(".pnum").after('<span class="error">Please Enter Phone Number</span>');
                    $(".error").fadeOut(2000);
                    $("#pnum").focus();
                }
                else if(pnum.length!=10){
                    $(".pnum").after('<span class="error">Length of Phone Number Must be 10</span>');
                    $(".error").fadeOut(2000);
                    $("#pnum").focus();
                }
                else if(email==""){
                    $(".email").after('<span class="error">Please Enter Email Address</span>');
                    $(".error").fadeOut(2000);
                    $("#email").focus();
                }
                else if(minb==""){
                    $(".minb").after('<span class="error">Please Enter Minimum Budget</span>');
                    $(".error").fadeOut(2000);
                    $("#minb").focus();
                }
                else if(maxb==""){
                    $(".maxb").after('<span class="error">Please Enter Maximum Budget</span>');
                    $(".error").fadeOut(2000);
                    $("#maxb").focus();
                }
                else if(scost==""){
                    $(".scost").after('<span class="error">Please Enter  Suggested Cost</span>');
                    $(".error").fadeOut(2000);
                    $("#scost").focus();
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
		<a href="LoginPage.html"><p class="logout">logout</p></a>
            </div>
	</div>
            

	<h1 class="main_heading">Update Lead Enquiry</h1>
	<center>
            <%
                int idx =Integer.parseInt(request.getParameter("id"));
                
                  try{
                    Class.forName("com.mysql.jdbc.Driver");
        
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
                    Statement st=conn.createStatement();
                    
                    ResultSet rs=st.executeQuery("select * from enquiry where enqid="+idx);
                  
                    
                while(rs.next()){
        
    
            
            %>
            <form class="well" id="form1" name="f1" method="post" action="UpdateEnquiry_Lead_EmployeeDB_Process.jsp">
                <input type="hidden" name="id" value="<%= rs.getInt("ENQID")%>">
			<div class="row">
				<div class="form-group col-sm-6">
					<label>First Name</label><span class="fname"> </span>
                                        <input type="text" name="fname" value="<%= rs.getString("FNAME")%>" class="form-control" id="fname">
				</div>
				<div class="form-group col-sm-6">
					<label>Last Name</label><span class="lname"> </span>
                                        <input type="text" name="lname" value="<%= rs.getString("LNAME")%>"  class="form-control" id="lname">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Phone Number</label><span class="pnum"> </span>
                                        <input type="number" name="pnum" value="<%= rs.getString("PNUM")%>" class="form-control" id="pnum">
				</div>
				<div class="form-group col-sm-6">
					<label>Email Id</label><span class="email"> </span>
                                        <input type="email" name="email" value="<%= rs.getString("EMAIL")%>" class="form-control" id="email">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Minimum Budget</label> <span class="minb"> </span>
                                        <input type="number" name="minb" value="<%= rs.getString("MINB")%>" class="form-control" id="minb">
				</div>
				<div class="form-group col-sm-6">
					<label>Maximum Budget</label> <span class="maxb"> </span>
                                        <input type="number" name="maxb" value="<%= rs.getString("MAXB")%>" class="form-control" id="maxb">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Select Type Of Property</label>
                                        <select class="form-control" name="top" required>
                                            <option value="" <%= rs.getString("TOP").equals("")? "selected" : ""%>>---Select Option---</option>
						<option value="5BHK" <%= rs.getString("TOP").equals("5BHK")? "selected" : ""%>>5BHK</option>
                                                <option value=4BHK"" <%= rs.getString("TOP").equals("4BHK")? "selected" : ""%>>4BHK</option>
						<option value="3BHK" <%= rs.getString("TOP").equals("3BHK")? "selected" : ""%>>3BHK</option>
                                                <option value="2BHK" <%= rs.getString("TOP").equals("2BHK")? "selected" : ""%>>2BHK</option>
                                                <option value="1BHK" <%= rs.getString("TOP").equals("1BHK")? "selected" : ""%>>1BHK</option>
						<option value="1RK" <%= rs.getString("TOP").equals("1RK")? "selected" : ""%>>1RK</option>
                                                <option value="Row House"<%= rs.getString("TOP").equals("Row House")? "selected" : ""%>>Row House</option>
                                                <option value="Bunglows" <%= rs.getString("TOP").equals("Bunglows")? "selected" : ""%>>Bunglows</option>

					</select>
				</div>
                                <div class="form-group col-sm-6">
                                    <label>Suggested Cost</label><span class="scost"> </span>
                                        <input type="number" name="scost" class="form-control" value="<%= rs.getString("SCOST")%>" id="scost">
				</div>
				
			</div>
                        <div class="row">
				<div class="form-group col-sm-12">
					<label >Status</label>
                                        <div class="radio-inline">
                                            <input type="radio" name="status" value="Not Intrested" <%= rs.getString("STATUS").equals("Not Intrested")? "checked" : ""%>required >Not Intrested 
                                        </div>
                                        <div class="radio-inline">
                                            <input type="radio" name="status" value="Lead" <%= rs.getString("STATUS").equals("Lead")? "checked" : ""%> required >Lead
                                        </div>
                                        <div class="radio-inline">
                                            <input type="radio" name="status" value="Follow Up" <%= rs.getString("STATUS").equals("Follow Up")? "checked" : ""%> required >Follow Up
                                        </div>
					
				</div>
			</div>
			<div class="form-group">
				<center>
					<input class="btn btn-glyaphicon" type="submit" name="submit" value="Submit Enquiry">
					<input class="btn btn-glyaphicon" type="reset" name="reset" value="Reset">
				</center>
			</div>
		</form>
            
            <%
                    }
                  }
                  catch(Exception e){
                      System.out.println(e);
                  }
            
            
            
            %>
	</center>

</body>
</html>