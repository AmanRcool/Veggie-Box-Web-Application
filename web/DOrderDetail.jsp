
<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<style type="text/css" media="screen">
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f9;
    color: #333;
    margin: 0;
    padding: 0;
}

.container {
    width: 960px;
    margin: 0 auto;
    background-color: #ffffff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    padding: 20px;
}

.header img {
    width: 100%;
    border-radius: 8px 8px 0 0;
}

.navbar {
    background: linear-gradient(135deg, #FF7E5F, #FD3A69);
    border-radius: 8px;
    overflow: hidden;
    margin-bottom: 20px;
}

.navbar ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: space-around;
}

.navbar ul li {
    display: inline;
}

.navbar ul li a {
    display: block;
    padding: 10px 20px;
    color: #ffffff;
    text-decoration: none;
    font-weight: bold;
    border-radius: 5px;
    transition: background 0.3s ease-in-out;
}

.navbar ul li a:hover {
    background-color: #FF506F;
}

.content {
    padding: 20px;
    border-radius: 8px;
    background-color: #f9f9f9;
}

.content h2 {
    color: #333;
    text-align: center;
    margin-bottom: 20px;
}

.content table {
    width: 100%;
    border-collapse: collapse;
    margin: 0 auto;
}

.content table th, .content table td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

.content table th {
    background-color: #FF7E5F;
    color: #ffffff;
}

.content table tr:nth-child(even) {
    background-color: #f2f2f2;
}

.content table tr:hover {
    background-color: #f1c1c1;
}

.content table a {
    color: #FF506F;
    text-decoration: none;
    font-weight: bold;
}

.footer {
    text-align: center;
    padding: 20px;
    background-color: #2d2d2d;
    color: #ffffff;
    border-radius: 0 0 8px 8px;
    margin-top: 20px;
}

.footer span {
    display: block;
}

.footer span:first-child {
    font-weight: bold;
}

.footer span:last-child {
    color: #bbbbbb;
    font-size: 0.8em;
}
</style>

</head>
<body>
<center>
<div class="container">
    <div class="header">
        <img src="images/banner.png" alt="Banner">
    </div>

    <div class="navbar">
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

    <div class="content">
        <h2>Undispatched Orders</h2>
        <table>
            <tr>
                <th>Order Number</th>
                <th>See Detail</th>
                <th>Action</th>
            </tr>
            <%
                try {
                    DBCon db = new DBCon();
                    db.stmt = db.con.createStatement();
                    String s = "0";
                    db.rst = db.stmt.executeQuery("SELECT DISTINCT order_no FROM order_number where status='" + s + "'");
                    while (db.rst.next()) {
                        String s1 = db.rst.getString(1);
            %>
            <tr>
                <td><%= s1 %></td>
                <td><a href="DOrderList.jsp?order_no=<%= s1 %>">Detail</a></td>
                <td><a href="DOrderSalesAgent.jsp?order_no=<%= s1 %>">Allow Sales Agent</a></td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    out.println(e);
                }
            %>
        </table>
    </div>

    <div class="footer">
        <span>Copyright &copy; Reserved to Veggie Box</span>
        <span></span>
    </div>
</div>
</center>
</body>
</html>
