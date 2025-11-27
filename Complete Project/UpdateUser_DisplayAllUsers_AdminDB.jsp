<%@page import="java.sql.*" %>
<!DOCTYPE html>
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
    		background-image: url("pics/nur1.jpg");
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
    		text-decoration: underline;
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
            color:#040652;
            font-weight: bold;
            font-family: Bree;
            margin-top: 50px;
            
            text-decoration: underline;
        }
        .name{
            font-weight: bold;
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
                var uname=$('#uname').val();
                var pass=$('#pass').val();
                
                var data=/^[A-Za-z]+$/;
                
                if(fname==""){
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
                    $(".email").after('<span class="error">Please Enter Email Id</span>');
                    $(".error").fadeOut(2000);
                    $("#email").focus();
                }
                else if(uname==""){
                    $(".uname").after('<span class="error">Please Enter Username</span>');
                    $(".error").fadeOut(2000);
                    $("#uname").focus();
                }
                else if(pass==""){
                    $(".pass").after('<span class="error">Please Enter Password</span>');
                    $(".error").fadeOut(2000);
                    $("#pass").focus();
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
		<a href="AdminDashboard.jsp"><p class="db">Go To DashBoard</p></a>
		<a href="LoginPage.jsp"><p class="logout">logout</p></a>
            </div>
	</div>
            
            <%
                
                int idx=Integer.parseInt(request.getParameter("id"));
                
                try{
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
                    
                    Statement st=conn.createStatement();
                    
                    String sql="select * from user where userid="+idx;
                    
                    ResultSet rs=st.executeQuery(sql);
                    
                    
                    while(rs.next()){
            
            %>

	<h1 class="main_heading">Update User</h1>
	<center>
            <form class="well" name="f1" id="form1" method="post" action="UpdateUser_DisplayAllUsers_AdminDB_Process.jsp">
                <input type="hidden" name="id" value="<%=rs.getInt("USERID")%>" >
			<div class="row">
				<div class="form-group col-sm-6">
                                    <label>First Name </label><span class="fname"> </span>
					<input type="text" name="fname" class="form-control" value="<%=rs.getString("FNAME")%>" id="fname">
				</div>
				<div class="form-group col-sm-6">
					<label>Last Name </label><span class="lname"> </span>
                                        <input type="text" name="lname" class="form-control" value="<%=rs.getString("LNAME")%>" id="lname">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Phone Number</label><span class="pnum"> </span>
                                        <input type="number" name="pnum"  class="form-control" value="<%=rs.getString("PNUM")%>" id="pnum">
				</div>
				<div class="form-group col-sm-6">
					<label>Email Id</label><span class="email"> </span>
                                        <input type="email" name="email" class="form-control" value="<%=rs.getString("EMAIL")%>" id="email">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Username</label><span class="uname"> </span>
                                        <input type="text" name="uname" class="form-control" value="<%=rs.getString("UNAME")%>" id="uname">
				</div>
				<div class="form-group col-sm-6">
					<label>Password</label><span class="pass"> </span>
                                        <input type="password" name="pass" class="form-control" value="<%=rs.getString("PASS")%>" id="pass">
				</div>
			</div>
			<div class="form-group row">
				
                                
                                <label class="col-sm-2">Type Of User</label>
                                <div class="radio-inline">
                                    <input required type="radio" name="tou" value="Employee" <%=rs.getString("TOU").equals("Employee")? "checked" : "" %>>Employee  
                                </div>
                                <div class="radio-inline">
                                    <input type="radio" name="tou" value="Agent"<%=rs.getString("TOU").equals("Agent")? "checked" : ""%>>Agent
                                </div>
				      
				
			</div>
                        
			<div class="form-group">
				<center>
					<input class="btn btn-glyaphicon" type="submit" value="Update">
                                        <button type="reset" class="btn btn-glyaphicon">Reset</button>
				</center>
			</div>
		</form>
	</center>

            <%
                    }
                 
                }
                catch(Exception e){
                    System.out.print(e);
                }
                
                
                
            
            %>

</body>
</html>