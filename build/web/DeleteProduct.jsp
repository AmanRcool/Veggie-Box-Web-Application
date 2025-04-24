
<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <style type="text/css" media="screen">
            body {
                font-family: Arial, Helvetica, sans-serif;
                background: linear-gradient(to right, #f7f7f7, #d7d7d7);
                margin: 0;
                padding: 0;
            }
            
            .pd_menu_01 {
                background: #D98D26;
                border-radius: 8px;
                overflow: hidden;
                margin: 20px 0;
            }
            
            .pd_menu_01 ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
                display: flex;
            }
            
            .pd_menu_01 ul li {
                border-right: solid 1px #004080;
            }
            
            .pd_menu_01 ul li:last-child {
                border-right: none;
            }
            
            .pd_menu_01 ul li a, .pd_menu_01 ul li a:visited {
                color: #FFFFFF;
                text-decoration: none;
                display: block;
                padding: 15px 20px;
                transition: background 0.3s ease, color 0.3s ease;
            }
            
            .pd_menu_01 ul li a:hover {
                background-color: #008000;
                color: #FFFF00;
            }
            
            .content {
                background-color: #fff;
                border-radius: 8px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                padding: 20px;
                margin-bottom: 20px;
            }

            .content table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 10px;
            }

            .content table tr {
                background-color: #f2f2f2;
            }

            .content table tr:nth-child(even) {
                background-color: #e6e6e6;
            }

            .content table th, .content table td {
                padding: 10px;
                text-align: left;
            }

            .content table th {
                background-color: #D98D26;
                color: #FFFFFF;
                text-transform: uppercase;
            }

            .content table td input[type="submit"] {
                background-color: #CA0000;
                color: #FFFF00;
                border: none;
                border-radius: 4px;
                padding: 5px 10px;
                cursor: pointer;
                transition: background 0.3s ease;
            }

            .content table td input[type="submit"]:hover {
                background-color: #008000;
            }

            .footer {
                background: #333;
                color: #fff;
                text-align: center;
                padding: 10px 0;
                border-radius: 8px;
                margin-top: 20px;
            }

            .footer span {
                display: block;
                margin: 5px 0;
            }

        </style>
    </head>
    <body>
        <center>
            <div style="width: 950px;">
                <img src="images/banner.png" style="border-radius: 8px; margin-bottom: 20px;">
            </div>

            <div style="width: 950px;">
                <div class="pd_menu_01">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="AddProduct.jsp">Add Product</a></li>
                        <li><a href="DeleteProduct.jsp">Delete Product</a></li>
                        <li><a href="SalesAgentApprove.jsp">Sales Agent</a></li>
                        <li><a href="Retailer.jsp">Retailer</a></li>
                        <li><a href="DOrderDetail.jsp">Order Detail</a></li>
                        <li><a href="OrderReport.jsp">Order Report</a></li>
                        <li><a href="ViewFeedback.jsp">View Feedback</a></li>
                        <li><a href="CompanyAccoun.jsp">Company Account</a></li>
                        <li><a href="index.jsp">Sign Out</a></li>
                    </ul>
                </div>
            </div>

            <div class="content" style="width: 950px;">
                <table>
                    <tr>
                        <td width="175px">&nbsp;</td>
                        <td width="600px">
                            <form name="" action="#" method="get">
                                <center>
                                    <table border="0" width="100%" cellpadding="1" cellspacing="1">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Category</th>
                                                <th>Price</th>
                                                <th>Color</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                String pid = request.getParameter("pid");
                                                String pname = null;
                                                String pcat = null;
                                                String pprice = null;
                                                String pcolor = null;
                                                String pd = null;
                                                DBCon db = null;
                                                try {
                                                    db = new DBCon();
                                                    db.stmt = db.con.createStatement();

                                                    db.rst = db.stmt.executeQuery("select product_id,product_name,product_cat,product_price,product_color from product_master");
                                                    while (db.rst.next()) {
                                                        pd = db.rst.getString(1);
                                                        pname = db.rst.getString(2);
                                                        pcat = db.rst.getString(3);
                                                        pprice = db.rst.getString(4);
                                                        pcolor = db.rst.getString(5);
                                            %>
                                            <tr>
                                                <td><%=pname%></td>
                                                <td><%=pcat%></td>
                                                <td><%=pprice%></td>
                                                <td><%=pcolor%></td>
                                                <td>
                                                    <input type="hidden" name="p_id" value="<%=pd%>"/>
                                                    <input type="submit" value="Delete"/>
                                                </td>
                                            </tr>
                                            <% } %>
                                        </tbody>
                                    </table>
                                </center>
                            </form>

                            <%
                                } catch (Exception e) {
                                    out.println(e);
                                }
                                String p_id = request.getParameter("p_id");
                                if (p_id != null) {
                                    db.pstmt = db.con.prepareStatement("DELETE FROM product_master WHERE product_id = '" + p_id + "';");
                                    int j = db.pstmt.executeUpdate();
                                    if (j > 0) {
                            %>
                            <p style="color: green; text-align: center;">Successfully Deleted!</p>
                            <%
                                    }
                                }
                            %>
                        </td>
                        <td width="175px">&nbsp;</td>
                    </tr>
                </table>
            </div>

            <div style="width: 950px;">
                <div class="footer">
                    <span>&copy; Reserved to Veggie Box</span>
                    <span></span>
                </div>
            </div>
        </center>
    </body>
</html>
