<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AfterSearch.aspx.cs" Inherits="MainPage_AfterSearch" %>

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

        .dropbtn {
    height:57px;
  background-color: white;
  color: black;
  padding: 16px;
  font-size: 16px;
  border: none;
}
 
.dropdown {
  position: relative;
  display: inline-block;
  z-index:100
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: white;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #f1f1f1;}
</style>
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
                            <asp:TextBox id="tbsearch" runat="server" class="form-control" placeholder="Search" Width="400px"></asp:TextBox>
                            
                                <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-success" style="background-color:green;" OnClick="Button1_Click" />
                            
                               
                            
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


         <%--Dropdown--%>
              <nav class="navbar navbar-expand-sm" style="padding:0px">
       <div style="margin-left:20%;">
          
<div class="nav-item dropdown ">
  <button class="dropbtn">Electronics</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">MI</a>
    <a class="dropdown-item" href="#">Samsung</a>
   <a class="dropdown-item" href="#">Oppo</a>
    <a class="dropdown-item" href="#">vivo</a>   
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">TV and Appliances</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">MI TV</a>
    <a class="dropdown-item" href="#">Samsung</a>
    <a class="dropdown-item" href="#">Onida</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Men</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Link 1</a>
    <a class="dropdown-item" href="#">Link 2</a>
    <a class="dropdown-item" href="#">Link 3</a>
  </div>
</div>   
<div class="dropdown">
  <button class="dropbtn">Women</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Link 1</a>
    <a class="dropdown-item" href="#">Link 2</a>
    <a class="dropdown-item" href="#">Link 3</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Baby & Kids</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Link 1</a>
    <a class="dropdown-item" href="#">Link 2</a>
    <a class="dropdown-item" href="#">Link 3</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Home & Furniture</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Link 1</a>
    <a class="dropdown-item" href="#">Link 2</a>
    <a class="dropdown-item" href="#">Link 3</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Sports,Books & More</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Link 1</a>
    <a class="dropdown-item" href="#">Link 2</a>
    <a class="dropdown-item" href="#">Link 3</a>
  </div>
</div>
           </div>
</nav>

        <div class="row">
        <asp:ListView ID="Searchprod" runat="server" RepeatColumns="4" CellSpacing="3" RepeatLayout="Table" >
        <ItemTemplate>
           <div class="col-lg-3 col-md-4">
                <div class="card border-1" style="margin-bottom: 7%;margin-top: 7%">
                    <div class="card-body">
                        <div class="row" style="">
                            <div class="text-center mx-auto col-lg-12 col-12">
                                <div class="card-title"><h5><b><%# Eval("product_name") %></b></h5></div>
                                <asp:Image class="card-img-top" ImageUrl='<%# Eval("img")%>' runat="server" Height="300" Width="300" />
                               <div style="margin:5px">
                                <div class="card-footer"><%# Eval("product_Desc") %></div>
                 <div class="card-footer"><%# Eval("product_price") %><small> Rs</small></div>
                                   </div>
                           
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Button ID="btnbuy" class="btn mt-3" runat="server" Text="Buy Now" />  
                                        </div>
                                    <div class="col-md-2">
                                       
                                    </div>
                                    <div class="col-ms-5">
                                        <asp:Button ID="btncart" class="btn mt-3" runat="server" Text="Add to Cart" /> 
                                        </div>
                                    </div>
                    </div>
                </div>
            </div>
        </div>
               </div>
               
        </ItemTemplate>
        </asp:ListView></div>
    </form>
</body>
</html>
