<%@page import="java.sql.*;" %>


<%
    int idx=Integer.parseInt(request.getParameter("id"));
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("delete from booking_agentdb where bid="+idx);
        
       
    }
    catch(Exception e){
        System.out.println(e);
    }
%>

<html>
    <body>
        <form method='post' action='DisplayBooking_AgentDB.jsp' id="myform" >
            <input type="hidden" name="showpopup" value="delete"  >
        </form>
        
        <script>
            window.onload=function(){
                document.getElementById("myform").submit();
            }
        </script>
        
    </body>
</html>
        
        