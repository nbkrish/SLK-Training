<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="MainPage_Cart" %>

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
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#2874f0;">
        <div class="container">
            <a class="navbar-brand" href="/MainPage/HomePage.aspx">
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
                    
                    <div class="input-group-append">

                            <asp:Label ID="lblWelcome" runat="server" Text="" style="color:white; padding:10px;"></asp:Label>

                            <button class="btn btn-success" type="button" style="background-color:white; color:black;" >
                                 Cart <i class="fa fa-shopping-cart"></i>
                            </button>
                    
                    
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" class="btn navbar-btn ml-md-2 bg-white" style="color:black;" OnClick ="btnlogout_Click" />
                    
                    
                </div>
            </div> 
        </div>
    </nav>


<%--        <div class="container mt-3">
  <h2>My Cart</h2>
             <asp:ListView ID="Cart" runat="server" RepeatColumns="4" CellSpacing="3" RepeatLayout="Table">
        <ItemTemplate>
       
        <div class="media border p-3">
             <asp:Image class="card-img-top mr-3 mt-3" ImageUrl='<%# Eval("img")%>' runat="server" Height="300" Width="300" />
    <div class="media-body">
      <h4><b><%# Eval("product_name") %></b></h4>
      <div><%# Eval("product_Desc") %></div>
         <div><%# Eval("product_price") %></div>
        
    </div>
  </div>
</div>--%>
    </form>
</body>
</html>
