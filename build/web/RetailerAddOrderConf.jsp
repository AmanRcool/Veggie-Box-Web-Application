

<%@page import="java.util.Date"%>
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
        DBCon db=null;
        String pid=request.getParameter("pid");
String qty=request.getParameter("qty").trim();
String id=session.getAttribute("id").toString();







       

        int order_no=0;
                try
{
            db = new DBCon();
       db.stmt = db.con.createStatement();
        db.rst = db.stmt.executeQuery("select max(order_no) from order_number");
        if(db.rst.next())
            {
         order_no=db.rst.getInt(1)+1;



         session.setAttribute("order_no", order_no);
}

db.stmt = db.con.createStatement();
        db.rst = db.stmt.executeQuery("select product_price,product_name from product_master where product_id='"+pid+"'");
        db.rst.next();
        int price=db.rst.getInt(1)*Integer.parseInt(qty);
        String pr_name=db.rst.getString(2);

db.pstmt = db.con.prepareStatement("INSERT INTO ORDER_trans(order_no,order_date,product_name,retailer_id,item_no,price)VALUES(?,curdate(),?,?,?,?)");

db.pstmt.setInt(1, order_no);
db.pstmt.setString(2, pr_name);
db.pstmt.setString(3, id);
db.pstmt.setString(4, qty);
db.pstmt.setInt(5, price);

int i=db.pstmt.executeUpdate();
if(i>0)

    {

    response.sendRedirect("ProductOrder.jsp");
    }
           }

        catch(Exception e)
        {
        out.println(e);

            }
        




  
        %>

    </body>
</html>
