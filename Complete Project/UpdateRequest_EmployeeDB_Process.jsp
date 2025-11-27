<%@page import="java.sql.*" %>

<%
    String date=request.getParameter("date");
    
    String time=request.getParameter("time");
    String reqd=request.getParameter("reqd");
    
    String reqp=request.getParameter("reqp");
    String entryby=request.getParameter("entryby");
 
    int idx=Integer.parseInt(request.getParameter("id"));
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("update requestraise_employeedb set date='"+date+"',time='"+time+"',reqd='"+reqd+"' ,reqp='"+reqp+"',entryby='"+entryby+"' where rid="+idx);

        
  

%>

<html>
    <body>
        <form method='post' action='DisplayRequest_EmployeeDB.jsp' id="myform" >
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

