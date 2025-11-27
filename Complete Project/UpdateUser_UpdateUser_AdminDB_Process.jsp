<%@page import="java.sql.*" %>
<%
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    String pnum=request.getParameter("pnum");
    String email=request.getParameter("email");
    
    String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
    
    String tou=request.getParameter("tou");
    
    int idx=Integer.parseInt(request.getParameter("id"));
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("update user set fname='"+fname+"',lname='"+lname+"',pnum='"+pnum+"',email='"+email+"',uname='"+uname+"',pass='"+pass+"',tou='"+tou+"' where userid="+idx);
        
%>

<html>
    <body>
        <form method='post' action='DisplayUpdateUser_AdminDB.jsp' id="myform" >
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


