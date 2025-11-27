<%@page import="java.sql.*" %>
<%
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    String pnum=request.getParameter("pnum");
    String email=request.getParameter("email");
    
    String minb=request.getParameter("minb");
    String maxb=request.getParameter("maxb");
    
    String top=request.getParameter("top");
    String scost=request.getParameter("scost");
    String status=request.getParameter("status");
    
    int idx=Integer.parseInt(request.getParameter("id"));
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("update enquiry set fname='"+fname+"',lname='"+lname+"',pnum='"+pnum+"',email='"+email+"',minb='"+minb+"',maxb='"+maxb+"',top='"+top+"',scost='"+scost+"',status='"+status+"' where enqid="+idx);
        
%>

<html>
    <body>
        <form method='post' action='FollowUp_EmployeeDB.jsp' id="myform" >
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


