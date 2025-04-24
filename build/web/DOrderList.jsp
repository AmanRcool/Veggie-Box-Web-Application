

<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<% 
    String distributorName = (String) session.getAttribute("us");
%>
<html>
<head>
    <style type="text/css" media="screen">
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(to bottom right, #f7f7f7, #e2e2e2);
            margin: 0;
            padding: 0;
        }
        
        .container {
            width: 950px;
            margin: 20px auto;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .banner {
            width: 100%;
            text-align: center;
            background-color: #004080;
            padding: 10px 0;
        }

        .banner img {
            width: 100%;
            border-bottom: 5px solid #D98D26;
        }

        .navbar {
            background-color: #D98D26;
            display: flex;
            justify-content: space-around;
            padding: 10px 0;
        }

        .navbar a {
            color: #FFFFFF;
            text-decoration: none;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .navbar a:hover {
            background-color: #008000;
            color: #FFFF00;
        }

        .content {
            padding: 20px;
            background-color: #f9f9f9;
            border-top: 5px solid #D98D26;
        }

        h2 {
            color: #004080;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0 auto;
            background-color: #FFFFFF;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #dddddd;
        }

        table th {
            background-color: #D98D26;
            color: white;
            text-transform: uppercase;
            font-size: 14px;
        }

        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .total-row {
            background-color: #D98D26;
            color: white;
            font-weight: bold;
        }

        .footer {
            width: 100%;
            text-align: center;
            background-image: url('images/footer_bg.png');
            background-repeat: repeat-x;
            padding: 10px 0;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="banner">
            <img src="images/banner.png" alt="Banner">
        </div>

        <div class="navbar">
            <a href="index.jsp">Home</a>
            <a href="AddProduct.jsp">Add Product</a>
            <a href="DeleteProduct.jsp">Delete Product</a>
            <a href="SalesAgentApprove.jsp">Sales Agent</a>
            <a href="Retailer.jsp">Retailer</a>
            <a href="DOrderDetail.jsp">Order Detail</a>
            <a href="OrderReport.jsp">Order Report</a>
            <a href="ViewFeedback.jsp">View Feedback</a>
            <a href="CompanyAccoun.jsp">Company Account</a>
            <a href="index.jsp">Sign Out</a>
        </div>

        <div class="content">
            <h2>Product Order List</h2>
            <%
                String order_n = request.getParameter("order_no").toString();
                DBCon db;
                try {
                    db = new DBCon();
                    db.stmt = db.con.createStatement();
                    db.rst = db.stmt.executeQuery("SELECT order_no, order_date, product_name, retailer_id, item_no, price FROM order_trans WHERE order_no='" + order_n + "'");
                    db.rst.next();
            %>
            <table>
                <tr>
                    <th>Order Number</th>
                    <td><%= db.rst.getString(1) %></td>
                </tr>
                <tr>
                    <th>Order Date</th>
                    <td><%= db.rst.getString(2) %></td>
                </tr>
                <tr>
                    <th>Retailer ID</th>
                    <td><%= db.rst.getString(4) %></td>
                </tr>
                <tr class="total-row">
                    <th>Product Name</th>
                    <th>Price/unit</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
                <%
                    int total = 0;
                    while (db.rst.next()) {
                        total += Integer.parseInt(db.rst.getString(6));
                %>
                <tr>
                    <td><%= db.rst.getString(3) %></td>
                    <td><%= Integer.parseInt(db.rst.getString(6)) / 3 %></td>
                    <td><%= db.rst.getString(5) %></td>
                    <td><%= db.rst.getString(6) %></td>
                </tr>
                <%
                    }
                %>
                <tr class="total-row">
                    <td colspan="3">Total</td>
                    <td><%= total %></td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                    <td>
                        <form name="" action="DOrderDetail.jsp" method="post">
                            <input type="submit" value="Cancel">
                        </form>
                    </td>
                </tr>
            </table>
            <%
                } catch (Exception e) {
                    out.println(e);
                }
            %>
        </div>

        <div class="footer">
            <p>Copyright &copy; Reserved to Veggie Box</p>
            <p></p>
        </div>
    </div>
</body>
</html>
