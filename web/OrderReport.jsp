<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Distributor Dashboard</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to external CSS for better organization -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background: #D98D26;
            color: #FFFFFF;
            padding: 10px 0;
            text-align: center;
        }
        nav {
            display: flex;
            justify-content: center;
            background: #D98D26;
            padding: 10px 0;
        }
        nav a {
            color: #FFFFFF;
            padding: 10px 15px;
            text-decoration: none;
            font-weight: bold;
        }
        nav a:hover {
            background-color: #008000;
            color: #FFFF00;
        }
        .container {
            width: 90%;
            max-width: 950px;
            margin: 20px auto;
            background: #FFFFFF;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #0000ff;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #D98D26;
        }
        th {
            background-color: #D98D26;
            color: #FFFFFF;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        footer {
            text-align: center;
            padding: 20px;
            background: #D98D26;
            color: #FFFFFF;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
    <script>
        function confirmSignOut() {
            return confirm("Are you sure you want to sign out?");
        }
    </script>
</head>
<body>

<header>
    <h1>Distributor Dashboard</h1>
    <p>User: <%=session.getAttribute("us")%></p>
</header>

<nav>
    <a href="index.jsp">Home</a>
    <a href="AddProduct.jsp">Add Product</a>
    <a href="DeleteProduct.jsp">Delete Product</a>
    <a href="SalesAgentApprove.jsp">Sales Agent</a>
    <a href="Retailer.jsp">Retailer</a>
    <a href="DOrderDetail.jsp">Order Detail</a>
    <a href="OrderReport.jsp">Order Report</a>
    <a href="ViewFeedback.jsp">View Feedback</a>
    <a href="CompanyAccoun.jsp">Company Account</a>
    <a href="index.jsp" onclick="return confirmSignOut();">Sign Out</a>
</nav>

<div class="container">
    <h2>Dispatched Orders</h2>
    <table>
        <tr>
            <th>Order Number</th>
            <th>Order Date</th>
            <th>Retailer Id</th>
            <th>Sales Agent Id</th>
            <th>Net Amount</th>
        </tr>
        <%
            try {
                DBCon db = new DBCon();
                db.stmt = db.con.createStatement();
                db.rst = db.stmt.executeQuery("SELECT receipt_id, order_date, retailer_id, sales_agent_id, ammount FROM invoice");
                while (db.rst.next()) {
                    String s1 = db.rst.getString(1);
                    String s2 = db.rst.getString(2);
                    String s3 = db.rst.getString(3);
                    String s4 = db.rst.getString(4);
                    String s5 = db.rst.getString(5);
        %>
        <tr>
            <td><%=s1%></td>
            <td><%=s2%></td>
            <td><%=s3%></td>
            <td><%=s4%></td>
            <td><%=s5%></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='5'>Error: " + e.getMessage() + "</td></tr>");
            }
        %>
    </table>
</div>

<footer>
    <p>&copy; Reserved to Veggie Box</p>
</footer>

</body>
</html>