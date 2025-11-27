<%@page import="java.sql.*" %>

<%
    String date=request.getParameter("date");
    
    String time=request.getParameter("time");
    String reqd=request.getParameter("reqd");
    
    String reqp=request.getParameter("reqp");
    String entryby=request.getParameter("entryby");
 
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();

        int i=st.executeUpdate("insert into requestraise_employeedb (DATE,TIME,REQD,REQP,ENTRYBY) values ('"+date+"','"+time+"','"+reqd+"','"+reqp+"','"+entryby+"') limit 1");
       
  

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

