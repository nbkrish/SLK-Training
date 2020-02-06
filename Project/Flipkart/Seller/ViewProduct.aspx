<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewProduct.aspx.cs" Inherits="Seller_ViewProduct" %>

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
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif; border: thin double #2874f0; table-layout: auto">
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
                    
                    <asp:Button ID="btnadd" runat="server" Text="Add Product" class="btn navbar-btn ml-md-2 bg-white" style="color:black; " OnClick="btnadd_Click" />
                    
                    
                    
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" class="btn navbar-btn ml-md-2 bg-white" style="color:black;" OnClick="btnlogout_Click" />
                    
                    
                </div>
            </div> 
        </div>
    </nav>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FlipkartConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [product_Id] = @product_Id" InsertCommand="INSERT INTO [Product] ([product_name], [product_Desc], [product_price], [Product_quantity]) VALUES (@product_name, @product_Desc, @product_price, @Product_quantity)" SelectCommand="SELECT [product_name], [product_Desc], [product_price], [Product_quantity], [product_Id] FROM [Product] WHERE ([seller_id] = @seller_id)" UpdateCommand="UPDATE [Product] SET [product_name] = @product_name, [product_Desc] = @product_Desc, [product_price] = @product_price, [Product_quantity] = @Product_quantity WHERE [product_Id] = @product_Id">
            <DeleteParameters>
                <asp:Parameter Name="product_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="product_Desc" Type="String" />
                <asp:Parameter Name="product_price" Type="Double" />
                <asp:Parameter Name="Product_quantity" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="seller_id" SessionField="SellerUserid" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="product_Desc" Type="String" />
                <asp:Parameter Name="product_price" Type="Double" />
                <asp:Parameter Name="Product_quantity" Type="Int32" />
                <asp:Parameter Name="product_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="product_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                <asp:BoundField DataField="product_Desc" HeaderText="product_Desc" SortExpression="product_Desc" />
                <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                <asp:BoundField DataField="Product_quantity" HeaderText="Product_quantity" SortExpression="Product_quantity" />
                <asp:BoundField DataField="product_Id" HeaderText="product_Id" InsertVisible="False" ReadOnly="True" SortExpression="product_Id" />
            </Columns>
        </asp:GridView>



    </form>


</body>
</html>
