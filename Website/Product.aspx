<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .drop {
            display: block;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            -moz-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            max-width: 200px;
            min-width: 500px;
        }  
 .drop:focus {  
    border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
} 
 

    </style>
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
                        <%--<a href="#" class="flex-c-m trans-04 p-lr-25">EN
                        </a>
                        <a href="#" class="flex-c-m trans-04 p-lr-25">USD
                        </a>--%>
                    </div>
                </div>
            </div>
            <div class="wrap-menu-desktop">
                <nav class="limiter-menu-desktop container">

                    <a href="#" class="logo">

                        <img src="/images/logo.png" alt="IMG-LOGO" height="95" width="100" />
                    </a>

                    <div class="menu-desktop">
                        <ul class="main-menu">
                            <%--<li >
                                <a href="index.html">Home</a>
                                <ul class="sub-menu">
                                    <li><a href="index.html">Homepage 1</a></li>
                                    <li><a href="home-02.html">Homepage 2</a></li>
                                    <li><a href="home-03.html">Homepage 3</a></li>
                                </ul>
                            </li>--%>
                            <li class="active-menu"" data-label1="hot">
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
                    
                    <div class="wrap-icon-header flex-w flex-r-m" id="divHeaderCart" runat ="server">
                        <%--<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                            <i class="zmdi zmdi-search"></i>                           
                            <i class="fas fa-search"></i>

                        </div>--%>
                        <%--<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">                            
                            <i class="fas fa-shopping-cart"></i>
                        </div>--%>
                        
                        
                    </div>
                     <div runat="server">
                         <asp:LinkButton ID="LinkButton4" runat="server" CssClass="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11" OnClick="LinkButton4_Click">
                             <img src="/feather%20icons/log-out.svg" alt="Logout" runat="server" />
                         </asp:LinkButton>
                            </div>
                         
                        
                </nav>
            </div>
        </div>

        <div class="wrap-header-mobile">

            <div class="logo-mobile">
                <a href="index.html">
                    <img src="/images/logo.png" alt="IMG-LOGO" height="95" width="100" />
            </div>

            <div class="wrap-icon-header flex-w flex-r-m m-r-15">
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
                    <i class="fas fa-search"></i>
                </div>
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
                    <i class="fas fa-heart"></i>
                </a>
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
                        <%--<i class="fa fa-angle-right" aria-hidden="true"></i>--%>
                        <img src="/feather%20icons/arrow-right.svg" alt="" />
                    </span>
                </li>
                <li>
                    <a href="Product.aspx" data-label1="hot">Shop</a>
                </li>
                <li>
                    <a href="shoping-cart.html" class="label1 rs1" >Features</a>
                </li>
                <li>
                    <a href="blog.html">Blog</a>
                </li>
                <li>
                    <a href="about.html">About</a>
                </li>
                <li>
                    <a href="ContactUs.aspx">Contact</a>
                </li>
            </ul>
        </div>

        <%--<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
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
        </div>--%>
    </header>

    <div class="wrap-header-cart js-panel-cart">
        <div class="s-full js-hide-cart"></div>
        <div class="header-cart flex-col-l p-l-65 p-r-25">
            <div class="header-cart-title flex-w flex-sb-m p-b-8">
                <span class="mtext-103 cl2">Your Cart
                </span>
                <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
                    <i class="ti-close"></i>
                </div>
            </div>
            <div class="header-cart-content flex-w js-pscroll">
                <ul class="header-cart-wrapitem w-full" id="ulCartList" runat="server">
                    <%--<li class="header-cart-item flex-w flex-t m-b-12">
                    <li class="header-cart-item flex-w flex-t m-b-12">
                        <div class="header-cart-item-img">
                            <img src="images/item-cart-01.jpg" alt="IMG">
                        </div>
                        <div class="header-cart-item-txt p-t-8">
                            <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">White Shirt Pleat
                            </a>
                            <span class="header-cart-item-info">1 x $19.00
                            </span>
                        </div>
                    </li>
                        <div class="header-cart-item-img">
                            <img src="images/item-cart-02.jpg" alt="IMG">
                        </div>
                        <div class="header-cart-item-txt p-t-8">
                            <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">Converse All Star
                            </a>
                            <span class="header-cart-item-info">1 x $39.00
                            </span>
                        </div>
                    </li>
                    <li class="header-cart-item flex-w flex-t m-b-12">
                        <div class="header-cart-item-img">
                            <img src="images/item-cart-03.jpg" alt="IMG">
                        </div>
                        <div class="header-cart-item-txt p-t-8">
                            <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">Nixon Porter Leather
                            </a>
                            <span class="header-cart-item-info">1 x $17.00
                            </span>
                        </div>
                    </li>--%>
                </ul>
                <div class="w-full">
                    <div class="header-cart-total w-full p-tb-40">
                        Total: <span id="spanTotalAmt" runat="server">0</span>
                    </div>
                    <div class="header-cart-buttons flex-w w-full">
                        <%--<a href="shoping-cart.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">View Cart
                        </a>--%>
                        <a href="ViewCart.aspx" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">Check Out
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <%--<section class="section-slide">
        <div class="wrap-slick1">
            <div class="slick1">
                
                
                <div class="item-slick1" style="background-image: url(images/slide-01.jpg);">
                    <div class="container h-full">
                        <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                            <div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
                                <span class="ltext-101 cl2 respon2">Women Collection
                                </span>
                            </div>
                            <div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
                                <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">NEW SEASON
                                </h2>
                            </div>
                            <div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
                                <a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">Shop Now
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item-slick1" style="background-image: url(images/slide-02.jpg);">
                    <div class="container h-full">
                        <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                            <div class="layer-slick1 animated visible-false" data-appear="rollIn" data-delay="0">
                                <span class="ltext-101 cl2 respon2">Men New-Season
                                </span>
                            </div>
                            <div class="layer-slick1 animated visible-false" data-appear="lightSpeedIn" data-delay="800">
                                <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">Jackets & Coats
                                </h2>
                            </div>
                            <div class="layer-slick1 animated visible-false" data-appear="slideInUp" data-delay="1600">
                                <a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">Shop Now
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item-slick1" style="background-image: url(images/slide-03.jpg);">
                    <div class="container h-full">
                        <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                            <div class="layer-slick1 animated visible-false" data-appear="rotateInDownLeft" data-delay="0">
                                <span class="ltext-101 cl2 respon2">Men Collection 2018
                                </span>
                            </div>
                            <div class="layer-slick1 animated visible-false" data-appear="rotateInUpRight" data-delay="800">
                                <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">New arrivals
                                </h2>
                            </div>
                            <div class="layer-slick1 animated visible-false" data-appear="rotateIn" data-delay="1600">
                                <a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">Shop Now
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>

    
            
           
   
    <div class="bg0 m-t-23 p-b-140">
        <div class="container">
            <table>
                <tr>
                    <td>
                        
                                        <div class="row">
                        <asp:DropDownList ID="ddCategory" runat="server" DataSourceID="dsCategory" DataTextField="catName" DataValueField="catId" CssClass="drop" AutoPostBack="True" Font-Bold="True" ForeColor="#663300" Width="100%"></asp:DropDownList>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:SqlDataSource ID="dsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="GetAllCategory" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <asp:DropDownList ID="ddFlavour" runat="server" DataSourceID="dsFlavour" DataTextField="FName" DataValueField="FId" CssClass="drop" AutoPostBack="True" Font-Bold="True" ForeColor="#663300" Width="100%"></asp:DropDownList>
                        <asp:SqlDataSource ID="dsFlavour" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="GetAllFlavour" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                        </div>
                            
                    </td>
                </tr>
            </table>
            
    <br />
            <div class="flex-w flex-sb-m p-b-52">
                <%--<div class="flex-w flex-l-m filter-tope-group m-tb-10">
                    <%--<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
                        All Products
                    </button>
                     <asp:LinkButton ID="LinkButton7" CssClass="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"  runat="server"  >All Products</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton4" CssClass="st7ext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" runat="server" OnClientClick="displayWithWaterJs();" >With Water</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton5" CssClass="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" runat="server" >With Milk</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton6" CssClass="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" runat="server" >With Water and Milk</asp:LinkButton>
                   
                    <button class="st7ext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".WithWater">
                        With Water
                    </button>
                    <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".WithMilk">
                        With Milk
                    </button>
                    <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".WithWaterMilk">
                        With Water and Milk
                    </button>
                    
                </div>--%>
                </div>       
             <div class="row isotope-grid">
                 
          
                    

    <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductId" DataSourceID="SqlDataSource1" RepeatColumns="4">


        <ItemTemplate>
            
            
               <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                    <div class="block2">
                        <div class="block2-pic hov-img0">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagePath") %>'  />
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">QuickView</asp:LinkButton>
                        </div>
                        <div class="block2-txt flex-w flex-t p-t-14">
                            <div class="block2-txt-child1 flex-col-l ">
                                <%--<asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' CssClass="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" />--%>
                                <asp:Label ID="FNameLabel" runat="server" Text='<%#  "The Tajmahal Authenticate Handmade "+Eval("FName") %>' CssClass="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" Font-Size="Large" />
                            </div>
                            <asp:Label ID="MRPLabel" runat="server" Text='<%# Eval("MRP") %>' class="stext-105 cl3" />
                            <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' Visible="false" />
                           <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("MRP") %>' />
                        <div class="block2-txt-child2 flex-r p-t-3">
                            <%--<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON" />
                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON" />
                            </a>--%>
                            <asp:LinkButton ID="LinkButton2" runat="server">
                               <%-- <asp:Image ID="Image2" runat="server" ImageUrl="cozastore/images/icons/icon-heart-01.png"  CssClass="icon-heart1 dis-block trans-04"/>--%>
                                <%--<asp:Image ID="Image3" runat="server" ImageUrl="cozastore/images/icons/icon-heart-02.png"  CssClass="icon-heart2 dis-block trans-04 ab-t-l"/>--%>
                            </asp:LinkButton>
                            
                        </div>
                            
                    </div>
                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04" OnClick="LinkButton3_Click">Add to cart</asp:LinkButton>
                </div>
            </div>
            
            <%--<table>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <%--<asp:Label ID="ImagePathLabel" runat="server" Text='<%# Eval("ImagePath") %>' />
                        
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Name
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        Flavour
                    </td>
                    <td>
                        <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Category
                    </td>
                    <td>
                        <asp:Label ID="CatNameLabel" runat="server" Text='<%# Eval("CatName") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Short Description
                    </td>
                    <td>
                        <asp:Label ID="ShortDescriptionLabel" runat="server" Text='<%# Eval("ShortDescription") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Volume
                    </td>
                    <td>
                        <asp:Label ID="VolumeLabel" runat="server" Text='<%# Eval("Volume") %>' />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        MRP
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        Discount
                    </td>
                    <td>
                        <asp:Label ID="DiscountAmtLabel" runat="server" Text='<%# Eval("DiscountAmt") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Price
                    </td>
                    <td>
                        <asp:Label ID="SalesRateLabel" runat="server" Text='<%# Eval("SalesRate") %>' />
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="btnCart" runat="server" Text="Add" CssClass="btn btn-dark" />
                    </td>
                </tr>
                
               
                
            </table>--%>
                           
   <%--         ProductId:
            
            <br />
            ProductName:
            
            <br />
            FName:
            
            <br />
            FId:
            <asp:Label ID="FIdLabel" runat="server" Text='<%# Eval("FId") %>' />
            <br />
            CatName:
            
            <br />
            CatId:
            <asp:Label ID="CatIdLabel" runat="server" Text='<%# Eval("CatId") %>' />
            <br />
            ShortDescription:
            
            <br />
            MRP:
            
            <br />
            DiscountAmt:
            
            <br />
            SalesRate:
            
            <br />
            ImagePath:
            
            <br />
            Volume:
            
            <br />
<br />--%>
        </ItemTemplate>
    </asp:DataList>
              
    
           
    
    
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="ListAllProduct2" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddFlavour" DefaultValue="0" Name="FId" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="ddCategory" DefaultValue="0" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:DataList ID="DataList3" runat="server" DataKeyField="ProductId" DataSourceID="SqlDataSource3" RepeatDirection="Horizontal">
        <ItemTemplate>
            <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                    <div class="block2">
                        <div class="block2-pic hov-img0">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagePath") %>'  />
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">QuickView</asp:LinkButton>
                        </div>
                        <div class="block2-txt flex-w flex-t p-t-14">
                            <div class="block2-txt-child1 flex-col-l ">
                                <%--<asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' CssClass="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" />--%>
                                <asp:Label ID="FNameLabel" runat="server" Text='<%#  "The Tajmahal Authenticate Handmade "+Eval("FName") %>' CssClass="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" Font-Size="Large" />
                            </div>
                            <asp:Label ID="MRPLabel" runat="server" Text='<%# Eval("MRP") %>' class="stext-105 cl3" />
                            <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' Visible="false" />
                           
                        <div class="block2-txt-child2 flex-r p-t-3">
                            <%--<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON" />
                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON" />
                            </a>--%>
                            <asp:LinkButton ID="LinkButton2" runat="server">
                               <%-- <asp:Image ID="Image2" runat="server" ImageUrl="cozastore/images/icons/icon-heart-01.png"  CssClass="icon-heart1 dis-block trans-04"/>--%>
                                <%--<asp:Image ID="Image3" runat="server" ImageUrl="cozastore/images/icons/icon-heart-02.png"  CssClass="icon-heart2 dis-block trans-04 ab-t-l"/>--%>
                            </asp:LinkButton>
                            
                        </div>
                            
                    </div>
                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04" OnClick="LinkButton3_Click">Add to cart</asp:LinkButton>
                </div>
            </div>
            <%--ProductId:
            <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
            <br />
            FName:
            <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
            <br />
            FId:
            <asp:Label ID="FIdLabel" runat="server" Text='<%# Eval("FId") %>' />
            <br />
            CatName:
            <asp:Label ID="CatNameLabel" runat="server" Text='<%# Eval("CatName") %>' />
            <br />
            CatId:
            <asp:Label ID="CatIdLabel" runat="server" Text='<%# Eval("CatId") %>' />
            <br />
            ShortDescription:
            <asp:Label ID="ShortDescriptionLabel" runat="server" Text='<%# Eval("ShortDescription") %>' />
            <br />
            MRP:
            <asp:Label ID="MRPLabel" runat="server" Text='<%# Eval("MRP") %>' />
            <br />
            DiscountAmt:
            <asp:Label ID="DiscountAmtLabel" runat="server" Text='<%# Eval("DiscountAmt") %>' />
            <br />
            SalesRate:
            <asp:Label ID="SalesRateLabel" runat="server" Text='<%# Eval("SalesRate") %>' />
            <br />
            ImagePath:
            <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Eval("ImagePath") %>' />
            <br />
            Volume:
            <asp:Label ID="VolumeLabel" runat="server" Text='<%# Eval("Volume") %>' />
            <br />
<br />--%>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="ListAllProductWithWater" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddFlavour" DefaultValue="0" Name="FId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
        <div class="overlay-modal1 js-hide-modal1"></div>
        <div class="container" runat="server" id="quickview">
            <div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent" >
                <button class="how-pos3 hov3 trans-04 js-hide-modal1">
                    <img src="/cozastore/images/icons/icon-close.png" alt="CLOSE" />
                </button>
                <div class="row">
                    <div class="col-md-6 col-lg-7 p-b-30">
                        <div class="p-l-25 p-r-30 p-lr-0-lg">
                            <div class="wrap-slick3 flex-sb flex-w">
                                <div class="wrap-slick3-dots"></div>
                                <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
                                <div class="slick3 gallery-lb">
                                    <div class="item-slick3" data-thumb="images/product-detail-01.jpg">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="images/product-detail-01.jpg" alt="IMG-PRODUCT">
                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-01.jpg">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item-slick3" data-thumb="images/product-detail-02.jpg">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">
                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-02.jpg">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item-slick3" data-thumb="images/product-detail-03.jpg">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">
                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-03.jpg">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>
                                    </div>
        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-5 p-b-30">
                        <div class="p-r-50 p-t-5 p-lr-0-lg">
                            <h4 class="mtext-105 cl2 js-name-detail p-b-14">Lightweight Jacket
                            </h4>
                            <span class="mtext-106 cl2">$58.79
                            </span>
                            <p class="stext-102 cl3 p-t-23">
                                Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
                            </p>

                            <div class="p-t-33">
                                <div class="flex-w flex-r-m p-b-10">
                                    <div class="size-203 flex-c-m respon6">
                                        Size
                                    </div>
                                    <div class="size-204 respon6-next">
                                        <div class="rs1-select2 bor8 bg0">
                                            <select class="js-select2" name="time">
                                                <option>Choose an option</option>
                                                <option>Size S</option>
                                                <option>Size M</option>
                                                <option>Size L</option>
                                                <option>Size XL</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="flex-w flex-r-m p-b-10">
                                    <div class="size-203 flex-c-m respon6">
                                        Color
                                    </div>
                                    <div class="size-204 respon6-next">
                                        <div class="rs1-select2 bor8 bg0">
                                            <select class="js-select2" name="time">
                                                <option>Choose an option</option>
                                                <option>Red</option>
                                                <option>Blue</option>
                                                <option>White</option>
                                                <option>Grey</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="flex-w flex-r-m p-b-10">
                                    <div class="size-204 flex-w flex-m respon6-next">
                                        <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                                            <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                                <i class="fs-16 zmdi zmdi-minus"></i>
                                            </div>
                                            <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">
                                            <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                                <i class="fs-16 zmdi zmdi-plus"></i>
                                            </div>
                                        </div>
                                        <button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                                            Add to cart
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div class="flex-w flex-m p-l-100 p-t-40 respon7">
                                <div class="flex-m bor9 p-r-10 m-r-11">
                                    <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
                                        <i class="zmdi zmdi-favorite"></i>
                                    </a>
                                </div>
                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                 </div>
            </div>
        </div>
    </div>
     <script>
         function displayWithWaterJs() {
            <%displayWithWater();%>
         }
    </script>
</asp:Content>


