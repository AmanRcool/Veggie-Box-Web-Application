
<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%



        try {
           String id=session.getAttribute("id").toString();
            String sub = request.getParameter("subject");
            String msg = request.getParameter("massage");


            DBCon db = new DBCon();


            db.pstmt = db.con.prepareStatement("INSERT INTO feedback(retailer_id,sub_msg,msg)VALUES(?,?,?)");

            db.pstmt.setString(1, id);
            db.pstmt.setString(2, sub);
            db.pstmt.setString(3, msg);
            int i = db.pstmt.executeUpdate();
            if (i > 0) {
                response.sendRedirect("RetalerHome.jsp?msg=Your feedback has been sent");
               

            } else {
               // response.sendRedirect("registration.jsp");
out.println("not sent");
            }


        } catch (Exception e) {
            //e.printStackTrace();
           out.println(e);

        }
        %>

    </body>
</html>
