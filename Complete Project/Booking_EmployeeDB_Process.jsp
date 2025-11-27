<%@page import="java.sql.*" %>

<%
    String date=request.getParameter("date");
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    String pnum=request.getParameter("pnum");
    String email=request.getParameter("email");
    
    String bamt=request.getParameter("bamt");
    String entryby=request.getParameter("entryby");
 
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();

        int i=st.executeUpdate("insert into booking (DATE,FNAME,LNAME,PNUM,EMAIL,BAMT,ENTRYBY) values ('"+date+"','"+fname+"','"+lname+"','"+pnum+"','"+email+"','"+bamt+"','"+entryby+"')");
        
  

%>

<html>
    <body>
        <form method='post' action='DisplayBooking_EmployeeDB.jsp' id="myform" >
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

