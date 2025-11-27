<%@page import="java.sql.*" %>

<%
    String date=request.getParameter("date");
    
    String pname=request.getParameter("pname");
    
    String prate=request.getParameter("prate");
    String pqty=request.getParameter("pqty");
    
    String pbill=request.getParameter("pbill");
    String entryby=request.getParameter("entryby");
 
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();

        int i=st.executeUpdate("insert into pettycash_employeedb (DATE,pname,prate,pqty,pbill,entryby) values ('"+date+"','"+pname+"','"+prate+"','"+pqty+"','"+pbill+"','"+entryby+"')");
        
  

%>

<html>
    <body>
        <form method='post' action='DisplayPettyCash_EmployeeDB.jsp' id="myform" >
            <input type="hidden" name="showpopup" value="added"  >
        </form>
        
        <script>
            window.onload=function(){
                document.getElementById("myform").submit();
            }
        </script>
        
    </body>
</html>

<%    
        
    }
    
    catch(Exception e){
        System.out.print(e);
    }
%>

