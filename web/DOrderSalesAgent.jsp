

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
                margin: 0;
                padding: 0;
                background-color: #f5f5f5;
                color: #333;
            }
            header {
                background: linear-gradient(90deg, #ff7e5f, #feb47b);
                padding: 20px;
                text-align: center;
                color: white;
            }
            .navbar {
                display: flex;
                justify-content: center;
                background-color: #333;
                padding: 10px 0;
                border-radius: 5px;
                margin: 20px auto;
                max-width: 950px;
            }
            .navbar ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                display: flex;
                gap: 20px;
            }
            .navbar ul li {
                position: relative;
            }
            .navbar ul li a {
                color: white;
                text-decoration: none;
                padding: 10px 20px;
                display: block;
                transition: background 0.3s, color 0.3s;
                border-radius: 5px;
            }
            .navbar ul li a:hover {
                background-color: #ff7e5f;
                color: #fff;
            }
            .navbar ul li ul {
                display: none;
                position: absolute;
                top: 40px;
                left: 0;
                background-color: #333;
                border-radius: 5px;
                padding: 10px 0;
            }
            .navbar ul li:hover ul {
                display: block;
            }
            .navbar ul li ul li a {
                padding: 10px 20px;
            }
            form {
                max-width: 600px;
                margin: 40px auto;
                padding: 20px;
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
            form select, form input[type="submit"] {
                width: 100%;
                padding: 10px;
                margin-top: 10px;
                border-radius: 5px;
                border: 1px solid #ccc;
            }
            form input[type="submit"] {
                background-color: #ff7e5f;
                color: white;
                border: none;
                cursor: pointer;
                transition: background 0.3s;
            }
            form input[type="submit"]:hover {
                background-color: #feb47b;
            }
            footer {
                background-color: #333;
                color: white;
                text-align: center;
                padding: 20px;
                border-radius: 5px;
                margin: 40px auto 0;
                max-width: 950px;
            }
        </style>
    </head>
    <body>
        <header>
            <h1>Distributor Dashboard</h1>
            <p>Welcome, <%= session.getAttribute("us") %></p>
        </header>
        
        <nav class="navbar">
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
        </nav>

        <form action="DAgentOrderConf.jsp" method="get">
            <label for="id">Sale Agent Id:</label>
            <select name="id" id="id">
                <option value="">Select</option>
                <%
                    String order_no = request.getParameter("order_no");
                    DBCon db = null;
                    try {
                        db = new DBCon();
                        db.stmt = db.con.createStatement();
                        db.rst = db.stmt.executeQuery("SELECT id FROM login WHERE login.tpe='S' AND login.approve='1'");
                        while (db.rst.next()) {
                %>
                <option value="<%=db.rst.getString(1)%>"><%=db.rst.getString(1)%></option>
                <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
            </select>
            <input type="hidden" value="<%=order_no%>" name="order_no">
            <input type="submit" value="Submit">
        </form>

        <footer>
            <p>Copyright &copy; Reserved to Veggie Box</p>
            <p></p>
        </footer>
    </body>
</html>
