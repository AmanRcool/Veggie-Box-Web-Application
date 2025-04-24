<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Distributor Home - Veggie Box</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #28a745;
        }
        .navbar a {
            color: white;
        }
        .footer {
            background-color: #28a745;
            color: white;
            padding: 20px 0;
        }
        .banner {
            margin-bottom: 20px;
        }
        .menu {
            background-color: #D98D26;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .menu a {
            color: #FFFFFF;
            padding: 10px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .menu a:hover {
            background-color: #008000;
            color: #FFFF00;
        }
        .welcome-message {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="index.jsp">Veggie Box</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="AddProduct.jsp">Add Product</a></li>
                <li class="nav-item"><a class="nav-link" href="DeleteProduct.jsp">Delete Product</a></li>
<!--                <li class="nav-item"><a class="nav-link" href="SalesAgentApprove.jsp">Sales Agent</a></li>-->
                <li class="nav-item"><a class="nav-link" href="Retailer.jsp">Retailer</a></li>
                <li class="nav-item"><a class="nav-link" href="DOrderDetail.jsp">Order Detail</a></li>
                <li class="nav-item"><a class="nav-link" href="OrderReport.jsp">Order Report</a></li>
                <li class="nav-item"><a class="nav-link" href="ViewFeedback.jsp">View Feedback</a></li>
                <li class="nav-item"><a class="nav-link" href="CompanyAccoun.jsp">Company Account</a></li>
                <li class="nav-item"><a class="nav-link" href="index.jsp">Sign Out</a></li>
            </ul>
        </div>
    </nav>

    <div class="container mt-4">
        <div class="row">
            <div class="col-12 text-center banner">
                <img src="images/banner.png" class="img-fluid" alt="Veggie Box Banner">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="menu">
                    <h4>Welcome, Distributor <%=session.getAttribute("us")%></h4>
                    <p>Manage your products and orders efficiently with Veggie Box. Use the navigation above to access different functionalities.</p>
                </div>
                <div class="welcome-message">
                    <h5>What You Can Do:</h5>
                    <ul>
                        <li>Add new products to the inventory.</li>
                        <li>Delete products that are no longer available.</li>
                        <li>Approve sales agents and manage their orders.</li>
                        <li>View retailer information and manage orders.</li>
                        <li>Check order details and generate reports.</li>
                        <li>View customer feedback to improve service.</li>
                    </ul>
                </div>
            </div>
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