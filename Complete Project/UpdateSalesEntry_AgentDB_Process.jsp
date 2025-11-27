<%@page import="java.sql.*" %>
<%
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    String pnum=request.getParameter("pnum");
    String email=request.getParameter("email");
    
    String pcard=request.getParameter("pcard");
    String acard=request.getParameter("acard");
    
    String camt=request.getParameter("camt");
    String lamt=request.getParameter("lamt");
    
    String date=request.getParameter("date");
    String entryby=request.getParameter("entryby");
    
    int idx=Integer.parseInt(request.getParameter("id"));
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("update salesentry_agentdb set fname='"+fname+"',lname='"+lname+"',pnum='"+pnum+"',email='"+email+"',pcard='"+pcard+"',acard='"+acard+"',camt='"+camt+"',lamt='"+lamt+"',date='"+date+"' ,entryby='"+entryby+"' where sid="+idx);
        
%>

<html>
    <body>
        <form method='post' action='DisplaySalesEntry_AgentDB.jsp' id="myform" >
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


