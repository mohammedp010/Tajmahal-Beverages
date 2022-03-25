<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <header class="header-v4">

        <div class="container-menu-desktop">

            <div class="top-bar">
                <div class="content-topbar flex-sb-m h-full container">
                    <div class="left-top-bar">
                        Free shipping for standard order over ₹ 1000
                    </div>
                    <div class="right-top-bar flex-w h-full">
                        <a href="#" class="flex-c-m trans-04 p-lr-25">Help & FAQs
                        </a>
                        <a href="#" class="flex-c-m trans-04 p-lr-25">My Account
                        </a>
                        <a href="#" class="flex-c-m trans-04 p-lr-25">EN
                        </a>
                        <a href="#" class="flex-c-m trans-04 p-lr-25">USD
                        </a>
                    </div>
                </div>
            </div>
            <div class="wrap-menu-desktop how-shadow1">
                <nav class="limiter-menu-desktop container">

                    <a href="#" class="logo">
                         <img src="/images/logo.png" alt="IMG-LOGO" height="95" width="100" />
                    </a>

                    <div class="menu-desktop">
                        <ul class="main-menu">
                            <%--<li>
                                <a href="index.html">Home</a>
                                <ul class="sub-menu">
                                    <li><a href="index.html">Homepage 1</a></li>
                                    <li><a href="home-02.html">Homepage 2</a></li>
                                    <li><a href="home-03.html">Homepage 3</a></li>
                                </ul>
                            </li>--%>
                            <li>
                                <a href="Product.aspx">Shop</a>
                            </li>
                           
                            
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="ContactUs.aspx">Contact</a>
                            </li>
                        </ul>
                    </div>

                    <div class="wrap-icon-header flex-w flex-r-m">
                        <%--<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                             <i class="fas fa-search"></i>
                        </div>--%>
                        <%--<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
                            <i class="fas fa-shopping-cart"></i>
                        </div>
                        <a href="#" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
                            <i class="fas fa-heart"></i>
                        </a>--%>
                    </div>
                    <%--<div  id="Div1" runat="server">
                            </div>--%>
                </nav>
            </div>
        </div>

        <div class="wrap-header-mobile">

            <div class="logo-mobile">
                <a href="index.html">
                    <img src="/images/logo.png" alt="IMG-LOGO" height="95" width="100" />
                </a>
            </div>

            <div class="wrap-icon-header flex-w flex-r-m m-r-15" id="divHeadeCart" runat ="server">
                <%--<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
                    <i class="fas fa-search"></i>
                </div>--%>
                <%--<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
                    <i class="fas fa-heart"></i>
                </a>--%>
            </div>
            <div  id="logout" runat="server">
                            </div>

            <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
                <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                </span>
            </div>
        </div>

        <div class="menu-mobile">
            <ul class="topbar-mobile">
                <li>
                    <div class="left-top-bar">
                        Free shipping for standard order over $100
                    </div>
                </li>
                <li>
                    <div class="right-top-bar flex-w h-full">
                        <a href="#" class="flex-c-m p-lr-10 trans-04">Help & FAQs
                        </a>
                        <a href="#" class="flex-c-m p-lr-10 trans-04">My Account
                        </a>
                        <a href="#" class="flex-c-m p-lr-10 trans-04">EN
                        </a>
                        <a href="#" class="flex-c-m p-lr-10 trans-04">USD
                        </a>
                    </div>
                </li>
            </ul>
            <ul class="main-menu-m">
                <li>
                    <a href="index.html">Home</a>
                    <ul class="sub-menu-m">
                        <li><a href="index.html">Homepage 1</a></li>
                        <li><a href="home-02.html">Homepage 2</a></li>
                        <li><a href="home-03.html">Homepage 3</a></li>
                    </ul>
                    <span class="arrow-main-menu-m">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                    </span>
                </li>
                <li>
                    <a href="product.html">Shop</a>
                </li>
                <li>
                    <a href="shoping-cart.html" class="label1 rs1" data-label1="hot">Features</a>
                </li>
                <li>
                    <a href="blog.html">Blog</a>
                </li>
                <li>
                    <a href="about.html">About</a>
                </li>
                <li>
                    <a href="contact.html">Contact</a>
                </li>
            </ul>
        </div>

        <div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
            <div class="container-search-header">
                <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
                    <img src="images/icons/icon-close2.png" alt="CLOSE">
                </button>
                <div class="wrap-search-header flex-w p-l-15">
                    <button class="flex-c-m trans-04">
                        <i class="zmdi zmdi-search"></i>
                    </button>
                    <input class="plh3" type="text" name="search" placeholder="Search..." />
                </div>
            </div>
        </div>
    </header>

   
      
      <div class="bg0 p-t-75 p-b-85">
    
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
                    <div class="m-l-25 m-r--38 m-lr-0-xl">
                        <div class="wrap-table-shopping-cart" runat="server" id="ViewCartTable">
                            <div class="table-responsive table-responsive-data2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CartId,ProductId" DataSourceID="SqlDataSource2"  CssClass="table table-bordered table-hover">
                                <Columns>
                                   
                                    <%--<asp:BoundField DataField="CartId" HeaderText="CartId" SortExpression="CartId" InsertVisible="False" ReadOnly="True" />
                                    
                                    <asp:BoundField DataField="CartDate" HeaderText="CartDate" SortExpression="CartDate" ReadOnly="True" />
                                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" InsertVisible="False" ReadOnly="True" />--%>

                                    <asp:TemplateField HeaderText="Product" SortExpression="ImagePath">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ImagePath") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Height="116px" ImageUrl='<%# Eval("ImagePath") %>' Width="76px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ProductName" HeaderText="Name" SortExpression="ProductName" />
                                   
                                    
                                    <asp:BoundField DataField="Volume" HeaderText="Volume" SortExpression="Volume" />
                                    <asp:BoundField DataField="SalesRate" HeaderText="Price" SortExpression="SalesRate" />
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                    <%--<asp:BoundField DataField="RId" HeaderText="RId" SortExpression="RId" />--%>
                                  
                                    <asp:BoundField DataField="ProductAmt" HeaderText="Total" SortExpression="ProductAmt" />
                                    <%--<asp:BoundField DataField="TotalQty" HeaderText="TotalQty" ReadOnly="True" SortExpression="TotalQty" />
                                    <asp:BoundField DataField="TotalAmt" HeaderText="TotalAmt" ReadOnly="True" SortExpression="TotalAmt" />--%>
                                    
                                </Columns>
                            </asp:GridView>
                                </div>
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="CartDetailGetForFront" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:SessionParameter Name="RId" SessionField="UserID" Type="Int64" />
                                </SelectParameters>
                            </asp:SqlDataSource>
            </div>
  </div>
                    <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
                            <div class="flex-w flex-m m-r-20 m-tb-5">
                                
                                </div>
                        </div>
                    <label>Choose your Payment Method</label>
                                    <br />
                                    
                                    <input type="radio" id="Radio1" name="payment" class="form-check-input" checked />
                                    <label class="form-check-label">Online Payment</label>
        
                                    <br />
                                    <input type="radio" id="Radio2" name="payment" class="form-check-input"  />
                                    <label class="form-check-label">Cash on Delivery</label><br />
                                    
                     <button type="button" id="btnPayment" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">Place Order</button>
                    </div>
                </div>
            </div>
          </div>
    
</asp:Content>

