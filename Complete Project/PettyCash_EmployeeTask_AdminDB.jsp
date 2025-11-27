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
            tr:hover{
                cursor: pointer;
                background-color: #D6EAF8;
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
               document.getElementById('popup').innerHTML="Petty Cash Entry Updated Successfully ....  <i class='fa-solid fa-check'></i>"
               setTimeout("vanish()",2500);
              
            }
            function popup_delete_func(){
               document.getElementById('popup').innerHTML="<span style='color:red;'>Petty Cash Entry Deleted Successfully ....  <i class='fa-solid fa-check'></i>"
               setTimeout("vanish()",2500);
              
            }
            function popup_added_func(){
               document.getElementById('popup').innerHTML="Petty Cash Entry Added Successfully ....  <i class='fa-solid fa-check'></i>"
               setTimeout("vanish()",2500);
              
            }
            function vanish(){
                document.getElementById('popup').innerHTML="";
            }
            function getconfirmation(){
                var res=confirm("Do you really want to delete the Enquiry?")
                
                if(res==true){
                    window.location.href="DeletePurchaseEntry_EmployeeDB_Process.jsp";
                }
                else{
                    return false;
                }
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
                <span class="name">Welcome <%out.print(session.getAttribute("session_uname"));%></span>
            </div>
            <div class="block floatoption">
		<a href="AdminDashboard.jsp"><p class="db">Go To DashBoard</p></a>
		<a href="LoginPage.jsp"><p class="logout">logout</p></a>
            </div>
	</div>
        <div class="container-fluid">
            <h2 class="text-center details-heading">Petty Cash Details</h2>
            <div class="text-center" id="popup"></div>
            <br>
            <form method="post" action="PettyCash_EmployeeTask_AdminDB.jsp">
            <div class="row">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-5" style="margin-bottom:8px;">
                    <input type="text" class="form-control fetchdata" name="search_req_data" placeholder="Search Booking">
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
                            sql ="select * from pettycash_employeedb order by pid Desc";
                        }
                        else{
                            sql ="select * from pettycash_employeedb where pid ='"+fetch_record+"' or dname ='"+fetch_record+"' or pname ='"+fetch_record+"' or ename ='"+fetch_record+"' or prate ='"+fetch_record+"' or pqty ='"+fetch_record+"' or pbill ='"+fetch_record+"' or date ='"+fetch_record+"'  " ;
                            
                        }
                    }
                    else{
                        sql ="select * from pettycash_employeedb order by pid Desc";
                    }
            %>
            
            <table class="table table-bordered">
                <tr class="main-heading-column" style="background-color:#000123;">
                    <th>Sr No</th>
                    <th>Purchase Id</th>
                    <th>Purchase Date</th>
                    <th>Product Name</th>
                    <th>Product Rate</th>
                    <th>Product Quantity</th>
                    <th>Product Bill</th>
                    <th>Entry By</th>
                
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
                    <th><%=rs.getString("PNAME")%></th>
                    <th><%=rs.getString("PRATE")%></th>
                    <th><%=rs.getString("PQTY")%></th>
                    <th><%=rs.getString("PBILL")%></th>
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