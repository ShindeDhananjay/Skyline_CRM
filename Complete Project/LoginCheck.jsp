<%@page import="java.sql.*" %>

<%
    
    String unamejsp=request.getParameter("uname");
    String passjsp=request.getParameter("pass");
    String toujsp=request.getParameter("tou");
    
    session.setAttribute("session_uname",unamejsp);
    
    try{
        
    
        Class.forName("com.mysql.jdbc.Driver");
                       
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/skyline_crm","root","");
                       
        Statement st=conn.createStatement();
                       
                     
        ResultSet rs=st.executeQuery("select * from user where uname='"+unamejsp+"' and pass='"+passjsp+"' and tou='"+toujsp+"'");
        
        
        
        if((unamejsp.equals("Admin") && passjsp.equals("Admin@123") && toujsp.equals("Admin")) || (unamejsp.equals("Dhananjay") && passjsp.equals("Dhananjay123") && toujsp.equals("Admin")) ){
            response.sendRedirect("AdminDashboard.jsp");
        } 
        
        else if(rs.next()){
        
            if(rs.getString("UNAME").equals(unamejsp) && rs.getString("PASS").equals(passjsp) && rs.getString("TOU").equals("Employee")){
            
            response.sendRedirect("EmployeeDashboard.jsp");
            }
        
        
        
            else if(rs.getString("UNAME").equals(unamejsp) && rs.getString("PASS").equals(passjsp) && rs.getString("TOU").equals("Agent")){
                response.sendRedirect("AgentDashboard.jsp");
            }
            
            else{
                response.sendRedirect("LoginPageRecheck.jsp");
            }
        }
        
        
        else{
            response.sendRedirect("LoginPageRecheck.jsp");
        }
       
        
    }
    catch(Exception e){
        System.out.print(e);
    }

%>