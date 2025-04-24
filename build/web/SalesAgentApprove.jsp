<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Distributor Dashboard</title>
    <style>
        
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e6f4ea;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        header {
            background: #D98D26;
            color: #FFFFFF;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        nav {
            display: flex;
            justify-content: center;
            background: #D98D26;
            padding: 10px 0;
            flex-wrap: wrap;
        }
        nav a {
            color: #FFFFFF;
            padding: 10px 15px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s;
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
            transition: transform 0.3s;
        }
        .container:hover {
            transform: scale(1.01);
        }
        h2 {
            color: #0000ff;
            text-align: center;
            margin-bottom: 20px;
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
        tr:hover {
            background-color: #e0e0e0;
        }
        footer {
            text-align: center;
            padding: 20px;
            background: #D98D26;
            color: #FFFFFF;
            margin-top: auto;
        }
        @media (max-width: 600px) {
            nav {
                flex-direction: column;
            }
            nav a {
                padding: 10px;
                text-align: center;
                width: 100%;
            }
            .container {
                width: 95%;
            }
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
    <h2>Sales Agent List</h2>
    <table>
        <tr>
            <th>Agent Id</th>
            <th>Name</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Pin</th>
            <th>Contact</th>
            <th>Email</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        <%
            try {
                DBCon db = new DBCon();
                db.stmt = db.con.createStatement();
                db.rst = db.stmt.executeQuery("SELECT registration.id, registration.nname, registration.address, registration.city, registration.state, registration.pin, registration.contact, registration.email, login.approve FROM registration, login WHERE (login.id=registration.id) AND login.tpe='S'");
                while (db.rst.next()) {
                    String agentId = db.rst.getString(1);
                    String name = db.rst.getString(2);
                    String address = db.rst.getString(3);
                    String city = db.rst.getString(4);
                    String state = db.rst.getString(5);
                    String pin = db.rst.getString(6);
                    String contact = db.rst.getString(7);
                    String email = db.rst.getString(8);
                    String status = db.rst.getString(9);
        %>
        <tr>
            <td><%=agentId%></td>
            <td><%=name%></td>
            <td><%=address%></td>
            <td><%=city%></td>
            <td><%=state%></td>
            <td><%=pin%></td>
            <td><%=contact%></td>
            <td><%=email%></td>
            <td>
                <%= status.equals("0") ? "Not Approved" : "Approved" %>
            </td>
            <td>
                <form action="ApprovalConf.jsp" method="post">
                    <input type="hidden" name="id" value="<%=agentId%>"/>
                    <input type="hidden" name="apprvd" value="<%=status%>"/>
                    <input type="submit" value="<%= status.equals("0") ? "Approve" : "Disapprove" %>"/>
                </form>
            </td>
        </tr>
        <%
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='10'>Error: " + e.getMessage() + "</td></tr>");
            }
        %>
    </table>
</div>

<footer>
    <p>&copy; Reserved to Veggie Box</p>
</footer>

</body>
</html>