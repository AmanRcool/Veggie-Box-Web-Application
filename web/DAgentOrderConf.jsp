

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
            String s_id= request.getParameter("id");
            String order_no = request.getParameter("order_no");
            
            String order_dt=null;
                String rt_id=null;
                String amt=null;

           DBCon db = new DBCon();
                
           db.stmt = db.con.createStatement();
            db.rst = db.stmt.executeQuery("SELECT DISTINCT order_date,retailer_id,price FROM order_trans where order_no='" + order_no+ "' ");
            if(db.rst.next())
                {
                 order_dt=db.rst.getString(1);
                 rt_id=db.rst.getString(2);
                 amt=db.rst.getString(3);
                }
            
                           
            db.pstmt = db.con.prepareStatement("INSERT INTO invoice(receipt_id,ammount,order_date,sales_agent_id,retailer_id) VALUES(?,?,?,?,?)");
;
            db.pstmt.setString(1, order_no);
            db.pstmt.setString(2, amt);
            db.pstmt.setString(3, order_dt);
            db.pstmt.setString(4, s_id);
            db.pstmt.setString(5, rt_id);


            int i1 = db.pstmt.executeUpdate();

          db.pstmt=db.con.prepareStatement("INSERT INTO sales_agent_order(order_no,sales_agent_id) VALUES(?,?)");

          db.pstmt.setString(1, order_no);
            db.pstmt.setString(2, s_id);

             int i2 = db.pstmt.executeUpdate();


             db.pstmt = db.con.prepareStatement("update order_number set status=? where order_no=? ");
                    db.pstmt.setString(1, "1");
                    db.pstmt.setInt(2, Integer.parseInt(order_no));
                    int i3 = db.pstmt.executeUpdate();

          //  String msg="Succesfully Inserted";
           
            if (i1 > 0 && i2>0 &&i3>0)
            {





                response.sendRedirect("DistributorHome.jsp?msg=Selected order, Succesfully Dispatched");
                
            } 


        } catch (Exception e) {
            //e.printStackTrace();
           out.println(e);

        }
        %>
    </body>
</html>
