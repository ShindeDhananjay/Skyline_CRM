<%@page import="java.sql.*;" %>
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
                text-align: center;
                padding: 10px;
                margin-top: 10px;
    		box-shadow: 1px 2px 10px 2px white;
    	}
    	.form-control{
    		background: rgba(0, 0, 0, 0.5);
    		color: white;
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
        .r1{
            margin-top: 40px;
        }
        h2{
            color: gold;
            font-weight: 300;
        
        }
    </style>
     
	
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

	<h1 class="main_heading">Day Book</h1>
        
        
        
        
        
	<div class="container">
            <div class="row r1">
                <div class="col-sm-4 well">
                    <h2>Payment Received</h2>
                </div>
                <div class="col-sm-4 well">
                    <h2>Expenses</h2>
                </div>
                <div class="col-sm-4 well">
                    <h2>Income</h2>
                </div>
            </div>
            
            
            <%
                
                int cpay=0, tot_received_amt=0  ,epay=0, cashpay=0, loanpay=0, ebooking=0 , abooking=0 , income=0;
                try{
                       Class.forName("com.mysql.jdbc.Driver");
                       
                       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
                       
                       Statement st=conn.createStatement();
                       
                        String sql="select sum(pamt) as payment_amt from payment ";
                       
                       ResultSet rs=st.executeQuery(sql);
                       
       
                       if(rs.next())
                       {
                           cpay=rs.getInt("payment_amt");
                       }
                       
                       // Code for sales Entry for Egent
                       
                       String sql_clamt="select sum(camt) as cash_amt,sum(lamt) as loan_amt  from salesentry_agentdb ";
                       
                       ResultSet rs_clamt=st.executeQuery(sql_clamt);
                       
       
                       if(rs_clamt.next())
                       {
                           cashpay=rs_clamt.getInt("cash_amt");
                           loanpay=rs_clamt.getInt("loan_amt");
                           
                           
                       }
                       
                       // Code for Booking for Employee
                       
                       String sql_ebooking="select sum(bamt) as ebooking_amt from booking";
                       
                       ResultSet rs_ebooking=st.executeQuery(sql_ebooking);
                       
       
                       if(rs_ebooking.next())
                       {
                           ebooking=rs_ebooking.getInt("ebooking_amt");
   
                           
                       }
                       
                       // Code for Booking for Agent
                       
                       String sql_abooking="select sum(bamt) as abooking_amt from booking_agentdb";
                       
                       ResultSet rs_abooking=st.executeQuery(sql_abooking);
                       
       
                       if(rs_abooking.next())
                       {
                           abooking=rs_abooking.getInt("abooking_amt");
   
                           
                       }
                       // code for pettycash
                       
                        String sql_pc="select sum(pbill) as expences_amt from pettycash_employeedb ";
                       
                       ResultSet rs_pc=st.executeQuery(sql_pc);
                       
                       if(rs_pc.next())
                       {
                           epay=rs_pc.getInt("expences_amt");
                       }
                       
       
                        tot_received_amt=ebooking +abooking + cpay + cashpay + loanpay;
                     income=tot_received_amt-epay;
                       
                       
                }
                catch(Exception e){
                    System.out.print(e);
                }
            
            %>
            <div class="row">
                <div class="col-sm-4 well">
                     <% out.print("<h3>Rs. "+tot_received_amt+"/-</h3>");%>
                </div>
                <div class="col-sm-4 well">
                    <% out.print("<h3>Rs. "+epay+"/-</h3>");%>
                </div>
                <div class="col-sm-4 well">
                    <% out.print("<h3>Rs. "+income+"/-</h3>");%>
                </div>
            </div>
    </div>

</body>
</html>