<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="UTF-8" />
    <meta name="description" content="Fashi Template" />
    <meta name="keywords" content="Fashi, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    
    
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="Checout%20Design/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="Checout%20Design/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="Checout%20Design/css/themify-icons.css" type="text/css" />
    <link rel="stylesheet" href="Checout%20Design/css/elegant-icons.css" type="text/css" />
    <link rel="stylesheet" href="Checout%20Design/css/owl.carousel.min.css" type="text/css" />
    <link rel="stylesheet" href="Checout%20Design/css/nice-select.css" type="text/css" />
    <link rel="stylesheet" href="Checout%20Design/css/jquery-ui.min.css" type="text/css"  />
    <link rel="stylesheet" href="Checout%20Design/css/slicknav.min.css" type="text/css"  />
    <link rel="stylesheet" href="Checout%20Design/css/style.css" type="text/css" />

    
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
                <form class="wrap-search-header flex-w p-l-15">
                    <button class="flex-c-m trans-04">
                        <i class="zmdi zmdi-search"></i>
                    </button>
                    <input class="plh3" type="text" name="search" placeholder="Search...">
                </form>
            </div>
        </div>
    </header>
    <section class="checkout-section spad">
        <div class="container">
            <div class="checkout-form">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="checkout-content">
                            <asp:LinkButton ID="LinkButton1" CssClass="content-btn" runat="server">Apply</asp:LinkButton>
                            <%--<a href="#" class="content-btn">Click Here To Login</a>--%>
                        </div>
                        <h4>Biiling Details</h4>
                        <div class="row">
                            <div class="col-lg-6">
                                <label for="fir">First Name<span>*</span></label>
                                <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
                                <%--<input type="text" id="fir">--%>
                            </div>
                            <div class="col-lg-6">
                                <label for="last">Last Name<span>*</span></label>
                                <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-lg-12">
                                <label for="cun-name">Address<span>*</span></label>
                                <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
                                <asp:TextBox ID="tbAddress2" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-lg-12">
                                <label for="cun">Pincode<span>*</span></label>
                                 <asp:TextBox ID="tbPincode" runat="server"  ></asp:TextBox>
                            </div>
                            <div class="col-lg-12">
                                <label for="street">Country<span>*</span></label>
                                 <asp:TextBox ID="tbCountry" runat="server" Text="India" Enabled="false"></asp:TextBox>
                            </div>
                            <div class="col-lg-12">
                                <label for="zip">State<span>*</span></label>
                                <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" DataSourceID="dsState" DataTextField="StateName" DataValueField="StateId" AutoPostBack="True"></asp:DropDownList>
                                <asp:SqlDataSource ID="dsState" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="GetAllStates" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                            <div class="col-lg-12">
                                <label for="town">Town / City<span>*</span></label>
                                <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control" AutoPostBack="True" DataSourceID="dsCity" DataTextField="CityName" DataValueField="CityId"></asp:DropDownList>
                                <asp:SqlDataSource ID="dsCity" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="ListCityByState" SelectCommandType="StoredProcedure" >
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlState" Name="StateId" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                            <div class="col-lg-6">
                                <label for="email">Area<span>*</span></label>
                                <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="AreaName" DataValueField="AreaID"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="ListAllAreaByCity" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlCity" DefaultValue="" Name="CityId" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                            <div class="col-lg-6">
                                <label for="phone">Phone(+91)<span>*</span></label>
                                <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-lg-12">
                                <div class="create-item">
                                    <label for="acc-create">
                                        Remember this address?
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="checkout-content">
                            <asp:TextBox ID="tbCoupan" CssClass="content-btn" runat="server" placeholder="Have promo-code? type here"></asp:TextBox>
                        </div>
                        <div class="place-order">
                            <h4>Your Order</h4>
                            <div class="order-total">
                                <ul class="order-table" id="ulCart" runat="server">
                                    <%--<li>Particulars <span>Amount</span></li>
                                    <li class="fw-normal">Combination x 1 <span>$60.00</span></li>
                                    <li class="fw-normal">Combination x 1 <span>$60.00</span></li>
                                    <li class="fw-normal">Combination x 1 <span>$120.00</span></li>
                                    <li class="fw-normal">Subtotal <span>$240.00</span></li>
                                    <li class="total-price">Total <span>$240.00</span></li>--%>
                                </ul>
                                <%--div class="payment-check">
                                    <div class="pc-item">
                                       
                                    </div>
                                     
                                    <div class="pc-item">
                                        <label for="pc-paypal">
                                            Cash on Delivery
                                            <input type="radio" id="pc-paypal" />
                                            <asp:RadioButton ID="RadioCash" runat="server" GroupName="Payment" />
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>--%>
                                <%--<asp:Label ID="Label1" runat="server" Text="Online"></asp:Label>
                                    <asp:RadioButton ID="RadioOnline" runat="server" GroupName="Payment" Checked  />--%>
                                <div class="order-btn">
                                    <asp:LinkButton ID="btnOrder" CssClass="site-btn place-btn"  runat="server" OnClick="btnOrder_Click"  >Place Order</asp:LinkButton>
                                    <%--<button type="submit" class="site-btn place-btn">Place Order</button>--%>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

