<%@page import="java.sql.*" %>
<%
    
    String date=request.getParameter("date");
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    String pnum=request.getParameter("pnum");
    String email=request.getParameter("email");
    
    String bamt=request.getParameter("bamt");
    String entryby=request.getParameter("entryby");
    
    int idx=Integer.parseInt(request.getParameter("id"));
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("update booking_agentdb set date='"+date+"', fname='"+fname+"',lname='"+lname+"',pnum='"+pnum+"',email='"+email+"',bamt='"+bamt+"',entryby='"+entryby+"' where bid="+idx);
        
%>

<html>
    <body>
        <form method='post' action='DisplayBooking_AgentDB.jsp' id="myform" >
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


