
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



        try {
            String t1= request.getParameter("t1");
            String t2 = request.getParameter("t2");
            String t3 = request.getParameter("t3");
            String t4 = request.getParameter("t4");

           DBCon db = new DBCon();
           out.println("hhh111");
            db.pstmt = db.con.prepareStatement("INSERT INTO product_master(product_name,product_cat,product_price,product_color) VALUES(?,?,?,?)");
;
            db.pstmt.setString(1, t1);
            db.pstmt.setString(2, t2);
            db.pstmt.setString(3, t3);
            db.pstmt.setString(4, t4);


            int i1 = db.pstmt.executeUpdate();

           
          //  String msg="Succesfully Inserted";
           
            if (i1 > 0) {
                response.sendRedirect("AddProduct.jsp?msg=Succesfully Inserted");
                
            } else {
               // response.sendRedirect("registration.jsp");
out.println("not");
            }


        } catch (Exception e) {
            //e.printStackTrace();
           out.println(e);

        }
        %>
    </body>
</html>
