
<%@page import="DB.DBCon;"%>
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
                    String pid = request.getParameter("id").trim();
                    String ap = request.getParameter("apprvd").trim();
                    String aprvd = null;
                    if (ap != null) {
                        if (ap.equals("0")) {
                            aprvd = "1";
                        } else {
                            aprvd = "0";
                        }
                    }
                    DBCon db = new DBCon();
                    db.pstmt = db.con.prepareStatement("update login set approve=? where id=? ");
                    db.pstmt.setString(1, aprvd);
                    db.pstmt.setString(2, pid);
                    int i = db.pstmt.executeUpdate();
                    if (i > 0) {
                        response.sendRedirect("Retailer.jsp");
                    }



                } catch (Exception e) {
                    out.println(e);
                }
            

        %>
    </body>
</html>
