<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Veggie Box</title>
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
            <div class="col-md-12">
                <div class="content">
                    <h3>About Veggie Box</h3>
                    <p>Welcome to Veggie Box, your go-to source for fresh, organic produce delivered right to your doorstep! Our mission is to connect you with local farmers and provide you with the highest quality vegetables and fruits, ensuring that you and your family enjoy the best nature has to offer.</p>
                    
                    <h4>Our Vision</h4>
                    <p>At Veggie Box, we envision a world where everyone has access to fresh, healthy food. We believe in supporting local agriculture and promoting sustainable farming practices that benefit both the environment and our communities.</p>
                    
                    <h4>How It Works</h4>
                    <p>Our supply chain management system is designed to ensure that you receive the freshest produce possible. Here’s how it works:</p>
                    <ul>
                        <li><strong>Sourcing:</strong> We partner with local farmers to source seasonal, organic vegetables and fruits.</li>
                        <li><strong>Harvesting:</strong> Our produce is harvested at the peak of ripeness to ensure maximum flavor and nutrition.</li>
                        <li><strong>Delivery:</strong> We pack your veggie box with care and deliver it directly to your home, ensuring it arrives fresh and ready to enjoy.</li>
                        <li><strong>Customer Satisfaction:</strong> We prioritize your satisfaction and are committed to providing exceptional service and quality.</li>
                    </ul>
                    
                    <h4>Why Choose Veggie Box?</h4>
                    <p>Choosing Veggie Box means you are making a conscious decision to eat healthier and support local farmers. Our boxes are filled with a variety of seasonal produce, allowing you to explore new recipes and enjoy the benefits of a plant-based diet.</p>
                    
                    <h4>Join the Veggie Box Family!</h4>
                    <p>Sign up today to start receiving your weekly veggie box filled with fresh, organic produce. Experience the joy of cooking with fresh ingredients and the convenience of home delivery. Together, let’s make healthy eating easy and accessible!</p>
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