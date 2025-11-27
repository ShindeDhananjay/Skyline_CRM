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
 
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
        
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("insert into salesentry_agentdb (FNAME,LNAME,PNUM,EMAIL,PCARD,ACARD,CAMT,LAMT,DATE,ENTRYBY) values ('"+fname+"','"+lname+"','"+pnum+"','"+email+"','"+pcard+"','"+acard+"','"+camt+"','"+lamt+"','"+date+"','"+entryby+"')");
        
  

%>

<html>
    <body>
        <form method='post' action='DisplaySalesEntry_AgentDB.jsp' id="myform" >
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

