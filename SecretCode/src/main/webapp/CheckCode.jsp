<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
    Connection con;
    PreparedStatement ps1, ps2;
    public void jspInit()
    {
        try
        {
            //loading the driver
            Class.forName("com.mysql.jdbc.Driver");
            //establish the connection
            con = DriverManager.getConnection("jdbc:mysql://bcp7-java-db-01.cs4gnvom3jcr.ap-south-1.rds.amazonaws.com/ingits.bcp7javaee?"
					+ "user=ingits&password=bcp7javaee&useSSL=false");
            //create statement object
            ps1 = con.prepareStatement("select * from secretcode where Secret code = ?");
            
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
    %>
    <%
    String param = request.getParameter("s1");
    if(param =="link")
    {
        ResultSet rs = ps2.executeQuery();
        out.println("<table>");
        while(rs.next())
        {
            out.println("<tr>");
            out.println("<td>"+rs.getString(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td");
            out.println("</tr>");
        }
        out.println("</table>");
        rs.close();
    }
    else
    {
        //write jdbc code for authentication
        
        String pass = request.getParameter("pwd");
        //set form data as param value
        
        ps1.setString(2,pass);
        //excute the query
        ResultSet rs = ps1.executeQuery();
        int cnt = 0;
        if (rs.next())
            cnt = rs.getInt(1);
        if(cnt == 0)
            out.println("<b><i><font color=red>Invalid code</fonr></i></b>");
        else
        {
            out.println("<form><fieldset style= width:25%; >");
            out.println("<b><i><font color=red>valid credential..</fonr></i></b><br>");
            out.println("<b><i><font size=6 color=blue>Welcome to My Page</fonr></i></b>");
            out.println("</fieldset></form>");
        }
    }
%>
<%!
    public void jspDestroy()
    {
        try
        {
            //colse
            ps1.close();
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
</body>
</html>