<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SellerHome.aspx.cs" Inherits="Seller_SellerHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">


      <style>
        .btn
        {
            background-color:#2874f0;
            color:white;
        }

        #c1{
            height:300px;
            width:300px;
        }

        #c2{
            height:450px;
            width:100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#2874f0;">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fa fa-shopping-cart"></i>
                <b> Flipkart</b>
            </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar17" style="">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse row" id="navbar17">
                <div class="col-sm-6">
                    <ul class="navbar-nav">
                        
                        <div class="input-group-append">
                            <asp:TextBox id="inlineFormInputGroup" runat="server" class="form-control" placeholder="Search" Width="400px"></asp:TextBox>
                            
                                <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-success" style="background-color:green;" />
                            
                               
                            
                        </div>
                    </ul>
                </div>
                <div style="position:absolute;right:2%">
                    
                    <asp:Label ID="Label1" runat="server" Text="" style="padding:5px; color:white;font-size:large"></asp:Label>
                    <asp:Button ID="btnadd" runat="server" Text="Add Product" class="btn navbar-btn ml-md-2 bg-white" style="color:black; " OnClick="btnadd_Click" />
                    <asp:Button ID="btnview" runat="server" Text="View Product" class="btn navbar-btn ml-md-2 bg-white" style="color:black;" OnClick="btnview_Click"/>
                    
                    
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" class="btn navbar-btn ml-md-2 bg-white" style="color:black;" OnClick="btnlogout_Click" />
                    
                    
                </div>
            </div> 
        </div>
    </nav>
    <div class="row" style="">
        <div class="text-center mx-auto col-lg-12 col-12">
            <div id="carousel1" class="carousel slide carousel-fade" data-ride="carousel" data-interval="2500">
                <div class="carousel-inner" id="c2">
                    <div class="carousel-item active"> <img class="d-block " src="https://9to5google.com/wp-content/uploads/sites/4/2020/01/OnePlus-Concept-One-1.jpg?quality=82&strip=all&w=1600"> </div>
                    <div class="carousel-item"> <img class="d-block " src="https://cdn.shopify.com/s/files/1/0115/5332/files/Homepage-Banner_72d91758-b1f4-47b6-bb46-6c96a092c9a9_1600x.jpg?v=1575384564"> </div>
                    <div class="carousel-item"> <img class="d-block " src="https://i.pinimg.com/originals/03/56/f7/0356f7e668ce4d619555479ba71a827f.jpg"> </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel1" data-slide-to="0" class="active"> </li>
                    <li data-target="#carousel1" data-slide-to="1"> </li>
                    <li data-target="#carousel1" data-slide-to="2"> </li>
                </ol>
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
    </div>

  

    

    <div class="py-3 bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-6 p-3 text-white">
                    <h5> <b>About</b> </h5>
                    <ul class="list-unstyled">
                        <li> <a href="#" style="color:#2874f0">Contact Us</a> </li>
                        <li> <a href="#" style="color:#2874f0">About Us</a> </li>
                        <li> <a href="#" style="color:#2874f0">Careers</a> </li>
                        <li> <a href="#" style="color:#2874f0">Flipkart Stories</a> </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-6 p-3 text-white">
                    <h5> <b>Help</b> </h5>
                    <ul class="list-unstyled">
                        <li> <a href="#" style="color:#2874f0">Payments</a> </li>
                        <li> <a href="#" style="color:#2874f0">Shipping</a> </li>
                        <li> <a href="#" style="color:#2874f0">Cancellation and Returns</a> </li>
                        <li> <a href="#" style="color:#2874f0">FAQ</a> </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-6 p-3 text-white">
                    <h5> <b>Policy</b> </h5>
                    <ul class="list-unstyled">
                        <li  > <a href="#" style="color:#2874f0">Return Policy</a> </li>
                        <li> <a href="#" style="color:#2874f0">Terms of Use</a> </li>
                        <li> <a href="#" style="color:#2874f0">Security</a> </li>
                        <li> <a href="#" style="color:#2874f0">Privacy</a> </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-3 p-3 text-white">
                    <h5> <b>Follow us</b> </h5>
                    <div class="row">
                        <div class="col-md-12 d-flex align-items-center justify-content-between my-2"  >
                            <a href="#">
                                <i class="d-block fa fa-facebook-official fa-lg mr-2" style="color:#2874f0"></i>
                            </a> <a href="#">
                                <i class="d-block fa fa-instagram fa-lg mx-2" style="color:#2874f0"></i>
                            </a> <a href="#">
                                <i class="d-block fa fa-google-plus-official fa-lg mx-2" style="color:#2874f0"></i>
                            </a> <a href="#">
                                <i class="d-block fa fa-pinterest-p fa-lg mx-2" style="color:#2874f0"></i>
                            </a> <a href="#">
                                <i class="d-block fa fa-reddit fa-lg mx-2" style="color:#2874f0"></i>
                            </a> <a href="#">
                                <i class="d-block fa fa-twitter fa-lg ml-2" style="color:#2874f0"></i>
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
