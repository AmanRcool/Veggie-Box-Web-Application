
<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <form action="#">
    <table border="0" width="950" cellpadding="1" cellspacing="1" align="center">

                                    <tr style="background-color: #0080FF"  >
                                        <td>Retailer ID</td>
                                        <td>Subject</td>
                                        <td>Message</td>
                                         <td>Action</td></tr>

                                                <%

                                                            DBCon db = null;
                                                            try {
                                                                db = new DBCon();
                                                                db.stmt = db.con.createStatement();

                                                                db.rst = db.stmt.executeQuery("SELECT retailer_id,sub_msg,msg FROM feedback");
                                                                while (db.rst.next()) {



                                                                   String rid = db.rst.getString(1);
                                                                   String sub = db.rst.getString(2);
                                                                   String msg = db.rst.getString(3);


                                                %>

                                        <tr style="background-color: #cccccc">
                                        <td><%=rid%></td>
                                        <td><%=sub%></td>
                                        <td> <%=msg%></td>

                                        <td><input type="hidden" name="rid" value="<%=rid%>"/><input type="submit" value="Remove" /></td>
                                    </tr>

                                    <% }%>
</tbody>
      </table></form>

                                        <%

                                                            } catch (Exception e) {

                                                                out.println(e);
                                                            }
                                        String rid = request.getParameter("rid");
                                        if (rid != null) {
                                              db.pstmt=db.con.prepareStatement("DELETE FROM feedback  WHERE retailer_id = '"+rid+"';");
                                              int j=db.pstmt.executeUpdate();
                                              if(j>0){
                                                  %>
                                                  Successfully Removed !


                                                  <%
                                                  }


                                               }
                            %>

                        </td>
                        <td width="175px">&nbsp;</td>
                    </tr>
</table>

    </body>
</html>
