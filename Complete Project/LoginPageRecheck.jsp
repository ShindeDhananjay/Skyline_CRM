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
    		background-image: url("pics/log3.jpg");
    		background-size: cover;
    	}
    	.login-container{
    		width: 360px;
    		height: 430px;
    		padding: 10px;
    		border-radius: 8px;
    		border-top-left-radius: 80px;
    		border-bottom-right-radius: 80px;
    		margin-top: 200px;
    		background: rgba(0, 0, 0, 0.5);
    		margin-left: 270px;
    		box-shadow: 1px 0px 20px 1px cyan;
    		
    	}
    	

    	input[type="text"],input[type="password"]{
    		margin: 10px;
    		width: 300px;
    		padding: 8px;
    		text-align: center;
    		border-radius: 5px;
    		border-width: 0px;
    		background: rgba(0, 0, 0, 0.2);
    		color: white;
    		border: 1px solid whitesmoke;
    		font-family: Roboto;
    	}
    	select,input[type="submit"],input[type="reset"]{
    		margin: 10px;
    		width: 312px;
    		padding: 8px;
    		text-align: center;
    		border-radius: 5px;
    		background: rgba(0, 0, 0, 0.2);
    		border-width: 0px;
    		color: white;
    		border: 1px solid whitesmoke;
    		font-family: Roboto;

    	}
    	h1{
    		font-family:Lobster;
    		padding: 12px;
    		margin: 5px;
    		color: white;
    	}
    	.bt:hover{
    		background-color: #000123;
    		color: white;
    		box-shadow: 1px 0px 10px 1px cyan;

    	}
    	input[type="text"]:focus,input[type="password"]:focus,select:focus{
    		border-width: 0px;
    		box-shadow: 1px 0px 10px 1px cyan;
                
    	}
        #display{
            color: red;
            font-weight: bold;
            font-size: 14px;
            text-align: left;
            margin-left: 20px;
        }
        
    </style>
    
    
    <script>
        function Validate(){
            if(document.f1.uname.value==""){
                document.getElementById('display').innerHTML="Please Enter Username *";
                document.f1.uname.focus();
                setTimeout('Vanish()',2000);
                return false;
            }
            else if(document.f1.pass.value==""){
                document.getElementById('display').innerHTML="Please Enter Password *";
                document.f1.pass.focus();
                setTimeout('Vanish()',2000);
                return false;
            }
            
            else if(document.f1.tou.value==0){
                document.getElementById('display').innerHTML="Please Select Type of User *";
                document.f1.tou.focus();
                setTimeout('Vanish()',2000);
                return false;
            }
        }
        
        function Vanish(){
            document.getElementById('display').innerHTML="";
        }
        
        function showValidate(){
            document.getElementById('display').innerHTML="Access Denied *";
            setTimeout('Vanish()',3000);
       
        }
    </script>
</head>

<body onload="showValidate()">
	<div class="main-container">
		<div class="login-container">
                            <form name="f1" method="post" action="LoginCheck.jsp">
					<h1 class="text-center">Skyline Login</h1>
                                        <span id="display"></span>
                                        <center>
                                            <input type="text" name="uname" placeholder="Username" class="form-control">
                                            <input type="password" name="pass" placeholder="Password" class="form-control">
                                        </center>
					<select name="tou">
                                            <option value="0" selected disabled>--Type Of User--</option>
						<option value="Admin">Admin User</option>
						<option value="Employee">Employee User</option>
                                                <option value="Agent">Agent User</option>
					</select>
					<input type="submit" name="login" value="Login" class="bt" onclick="return Validate()">
					<input  type="reset" name="reset" value="Reset" class="bt">
                        </form>
		</div>
	</div>
</body>
</html>