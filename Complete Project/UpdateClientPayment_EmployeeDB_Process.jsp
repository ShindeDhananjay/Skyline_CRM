<%@page import="java.sql.*" %>
<%
    
    String date=request.getParameter("date");
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    String pfor=request.getParameter("pfor");
    String pmode=request.getParameter("pmode");
    
    String pamt=request.getParameter("pamt");
    String entryby=request.getParameter("entryby");
    
    
    int idx=Integer.parseInt(request.getParameter("id"));
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("update payment set date='"+date+"', fname='"+fname+"',lname='"+lname+"',pfor='"+pfor+"',pmode='"+pmode+"',pamt='"+pamt+"',entryby='"+entryby+"' where pid="+idx);
        
%>

<html>
    <body>
        <form method='post' action='DisplayClientPayment_EmployeeDB.jsp' id="myform" >
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


