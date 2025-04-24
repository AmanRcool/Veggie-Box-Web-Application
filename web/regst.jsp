<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
    background-color: #e6f4ea; /* soft leafy green */


        }
        .banner {
            margin-bottom: 20px;
        }
        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container mt-4">
        <div class="text-center">
            <img src="images/banner.png" class="img-fluid banner" alt="Banner"/>
        </div>

        <div class="form-container">
            <form method="post" action="RegServlet1">
                <h4 class="text-center">Registration Form</h4>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="emailid">Email Id</label>
                    <input type="email" id="emailid" name="emailid" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="contc">Contact</label>
                    <input type="text" id="contc" name="contc" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="addrs">Address</label>
                    <input type="text" id="addrs" name="addrs" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="city">City</label>
                    <input type="text" id="city" name="city" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="gendr">Gender</label>
                    <input type="text" id="gendr" name="gendr" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="uname">User  Name</label>
                    <input type="text" id="uname" name="uname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="pswd">Password</label>
                    <input type="password" id="pswd" name="pswd" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="ut">User  Type</label>
                    <select name="type" id="ut" class="form-control" required>
                        <option value="" disabled selected>User Type</option>
                        <option value="D">Distributor</option>
                        <option value="S">Sales Agent</option>
                        <option value="R">Retailer</option>
                    </select>
                </div>
                <div class="form-group text-center">
                    <button type="reset" class="btn btn-secondary">Reset</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>