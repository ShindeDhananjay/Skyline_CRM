<%@page import="java.sql.*" %>

<%
    String date=request.getParameter("date");
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    String pfor=request.getParameter("pfor");
    String pmode=request.getParameter("pmode");
    
    String pamt=request.getParameter("pamt");
    String entryby=request.getParameter("entryby");
 
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();

        int i=st.executeUpdate("insert into payment (DATE,FNAME,LNAME,PFOR,PMODE,PAMT,ENTRYBY) values ('"+date+"','"+fname+"','"+lname+"','"+pfor+"','"+pmode+"','"+pamt+"','"+entryby+"')");
        
      

%>

<html>
    <body>
        <form method='post' action='DisplayClientPayment_EmployeeDB.jsp' id="myform" >
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

