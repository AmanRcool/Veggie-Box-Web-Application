<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales Agent - View Product</title>
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
            <h4>Product List</h4>
            <table class="table table-bordered mt-3">
                <thead>
                    <tr style="background-color: #D98D26">
                        <th>Name</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Color</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        DBCon db = null;
                        try {
                            db = new DBCon();
                            db.stmt = db.con.createStatement();
                            db.rst = db.stmt.executeQuery("SELECT product_id, product_name, product_cat, product_price, product_color FROM product_master");
                            while (db.rst.next()) {
                                String pname = db.rst.getString(2);
                                String pcat = db.rst.getString(3);
                                String pprice = db.rst.getString(4);
                                String pcolor = db.rst.getString(5);
                    %>
                    <tr style="background-color: #cccccc">
                        <td><%= pname %></td>
                        <td><%= pcat %></td>
                        <td><%= pprice %></td>
                        <td><%= pcolor %></td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            out.println(e);
                        }
                    %>
                </tbody>
            </table>
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