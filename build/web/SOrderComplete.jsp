

<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
                try {
                    String order_no = session.getAttribute("order_no").toString();

                     DBCon db = new DBCon();
                    db.pstmt = db.con.prepareStatement("update sales_agent_order set staus=? where order_no=? ");
                    db.pstmt.setString(1, "1");
                    db.pstmt.setString(2, order_no);
                    int i = db.pstmt.executeUpdate();
                    if (i > 0) {
                        response.sendRedirect("SPendingOrder.jsp");
                    }



                } catch (Exception e) {
                    out.println(e);
                }


        %>
    </body>
</html>
