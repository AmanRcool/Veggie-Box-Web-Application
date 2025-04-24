<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veggie Box - Fresh Produce Delivered</title>
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
        .login-panel {
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .banner {
            margin-bottom: 20px;
        }
        .card {
            border: none;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-secondary {
            background-color: #6c757d;
            border: none;
        }
        .btn-secondary:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="index.jsp">Veggie Box</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
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
            <div class="col-md-4">
                <div class="card login-panel">
                    <div class="card-body">
                        <h3 class="text-center">Login to Your Veggie Box</h3>
                        <form name="indexform" method="post" action="loginConf.jsp">
                            <div class="form-group">
                                <label for="type">Login Type</label>
                                <select class="form-control" name="type" id="type" required>
                                    <option value="" disabled selected>Select Login Type</option>
                                    <option value="D">Distributor</option>
                                    <option value="S">Sales Agent</option>
                                    <option value="R">Retailer</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="user">User  Name</label>
                                <input type="text" class="form-control" name="user" id="user" required>
                            </div>
                            <div class="form-group">
                                <label for="pswd">Password</label>
                                <input type="password" class="form-control" name="pswd" id="pswd" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Submit</button>
                            <button type="reset" class="btn btn-secondary btn-block">Reset</button>
                            <div class="mt-3 text-center">
                                <a href="#" style="color:#0033CC;">Forgot Password?</a>
                            </div>
                            <div class="mt-2 text-center">
                                <span style="color:#FF0000;">New User?</span>
                                <a href="registration.jsp" style="color:#0033CC;"> Register here</a>
                            </div>
                            <div class="mt-2 text-danger text-center">
                                <%
                                    String msg1 = request.getParameter("msg1");
                                    if (msg1 != null) {
                                        out.println(msg1);
                                    }
                                %>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h3>Welcome to Veggie Box</h3>
                <p>At Veggie Box, we believe in the power of fresh, organic produce. Our mission is to deliver the best seasonal vegetables and fruits right to your doorstep, ensuring you have access to the healthiest options available.</p>
                <p>Our veggie boxes are curated with care, featuring a variety of locally sourced, organic vegetables that are picked at the peak of freshness. Whether you're a seasoned chef or just starting your culinary journey, our boxes provide you with everything you need to create delicious, healthy meals.</p>
                <h4>Why Choose Veggie Box?</h4>
                <ul>
                    <li>Freshness Guaranteed: We source our produce from local farms to ensure maximum freshness.</li>
                    <li>Convenience: Enjoy the ease of having fresh vegetables delivered to your home.</li>
                    <li>Healthy Eating: Our boxes encourage you to eat more fruits and vegetables, promoting a healthier lifestyle.</li>
                    <li>Support Local Farmers: By choosing Veggie Box, you are supporting local agriculture and sustainable farming practices.</li>
                </ul>
                <h4>How to Get Started</h4>
                <p>Simply register for an account, choose your preferred veggie box size, and enjoy the convenience of fresh produce delivered to your door every week!</p>
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