<%@page import="java.sql.*" %>

<%
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    String pnum=request.getParameter("pnum");
    String email=request.getParameter("email");
    
    String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
    
    String tou=request.getParameter("tou");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("insert into user (fname,lname,pnum,email,uname,pass,tou) values ('"+fname+"','"+lname+"','"+pnum+"','"+email+"','"+uname+"','"+pass+"','"+tou+"')");
%>

<html>
    <body>
        <form method='post' action='DisplayAllUsers_AdminDB.jsp' id="myform" >
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