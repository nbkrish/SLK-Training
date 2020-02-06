<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Seller_AddProduct" %>

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
            <a class="navbar-brand" href="SellerHome.aspx">
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
                    
                   
                    <asp:Button ID="btnview" runat="server" Text="View Product" class="btn navbar-btn ml-md-2 bg-white" style="color:black; "/>
                    
                    
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" class="btn navbar-btn ml-md-2 bg-white" style="color:black;"  />
                    
                    
                </div>
            </div> 
        </div>
    </nav>


    <div class="py-5 text-center">
        <div class="container text-left">
            <div class="row">
                <div class="mx-auto col-lg-6 col-10">
                    <h1>Enter Details</h1><br/>
                    
                    
  
    <div class="form-row">
                            <div class="form-group col-md-6"> <label for="tbscid">Sub-category ID</label>
                                <br />
                                <asp:TextBox ID="tbscid" runat="server" class="form-control" placeholder="100"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="vscid" runat="server" ControlToValidate="tbscid" ErrorMessage=<small class="form-text text-danger" Display="Dynamic" >Cannot be Blank</small></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-6"> <label for="tbn">Product Name</label>
                                <br />

                                <asp:TextBox ID="tbpn" runat="server" class="form-control" placeholder="Nokia"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="vtbpn" runat="server" ControlToValidate="tbscid" ErrorMessage=<small class="form-text text-danger" Display="Dynamic" >Cannot be Blank</small></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        
                           
                           
       
                        <div class="form-group"> <label for="tbemail">Product Description</label>
                            <br />
                            <asp:TextBox ID="tbpdesc" runat="server" class="form-control" placeholder="About Product" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            
                            
        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6"> <label for="tbprice">Product Price</label>
                                <br />
                                <asp:TextBox ID="tbprice" runat="server" TextMode="Number" class="form-control" placeholder="Ex: 40000"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="vtbprice" runat="server" ControlToValidate="tbprice" ErrorMessage=<small class="form-text text-danger" Display="Dynamic" >Cannot be Blank</small></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-6"> <label for="tbq">Product Quantity</label>
                                <br />
                                <asp:TextBox ID="tbq" runat="server" TextMode="Password" class="form-control" placeholder="5"></asp:TextBox>
                                <br />
                                  <asp:RequiredFieldValidator ID="vtbq" runat="server" ControlToValidate="tbprice" ErrorMessage=<small class="form-text text-danger" Display="Dynamic" >Cannot be Blank</small></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                      
                             
                            
                                
                                    
                                  
                                            
                         
                                    
          
                                <asp:Label ID="SignUpMsg" runat="server"></asp:Label>
                           
                        
                             <div class="form-group">

                                 <asp:Button type="submit" class="btn btn-primary" ID="btnaddprod" runat="server" Text="Add" OnClick="btnaddprod_Click"  />


                              
                        </div> 
                    
                </div>
            </div>
       </div>
        </div>
  
  </form>
      
    <div class="py-3 bg-dark">
        <div class="container">
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
                        <div class="col-md-12 d-flex align-items-center justify-content-between my-2" >
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
</body>
</html>
