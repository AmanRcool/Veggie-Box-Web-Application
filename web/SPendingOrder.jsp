<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales Agent - Pending Orders</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
          background-color: #e6f4ea;
        }
        .navbar {
            background-color: #D98D26;
        }
        .navbar a {
            color: white;
        }
        .footer {
            background-color: #D98D26;
            color: white;
            padding: 20px 0;
        }
        .banner {
            margin-bottom: 20px;
        }
        .message-box {
            border: 1px solid gray;
            padding: 20px;
            background-color: #ffffff;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="index.jsp">Sales Agent</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="SViewProduct.jsp">View Product</a></li>
                <li class="nav-item"><a class="nav-link" href="SPendingOrder.jsp">Pending Order</a></li>
                <li class="nav-item"><a class="nav-link" href="SCompleteOrder.jsp">Complete Order</a></li>
                <li class="nav-item"><a class="nav-link" href="SCompanyProfile.jsp">Company Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="index.jsp">Sign Out</a></li>
            </ul>
        </div>
    </nav>

    <div class="container mt-4">
        <div class="text-center">
            <img src="images/banner.png" class="img-fluid" alt="Banner">
        </div>

        <div class="message-box text-center">
            <h4>Product Order List</h4>
            <form action="SPendingOrderDetail.jsp" method="post">
                <div class="form-group">
                    <label for="order_no">Order Number</label>
                    <select name="order_no" id="order_no" class="form-control">
                        <option value="">Select</option>
                        <%
                            String s_id = session.getAttribute("id").toString();
                            DBCon db;
                            try {
                                db = new DBCon();
                                db.stmt = db.con.createStatement();
                                db.rst = db.stmt.executeQuery("SELECT order_no FROM sales_agent_order WHERE sales_agent_id='" + s_id + "' AND staus='0'");
                                while (db.rst.next()) {
                        %>
                            <option value="<%= db.rst.getString(1) %>"><%= db.rst.getString(1) %></option>
                        <%
                                }
                            } catch (Exception e) {
                                out.println(e);
                            }
                        %>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>

    <footer class="footer text-center">
        <div class="container">
            <span>Copyright &copy; Reserved to Veggie Box</span><br>
            <span></span>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>