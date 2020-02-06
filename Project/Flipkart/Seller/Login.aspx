<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Seller_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="py-5 text-center text-white h-100 align-items-center d-flex" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, .60), rgba(0, 0, 0, .60)), url('https://images.yourstory.com/cs/wordpress/2017/07/Flipkart.jpg?fm=png&auto=format');  background-position: center center, center center;  background-size: cover, cover;  background-repeat: repeat, repeat;">
        <div class="container py-5">
            <div class="row">
                <div class="mx-auto col-lg-8 col-md-10">
                    <h1 class="display-3 mb-4">Login</h1>
                    <p class="lead mb-5">Get access to your Orders, Wishlist and Recommandation</p> 
                    
                     <a href="#" class="btn btn-lg btn-primary mx-1" style="background-color:#2874f0;">Login</a> <a href="SignUp.aspx" class="btn btn-lg mx-1 btn-outline-primary">Sign Up</a>
                     
                       
                </div>
            </div>
        </div>
    </div>

    <div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
    
   <div class="form-group"> <label>Email address</label>  
       <asp:TextBox ID="tbemail" runat="server" class="form-control" placeholder="Enter email" TextMode="Email"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage=<small class="form-text text-danger" Display="Dynamic">Enter Valid Email ID</small></asp:RegularExpressionValidator>
       
      
                        <div class="form-group"> <label>Password</label>
                            <br />
                            <asp:TextBox ID="tbpswd" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
        </div> 
                        
                            <a href="#">Forgot Password</a><br />
       <asp:Label ID="LoginMsg" runat="server"></asp:Label>
       <br />
                            

        <asp:Button type="Submit" ID="btnLogin" runat="server" Text="Login" class="btn btn-primary" OnClick="btnLogin_Click"/>
                            


                </div>
                <div class="col-md-3">
                </div>
         
            </div>
        </div> 
    </div>
    

    <div class="py-3 bg-dark">
        <div class="container" >
            <div class="row">
                <div class="col-lg-3 col-6 p-3 text-white">
                    <h5> <b>About</b> </h5>
                    <ul class="list-unstyled text-white">
                        <li> <a href="#">Contact Us</a> </li>
                        <li> <a href="#">About Us</a> </li>
                        <li> <a href="#">Careers</a> </li>
                        <li> <a href="#">Flipkart Stories</a> </li> 
                    </ul>
                </div>
                <div class="col-lg-3 col-6 p-3 text-white">
                    <h5> <b>Help</b> </h5>
                    <ul class="list-unstyled text-white">
                        <li> <a href="#">Payments</a> </li>
                        <li> <a href="#">Shipping</a> </li>
                        <li> <a href="#">Cancellation and Returns</a> </li>
                        <li> <a href="#">FAQ</a> </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-6 p-3 text-white">
                    <h5> <b>Policy</b> </h5>
                    <ul class="list-unstyled text-white">
                        <li> <a href="#">Return Policy</a> </li>
                        <li> <a href="#">Terms of Use</a> </li>
                        <li> <a href="#">Security</a> </li>
                        <li> <a href="#">Privacy</a> </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-3 p-3 text-white">
                    <h5> <b>Follow us</b> </h5>
                    <div class="row">
                        <div class="col-md-12 d-flex align-items-center justify-content-between my-2">
                            <a href="#">
                                <i class="d-block fa fa-facebook-official text-primary fa-lg mr-2"></i>
                            </a> <a href="#">
                                <i class="d-block fa fa-instagram text-primary fa-lg mx-2"></i>
                            </a> <a href="#">
                                <i class="d-block fa fa-google-plus-official text-primary fa-lg mx-2"></i>
                            </a> <a href="#">
                                <i class="d-block fa fa-pinterest-p text-primary fa-lg mx-2"></i>
                            </a> <a href="#">
                                <i class="d-block fa fa-reddit text-primary fa-lg mx-2"></i>
                            </a> <a href="#">
                                <i class="d-block fa fa-twitter text-primary fa-lg ml-2"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center text-white">
                    <p class="mb-0 mt-2">© 2007-2020 Flipkart.com.</p>
                </div>
            </div>
        </div>
    </div>
   </form>
</body>
</html>
