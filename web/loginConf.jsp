

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

            String ty=request.getParameter("type");
            String us=request.getParameter("user");
            String pw=request.getParameter("pswd");
            DBCon db=new DBCon();
       db.stmt = db.con.createStatement();
            db.rst = db.stmt.executeQuery("select pswd,tpe,id,approve from login where uname='" + us + "' ");
            if(db.rst.next())
            {
            String pswd=db.rst.getString(1);
            String type=db.rst.getString(2);
            String id=db.rst.getString(3);
            String appr=db.rst.getString(4);
            session.setAttribute("id", id);

            if(pw.equals(pswd))
            {
             if(type.equals("D")&& ty.equals("D"))
             {
                 session.setAttribute("us", us);
                 response.sendRedirect("DistributorHome.jsp");

               }
 else
     if(type.equals("R")&& ty.equals("R") && appr.equals("1"))
     {

session.setAttribute("us", us);
       response.sendRedirect("RetalerHome.jsp");

     }
 else
     if(type.equals(ty) && appr.equals("1"))
                      {

         session.setAttribute("us", us);
         response.sendRedirect("SalesAgent.jsp");
     }

             else
                 {
                 response.sendRedirect("index.jsp?msg1=   not Approved");
                 }
            }

 else
            {

            response.sendRedirect("index.jsp?msg1=Wrong Password");
 }
        }

           else
            {

            response.sendRedirect("index.jsp?msg1=Incorrect User");
 }
        }


        catch(Exception e)
        {
            out.println(e);
        }


        %>
    </body>
</html>
