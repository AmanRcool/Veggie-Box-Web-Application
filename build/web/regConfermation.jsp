

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
            String name = request.getParameter("t1");
            String emailid = request.getParameter("t2");
            String contc = request.getParameter("t3");
            String addrs = request.getParameter("t4");
            String city = request.getParameter("t5");
            String state=request.getParameter("t6");
            String pin =request.getParameter("t7");
            String gendr = request.getParameter("r1");
            String uname = request.getParameter("t8");
            String pswd = request.getParameter("t9");
            String ut1 = request.getParameter("ut");

 out.println("name   "+name);
out.println("email  "+emailid);
out.println("con    "+contc);
out.println("address  "+addrs);
out.println("state  "+state);
out.println("pin  "+pin);

out.println("gen   "+gendr);
out.println("uname  "+uname);
out.println("password  "+pswd);
            
out.println("type   "+ut1);
           DBCon db = new DBCon();
           out.println("hhh111");
            db.pstmt = db.con.prepareStatement("INSERT INTO registration(nname,email,contact,address,city,state,pin,gender) VALUES(?,?,?,?,?,?,?,?)");
out.println("ok2 ");
            db.pstmt.setString(1, name);
            db.pstmt.setString(2, emailid);
            db.pstmt.setString(3, contc);
            db.pstmt.setString(4, addrs);
            db.pstmt.setString(5, city);
            db.pstmt.setString(6, state);
            db.pstmt.setString(7, pin);
            db.pstmt.setString(8, gendr);

            int i1 = db.pstmt.executeUpdate();

            db.pstmt = db.con.prepareStatement("INSERT INTO login(uname,pswd,tpe) VALUES(?,?,?)");

            db.pstmt.setString(1, uname);
            db.pstmt.setString(2, pswd);
            db.pstmt.setString(3, ut1);
            int i2 = db.pstmt.executeUpdate();
            if (i1 > 0) {
                response.sendRedirect("index.jsp?msg1=You are registered successfully");
                out.println("success");

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
