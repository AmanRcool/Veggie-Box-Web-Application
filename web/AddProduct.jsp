
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product - Logistic Network Management System</title>
        <style type="text/css" media="screen">
            body {
                font-family: 'Arial', sans-serif;
                margin: 0;
                padding: 0;
                background: linear-gradient(to right, #f0f4c3, #8bc34a);
                color: #333;
            }
            .pd_menu_01 {
                padding: 0;
                margin: 0;
                background: linear-gradient(to right, #004d40, #00796b);
                width: 100%;
                border-bottom: solid 3px #004d40;
                overflow: hidden;
                border-radius: 8px;
            }
            .pd_menu_01 a, .pd_menu_01 a:visited {
                font-family: 'Arial', Helvetica, sans-serif;
                font-weight: bold;
                font-size: 14px;
                color: #ffffff;
                text-decoration: none;
                display: block;
                padding: 15px 20px;
            }
            .pd_menu_01 ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
                display: flex;
            }
            .pd_menu_01 ul li {
                border-right: solid 1px #00796b;
            }
            .pd_menu_01 ul li:hover a {
                background-color: #388e3c;
                color: #ffff8d;
                border-radius: 4px;
            }
            .pd_menu_01 ul li ul {
                display: none;
                position: absolute;
                background-color: #004d40;
                margin-top: 1px;
                border-radius: 4px;
            }
            .pd_menu_01 ul li:hover ul {
                display: block;
            }
            .pd_menu_01 ul li ul li a {
                padding: 10px;
                color: #ffffff;
            }
            .pd_menu_01 ul li ul li a:hover {
                background-color: #c62828;
                color: #ffff8d;
            }
            fieldset {
                border: solid 2px #388e3c;
                border-radius: 8px;
                padding: 20px;
                background-color: #e8f5e9;
            }
            legend {
                color: #2e7d32;
                font-size: 22px;
                font-weight: bold;
            }
            input[type="text"] {
                width: 90%;
                padding: 8px;
                border-radius: 4px;
                border: solid 1px #004d40;
            }
            input[type="submit"], input[type="reset"] {
                color: white;
                background-color: #2e7d32;
                border: none;
                padding: 10px 20px;
                border-radius: 4px;
                cursor: pointer;
                font-size: 14px;
            }
            input[type="submit"]:hover, input[type="reset"]:hover {
                background-color: #c62828;
            }
            footer {
                background-color: #004d40;
                color: white;
                padding: 20px;
                text-align: center;
                border-top: solid 3px #00796b;
                border-radius: 8px;
                margin-top: 20px;
            }
            footer span {
                display: block;
                margin: 5px 0;
            }
        </style>
    </head>
    <body>
        <center>
            <div style="width: 950px; margin-top: 20px;">
                <img src="images/banner.png" style="border-radius: 8px;">
            </div>

            <div style="width: 950px; margin-top: 20px;">
                <div class="pd_menu_01">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="AddProduct.jsp">Add Product</a></li>
                        <li><a href="DeleteProduct.jsp">Delete Product</a></li>
                        <li><a href="SalesAgent.jsp">Sales Agent</a></li>
                        <li><a href="Retailer.jsp">Retailer</a></li>
                        <li><a href="DOrderDetail.jsp">Order Detail</a></li>
                        <li><a href="OrderReport.jsp">Order Report</a></li>
                        <li><a href="ViewFeedback.jsp">View Feedback</a></li>
                        <li><a href="CompanyAccoun.jsp">Company Account</a></li>
                        <li><a href="index.jsp">Sign Out</a></li>
                    </ul>
                </div>
            </div>

            <div style="width:950px; border: solid 1px gray; border-radius: 8px; background-color: #ffffff; padding: 20px; margin-top: 20px;">
                <form name="" action="AddProductConf.jsp">
                    <table width="100%">
                        <tr>
                            <td colspan="3" style="text-align: center;">
                                <fieldset>
                                    <legend>Add Product</legend>
                                    <table width="100%">
                                        <tr>
                                            <td style="text-align: left;">Product Name</td>
                                            <td style="text-align: center;">:</td>
                                            <td style="text-align: left;"><input type="text" name="t1"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Product Category</td>
                                            <td style="text-align: center;">:</td>
                                            <td style="text-align: left;"><input type="text" name="t2"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Product Price</td>
                                            <td style="text-align: center;">:</td>
                                            <td style="text-align: left;"><input type="text" name="t3"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Product Color</td>
                                            <td style="text-align: center;">:</td>
                                            <td style="text-align: left;"><input type="text" name="t4"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style="text-align: center;">
                                                <input type="Submit" value="SUBMIT">
                                                <input type="RESET" value="RESET">
                                            </td>
                                        </tr>
                                    </table>
                                </fieldset>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>

            <footer>
                <span>Copyright &copy; Reserved to Veggie Box</span>
                <span></span>
            </footer>
        </center>
    </body>
</html>
