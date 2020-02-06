<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Account_SignUp" %>

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
</head>
<body>
      
     <div class="py-5 text-center text-white h-100 align-items-center d-flex" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, .60), rgba(0, 0, 0, .60)), url('https://images.yourstory.com/cs/wordpress/2017/07/Flipkart.jpg?fm=png&auto=format');  background-position: center center, center center;  background-size: cover, cover;  background-repeat: repeat, repeat;">
        <div class="container py-5">
            <div class="row">
                <div class="mx-auto col-lg-8 col-md-10">
                    <h1 class="display-3 mb-4">Create an Account</h1>
                    <p class="lead mb-5">We do not share your personal details with anyone.</p>  
                    <a href="Login.aspx" class="btn btn-lg mx-1 btn-outline-primary">Login</a> <a class="btn btn-lg btn-primary mx-1" href="#">Sign Up</a>
                    
                </div>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">   
    <div class="py-5 text-center">
        <div class="container text-left">
            <div class="row">
                <div class="mx-auto col-lg-6 col-10">
                    <h1>Enter Details</h1><br/>
                    
                    
  
    <div class="form-row">
                            <div class="form-group col-md-6"> <label for="tbfn">First Name</label>
                                <br />
                                <asp:TextBox ID="tbfn" runat="server" class="form-control" placeholder="Krishna"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="vname" runat="server" ControlToValidate="tbfn" ErrorMessage=<small class="form-text text-danger" Display="Dynamic" >Name Cannot be Blank</small></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-6"> <label for="tbln">Last Name</label>
                                <br />

                                <asp:TextBox ID="tbln" runat="server" class="form-control" placeholder="Kumar"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group"> <label for="tbphno">Mobile Number</label>
                            <br />
                            <asp:TextBox ID="tbphno" runat="server" class="form-control" placeholder="+91.."></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="vphno" runat="server" ControlToValidate="tbphno" ErrorMessage=<small class="form-text text-danger" Display="Dynamic" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\ -]\s*)?|[0]?)?[6789]\d{9}|(\d[ -]?){10}\d$" >Enter valid Moblie Number</small></asp:RegularExpressionValidator>
        </div>
                        <div class="form-group"> <label for="tbemail">Email</label>
                            <br />
                            <asp:TextBox ID="tbemail" runat="server" class="form-control" placeholder="krish123@example.com"></asp:TextBox>
                            <br />
                            
                            <asp:RegularExpressionValidator ID="vemail" runat="server" ControlToValidate="tbemail"  Display="Dynamic" ValidationExpression="^[a-zA-Z0-9.!#$%&amp;'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$" ErrorMessage=<small class="form-text text-dange">Enter Valid Email ID</small></asp:RegularExpressionValidator>
        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6"> <label for="tbpswd">Password</label>
                                <br />
                                <asp:TextBox ID="tbpswd" runat="server" TextMode="Password" class="form-control" placeholder="••••"></asp:TextBox>
                                <br />
                                <asp:RegularExpressionValidator ID="vpswd" runat="server" ControlToValidate="tbpswd" Display="Dynamic" ErrorMessage="Password must contain 1 Upper case, 1 lower case 1 number and 1 special character" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group col-md-6"> <label for="tbconpswd">Confirm Password</label>
                                <br />
                                <asp:TextBox ID="tbconpswd" runat="server" TextMode="Password" class="form-control" placeholder="••••"></asp:TextBox>
                                <br />
                                <asp:CompareValidator ID="vconpswd" runat="server" ControlToCompare="tbconpswd" ControlToValidate="tbpswd" ErrorMessage=<small class="form-text text-dange" Display="Dynamic" >Password Doesn't Match</small></asp:CompareValidator>
                            </div>
                        </div>
                      
                             
                            
                                
                                    
                                  
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                    </asp:ScriptManager>
                                                    <div class="form-row">   
                                                    <div class="form-group col-md-6">
                                                    <label for="ddstate">
                                                    State</label><br />
                                                    <asp:DropDownList ID="ddstate" runat="server" AutoPostBack="True" class="form-control" OnSelectedIndexChanged="ddstate_SelectedIndexChanged">
                                                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                                        <asp:ListItem>Karnataka</asp:ListItem>
                                                        <asp:ListItem>Kerala</asp:ListItem>
                                                        <asp:ListItem>Maharashtra</asp:ListItem>
                                                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                                                        <asp:ListItem>Telangana</asp:ListItem>
                                                    </asp:DropDownList>
                                                        </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="form23">
                                                        City</label>
                                                        <br />
                                                        <asp:DropDownList ID="ddcity" runat="server" class="form-control">
                                                        </asp:DropDownList>
                                                    </div>
                                                         </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                   
                                 
                                                   
                         
                                    
    <div class="form-group"> <label for="tbaddr">Address</label>
        <br />
        <asp:TextBox ID="tbaddr" runat="server" class="form-control" placeholder="Enter full Address"></asp:TextBox>
        </div>
                        <div class="row">
                            <div class="form-group col-md-6"><label for="tblmark">Landmark</label>
                                <br />
                                <asp:TextBox ID="tblmark" runat="server" class="form-control" placeholder="Ex: BigBazar"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6"> <label for="tbcode">Pincode</label>
                                <br />
                                <asp:TextBox ID="tbpcode" runat="server" class="form-control" placeholder="Ex: 560076"></asp:TextBox>
                                <br />
                                <asp:RegularExpressionValidator ID="vpcode" runat="server"  ControlToValidate="tbpcode" ValidationExpression="([0-9]{6}|[0-9]{3}\s[0-9]{3})" ErrorMessage=<small class="form-text text-dange" Display="Dynamic" >Enter valid Pincode</small></asp:RegularExpressionValidator>
                                <br />
                                <br />
                                <asp:Label ID="SignUpMsg" runat="server"></asp:Label>
                            </div>
                        </div>
                             <div class="form-group">

                                 <asp:Button type="submit" class="btn btn-primary" ID="btnsignup" runat="server" Text="Sign Up" OnClick="btnsignup_Click"  />


                              
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
