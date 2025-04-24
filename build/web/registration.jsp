<%@page contentType="text/html" pageEncoding="UTF-8" import="DB.DbConnection;"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration - Veggie Box</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <style>
        body {
    background-color: #e6f4ea; /* soft leafy green */


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
        .content {
            background-color: white;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
        }
        .btn-primary {
            background-color: #28a745;
            border-color: #28a745;
        }
        .btn-primary:hover {
            background-color: #218838;
            border-color: #1e7e34;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="index.jsp">Veggie Box</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="aboutus.jsp">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="registration.jsp">Registration</a></li>
                <li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact Us</a></li>
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
            <div class="col-md-8 offset-md-2">
                <div class="content">
                    <h3 class="text-center">Join the Veggie Box Family!</h3>
                    <p class="text-center">Welcome to Veggie Box! We are excited to have you on board. By registering, you will gain access to fresh, organic produce delivered right to your doorstep. Please fill out the registration form below to get started.</p>
                    <form name="reg" method="post" action="regConfermation.jsp">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="t1" id="name" placeholder="Enter your name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email ID</label>
                            <input type="email" class="form-control" name="t2" id="email" placeholder="Enter your email" required>
                        </div>
                        <div class="form-group">
                            <label for="contact">Contact Number</label>
                            <input type="text" class="form-control" name="t3" id="contact" placeholder="Enter your contact number" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <input type="text" class="form-control" name="t4" id="address" placeholder="Enter your address" required>
                        </div>
                        <div class="form-group">
                            <label for="city">City</label>
                            <input type="text" class="form-control" name="t5" id="city" placeholder="Enter your city" required>
                        </div>
                        <div class="form-group">
                            <label for="state">State</label>
                            <input type="text" class="form-control" name="t6" id="state" placeholder="Enter your state" required>
                        </div>
                        <div class="form-group">
                            <label for="pincode">Pin Code</label>
                            <input type="text" class="form-control" name="t7" id="pincode" placeholder="Enter your pin code" required>
                        </div>
                        <div class="form-group">
                            <label>Gender</label><br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" value="Male" name="r1" required>
                                <label class="form-check-label">Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" value="Female" name="r1" required>
                                <label class="form-check-label">Female</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" name="t8" id="username" placeholder="Choose a username" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" name="t9" id="password" placeholder="Create a password" required>
                        </div>
                        <div class="form-group">
                            <label for="userType">User  Type</label>
                            <select class="form-control" name="ut" id="userType" required>
                                <option value="" disabled selected>Select User Type</option>
                                <option value="D">Distributor</option>
                                <option value="S">Sales Agent</option>
                                <option value="R">Retailer</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                        <button type="reset" class="btn btn-secondary btn-block">Reset</button>
                    </form>
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