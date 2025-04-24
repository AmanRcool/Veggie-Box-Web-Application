
<%@page contentType="text/html" pageEncoding="UTF-8" import="DB.DBCon"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       DBCon db=new DBCon();
       String order_n=session.getAttribute("order_no").toString();
     db.pstmt=db.con.prepareStatement("insert into order_number(order_no) values(?)");
            db.pstmt.setString(1, order_n);

            int i=db.pstmt.executeUpdate();
            if(i>0)
                {
                response.sendRedirect("RetalerHome.jsp?msg=Yor order has been recieved");
                }



        %>
    </body>
</html>
