<%@page import="java.sql.*" %>

<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
	</script>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        
        <style>
            .main-heading{
                color: white;
                font-weight: bold;
                font-family: Bree;
                padding: 5px;
            }
            .main-heading-column{
                background-color: #000123;
                color: white;
            }
            .details-heading{
                color: #000123;
                font-weight: bold;
                font-family: Roboto;
                padding: 5px;
            }
            
            th{
                font-weight: normal;
            }
            .brandname{
    		background-color:#000123;
    		padding: 10px;
    		margin-top: -50px;
               
            }
            .brand{
                color:gold;
                font-weight: bold;
                font-family: Bree;
                margin-top: 50px; 
                text-decoration: underline;
            }
            .db{
    		font-family: Roboto;
    		margin-top: 10px;
    		float: right;
    		padding-top: 50px;
    		font-family: bree sarif;
    		font-weight: bold;
    		text-decoration: underline;
                color:#ffffff;
            }
            tr:hover{
                cursor: pointer;
                background-color: #D6EAF8;
            }
            .logout{
    		font-family: Roboto;
    		margin-top: 10px;
    		float: right;
    		padding: 25px;
                padding-top: 50px;
    		color:#ffffff;
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
            .name{
                color: white;
                font-weight: bold;
            }
            #popup{
            padding: 10px;
            font-weight: bold;
            color: limegreen;
            font-size: 17px;
        }
        .col-sm-0{
            padding: 9px;
        }
        .fetchdata{
            width:85%;
            float:right;
        }
        #addclient_id{
                width: 50px;
                color:#000123;
                padding :7px;
                border: 3px solid #000123;
                border-radius: 8px;
                font-weight: bold;
                font-style: italic;
                text-decoration: underline;
                margin-bottom:-5px;
               
        }
        </style>
        
    </head>
    <body onload="myfunction()">
         
        
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
        <div class="container-fluid">
            <h2 class="text-center details-heading">Sales Details</h2>
           
            <div class="text-center" id="popup"></div>
            <br>
            
            <form method="post" action="ClientPayment_EmployeeTask_AdminDB.jsp">
            <div class="row">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-5" style="margin-bottom:8px;">
                    <input type="text" class="form-control fetchdata" name="search_req_data" placeholder="Search Payment">
                </div>
                <div>
                    <button  class="col-sm-0 btn btn-info" name="search_btn">
                        <span class="fa fa-search"></span>
                    </button>
                </div>
            </div>
            </form>
            
            <%
                    String xbtn=request.getParameter("search_btn");
                    
                    String sql;
                    
                    if(xbtn!=null){
                        String fetch_record=request.getParameter("search_req_data");
                        if(fetch_record.equals("")){
                            sql ="select * from payment order by pid Desc";
                        }
                        else{
                            sql ="select * from payment where pid ='"+fetch_record+"' or fname ='"+fetch_record+"' or lname ='"+fetch_record+"' or pfor ='"+fetch_record+"' or pmode ='"+fetch_record+"' or pamt ='"+fetch_record+"' or entryby ='"+fetch_record+"' or date ='"+fetch_record+"' " ;  
                        }
                    }
                    else{
                        sql ="select * from payment order by pid Desc";
                    }
                    
            %>
            <table class="table table-bordered">
                <tr class="main-heading-column" style="background-color:#000123;">
                    <th>Sr No</th>
                    <th>Client Payment Id</th>
                    <th>Payment Date</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Pay for</th>
                    <th>Payment Mode</th>
                    <th>Payment Amount</th>
                    <th>Payment Entry By</th>
                    
                </tr>
               <%
                   try{
                       Class.forName("com.mysql.jdbc.Driver");
                       
                       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
                       
                       Statement st=conn.createStatement();
                       
                       
                       ResultSet rs=st.executeQuery(sql);
                       
                       int x=1001;
                       while(rs.next()){
               %>       
                   
                <tr>
                    <th><%=x%></th>
                    <th><%=rs.getInt("PID")%></th>
                    <th><%=rs.getString("DATE")%></th>
                    <th><%=rs.getString("FNAME")%></th>
                    <th><%=rs.getString("LNAME")%></th>
                    <th><%=rs.getString("PFOR")%></th>
                    <th><%=rs.getString("PMODE")%></th>
                    <th><%=rs.getString("PAMT")%></th>
                    <th><%=rs.getString("ENTRYBY")%></th>
                    
                </tr>
                <%
                        x++;
                        }
                       if(x==1001){
                           out.println("<div class='text-center' id='popup' style='color:red; padding:5px;'>Record Not Found :(  </div>");

                       }
                       conn.close();
                   }
                   catch(Exception e){
                       System.out.print(e);
                   }
                %> 
            </table>
        </div>
    </body>
</html>