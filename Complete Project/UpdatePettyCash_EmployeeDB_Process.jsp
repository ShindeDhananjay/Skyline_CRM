<%@page import="java.sql.*" %>
<%
    
    String date=request.getParameter("date");
    
    String pname=request.getParameter("pname");
    
    String prate=request.getParameter("prate");
    String pqty=request.getParameter("pqty");
    
    String pbill=request.getParameter("pbill");
    String entryby=request.getParameter("entryby");
    
    int idx=Integer.parseInt(request.getParameter("id"));
   
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("update pettycash_employeedb set date='"+date+"',pname='"+pname+"',prate='"+prate+"',pbill='"+pbill+"',pqty='"+pqty+"',entryby='"+entryby+"' where pid="+idx);
        
%>

<html>
    <body>
        <form method='post' action='DisplayPettyCash_EmployeeDB.jsp' id="myform" >
            <input type="hidden" name="showpopup" value="update"  >
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


