<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Distributor - Retailer List</title>
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
        .table th, .table td {
            vertical-align: middle;
        }
        .table thead th {
            background-color: #D98D26;
            color: white;
        }
        .btn-approve {
            background-color: #28a745;
            color: white;
        }
        .btn-disapprove {
            background-color: #dc3545;
            color: white;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="index.jsp">Distributor</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="AddProduct.jsp">Add Product</a></li>
                <li class="nav-item"><a class="nav-link" href="DeleteProduct.jsp">Delete Product</a></li>
                <li class="nav-item"><a class="nav-link" href="SalesAgentApprove.jsp">Sales Agent</a></li>
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
        <h2 class="text-center text-primary">Retailer List</h2>
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
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
                    </thead>
                    <tbody>
                        <%
                            try {
                                DBCon db = new DBCon();
                                db.stmt = db.con.createStatement();
                                db.rst = db.stmt.executeQuery("SELECT registration.id, registration.nname, registration.address, registration.city, registration.state, registration.pin, registration.contact, registration.email, login.approve FROM registration, login WHERE (login.id=registration.id) AND login.tpe='R'");
                                while (db.rst.next()) {
                                    String s1 = db.rst.getString(1);
                                    String s2 = db.rst.getString(2);
                                    String s3 = db.rst.getString(3);
                                    String s4 = db.rst.getString(4);
                                    String s5 = db.rst.getString(5);
                                    String s6 = db.rst.getString(6);
                                    String s7 = db.rst.getString(7);
                                    String s8 = db.rst.getString(8);
                                    String s9 = db.rst.getString(9);
                        %>
                        <tr>
                            <td><%=s1%></td>
                            <td><%=s2%></td>
                            <td><%=s3%></td>
                            <td><%=s4%></td>
                            <td><%=s5%></td>
                            <td><%=s6%></td>
                            <td><%=s7%></td>
                            <td><%=s8%></td>
                            <td>
                                <%= s9.equals("0") ? "Not Approved" : "Approved" %>
                            </td>
                            <td>
                                <form action="ApprovalConf.jsp" method="post">
                                    <input type="hidden" name="id" value="<%=s1%>"/>
                                    <input type="hidden" name="apprvd" value="<%=s9%>"/>
                                    <button type="submit" class="btn <%= s9.equals("0") ? "btn-approve" : "btn-disapprove" %>">
                                        <%= s9.equals("0") ? "Approve" : "Disapprove" %>
                                    </button>
                                </form>
                            </td>
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