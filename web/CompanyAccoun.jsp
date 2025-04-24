

<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <style type="text/css" media="screen">
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #f0f4c3, #8bc34a);
            color: #333;
            background-image: url('images/decorative-bg.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }
        .pd_menu_01 {
            padding: 0;
            margin: 0;
            background: linear-gradient(to right, #004d40, #00796b);
            width: 100%;
            border-bottom: solid 3px #004d40;
            overflow: hidden;
            border-radius: 8px;
        }
        .pd_menu_01 a, .pd_menu_01 a:visited {
            font-family: 'Arial', Helvetica, sans-serif;
            font-weight: bold;
            font-size: 14px;
            color: #ffffff;
            text-decoration: none;
            display: block;
            padding: 15px 20px;
        }
        .pd_menu_01 ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: flex;
        }
        .pd_menu_01 ul li {
            border-right: solid 1px #00796b;
        }
        .pd_menu_01 ul li:hover a {
            background-color: #388e3c;
            color: #ffff8d;
            border-radius: 4px;
        }
        .pd_menu_01 ul li ul {
            display: none;
            position: absolute;
            background-color: #004d40;
            margin-top: 1px;
            border-radius: 4px;
        }
        .pd_menu_01 ul li:hover ul {
            display: block;
        }
        .pd_menu_01 ul li ul li a {
            padding: 10px;
            color: #ffffff;
        }
        .pd_menu_01 ul li ul li a:hover {
            background-color: #c62828;
            color: #ffff8d;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
            border-radius: 8px;
            background-color: rgba(255, 255, 255, 0.8);
        }
        th, td {
            padding: 12px;
            border: solid 1px #388e3c;
            text-align: left;
        }
        th {
            background-color: #2e7d32;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        input[type="submit"] {
            color: white;
            background-color: #2e7d32;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }
        input[type="submit"]:hover {
            background-color: #c62828;
        }
        footer {
            background-color: #004d40;
            color: white;
            padding: 20px;
            text-align: center;
            border-top: solid 3px #00796b;
            border-radius: 8px;
            margin-top: 20px;
        }
        footer span {
            display: block;
            margin: 5px 0;
        }
    </style>
</head>
<body>
<center>
    <div style="width: 950px; margin-top: 20px;">
        <img src="images/banner.png" style="border-radius: 8px;">
    </div>

    <div style="width: 950px; margin-top: 20px;">
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

    <div style="width: 950px; margin-top: 20px; padding: 20px; background-color: rgba(255, 255, 255, 0.8); border-radius: 8px;">
        <%
            DBCon db;
            try {
                db = new DBCon();
                db.stmt = db.con.createStatement();
                db.rst = db.stmt.executeQuery("select receipt_id, order_date, sales_agent_id, retailer_id, ammount from invoice");
                int total = 0;
        %>

        <table>
            <thead>
                <tr>
                    <th colspan="5" style="text-align: center;">Company Account Status</th>
                </tr>
                <tr>
                    <th>Order Number</th>
                    <th>Order Date</th>
                    <th>Sales Agent ID</th>
                    <th>Retailer ID</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while (db.rst.next()) {
                        total += Integer.parseInt(db.rst.getString(5));
                %>
                <tr>
                    <td><%=db.rst.getString(1)%></td>
                    <td><%=db.rst.getString(2)%></td>
                    <td><%=db.rst.getString(3)%></td>
                    <td><%=db.rst.getString(4)%></td>
                    <td><%=db.rst.getString(5)%></td>
                </tr>
                <%
                    }
                %>
                <tr style="font-weight: bold;">
                    <td>Total</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><%=total%></td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: right;">
                        <form name="" action="DistributorHome.jsp" method="post">
                            <input type="submit" value="Cancel">
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

        <%
            } catch (Exception e) {
                // Handle exception
            }
        %>
    </div>

    <footer>
        <span>Copyright &copy; Reserved to Veggie Box</span>
        <span></span>
    </footer>
</center>
</body>
</html>
