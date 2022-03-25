<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <header class="header-v4">

        <div class="container-menu-desktop">

            <div class="top-bar">
                <div class="content-topbar flex-sb-m h-full container">
                    <div class="left-top-bar">
                        Free shipping for standard order over ₹1000
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
                            <%--<li>
                                <a href="index.html">Home</a>
                                <ul class="sub-menu">
                                    <li><a href="index.html">Homepage 1</a></li>
                                    <li><a href="home-02.html">Homepage 2</a></li>
                                    <li><a href="home-03.html">Homepage 3</a></li>
                                </ul>
                            </li>--%>
                            <li class="label1" data-label1="New">
                                <a href="Product.aspx">Shop</a>
                            </li>
                            
                            
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li class="active-menu">
                                <a href="ContactUs.aspx">Contact</a>
                            </li>
                        </ul>
                    </div>

                     
                </nav>
            </div>
        </div>

        <%--<div class="wrap-header-mobile">

            <div class="logo-mobile">
                <a href="index.html">
                    <img src="cozastore/images/icons/logo-01.png" alt="IMG-LOGO"></a>
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
        </div>--%>

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
                <ul class="header-cart-wrapitem w-full">
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
                    <li class="header-cart-item flex-w flex-t m-b-12">
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
                    </li>
                </ul>
                <div class="w-full">
                    <div class="header-cart-total w-full p-tb-40">
                        Total: $75.00
                    </div>
                    <div class="header-cart-buttons flex-w w-full">
                        <a href="shoping-cart.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">View Cart
                        </a>
                        <a href="shoping-cart.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">Check Out
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>   
    
    

    <script type="text/javascript">

        function ValidateData(val) {
            var Name = document.getElementById("ContentPlaceHolder1_fvcontact_PersonNameTextBox");
            var Email = document.getElementById("ContentPlaceHolder1_fvcontact_EmailTextBox");
            var Mobile = document.getElementById("ContentPlaceHolder1_fvcontact_MobileTextBox");

            var d = document.getElementById("ContentPlaceHolder1_error");
            var d1 = document.getElementById("ContentPlaceHolder1_success");
            var msg = document.getElementById("ContentPlaceHolder1_lblError");

            d.style.display = "none";
            d1.style.display = "none";

            if (Name.value == "") {
                d.style.display = "block";
                msg.innerHTML = "Oops! Your name is missing.";
                Name.focus();
                return false;
            }
            else if (Email.value == "") {
                d.style.display = "block";
                msg.innerHTML = "Oops! Your Email is missing.";
                Email.focus();
                return false;
            }
            else if (Mobile.value == "") {
                d.style.display = "block";
                msg.innerHTML = "Oops! Your Mobile number is missing.";
                Mobile.focus();
                return false;
            }

            else {
                d.style.display = "none";
                return true;
            }

        }
        

    </script>

    

    

    

     
            
    <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-color:black;">
        <h2 class="ltext-105 cl0 txt-center">Contact
        </h2>
    </section>
    <section class="bg0 p-t-104 p-b-116">
        <div class="container">
            <div class="flex-w flex-tr">
                <div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
                    <div id="success" class="success" runat="server">
                <center>
                <table cellpadding="10" cellspacing="0" style="width: 100%;">
                    <tr>
                        <td style="width: 16px;">
                            <img alt="" src="../Messages/success.png" />
                        </td>
                        <td style="text-align: left; padding-left: 3px;">
                            <asp:Label ID="lblSuccess" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 16px; padding: 0px;">
                            <img alt="" src="../Messages/close.png" style="cursor: hand;" onclick="closeDiv('success');" />
                        </td>
                    </tr>
                </table>
                    </center>
            </div>
            <div id="error" class="error" runat="server">
               
                <table cellpadding="10" cellspacing="0" width="100%">
                    <tr>
                         
                        <td style="width: 16px;">
                            <img alt="" src="Messages/error.png" />
                        </td>
                        <td style="text-align: left; padding-left: 3px;">
                            <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 16px; padding: 0px;">
                            <img alt="" src="Messages/close.png" style="cursor: hand;" onclick="closeDiv('error');" />
                        </td>
                            
                    </tr>
                </table>
                    
            </div>
            <div id="info" class="info" runat="server">
                <table cellpadding="10" cellspacing="0" width="100%">
                    <tr>
                        <td style="width: 16px;">
                            <img alt="" src="../Messages/info.png" />
                        </td>
                        <td style="text-align: left; padding-left: 3px;">
                            <asp:Label ID="lblInfo" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 16px; padding: 0px;">
                            <img alt="" src="../Messages/close.png" style="cursor: hand;" onclick="closeDiv('info');" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="attention" class="attention" runat="server">
                <table cellpadding="10" cellspacing="0" width="100%">
                    <tr>
                        <td style="width: 16px;">
                            <img alt="" src="../Messages/attention.png" />
                        </td>
                        <td style="text-align: left; padding-left: 3px;">
                            <asp:Label ID="lblAttention" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="width: 16px; padding: 0px;">
                            <img alt="" src="../Messages/close.png" style="cursor: hand;" onclick="closeDiv('attention');" />
                        </td>
                    </tr>
                </table>
            </div>
    
    <asp:FormView ID="fvcontact" runat="server" DataKeyNames="ContactId" DataSourceID="dsContact" DefaultMode="Insert" OnItemInserted="fvcontact_ItemInserted" OnItemDeleted="fvcontact_ItemDeleted" OnItemUpdated="fvcontact_ItemUpdated" >
        <EditItemTemplate>
            ContactId:
            <asp:Label ID="ContactIdLabel1" runat="server" Text='<%# Eval("ContactId") %>' />
            <br />
            PersonName:
            <asp:TextBox ID="PersonNameTextBox" runat="server" Text='<%# Bind("PersonName") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Mobile:
            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
            <br />
            Message:
            <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
            <br />
           
            status:
            <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
           
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>

                       <h4 class="mtext-105 cl2 txt-center p-b-30">Send Us A Message
                        </h4>
                        <div class="bor8 m-b-20 how-pos4-parent">
                            
                            <asp:TextBox ID="PersonNameTextBox" runat="server" Text='<%# Bind("PersonName") %>' onkeypress="return isAlpha(event,this);" placeholder="Your Name" class="stext-111 cl2 plh3 size-118 p-l-62 p-r-30" Width="100%" />
                           <img class="how-pos4 pointer-none" src="cozastore/images/icons/name.png" alt="ICON" width="22" height="18">
                        </div>
                        <div class="bor8 m-b-20 how-pos4-parent">
                            
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" placeholder="Your Email" class="stext-111 cl2 plh3 size-118 p-l-62 p-r-30" />
                            <img class="how-pos4 pointer-none" src="cozastore/images/icons/email.png" alt="ICON" width="18" height="18">
                        </div>
                        
                        <div class="bor8 m-b-20 how-pos4-parent">
                            
                            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' onkeypress="return isNumberKey(event,this);" placeholder="Your Mobile" class="stext-111 cl2 plh3 size-118 p-l-62 p-r-30"  />
                            <img class="how-pos4 pointer-none" src="cozastore/images/icons/phone.png" alt="ICON" width="18" height="18">
                        </div>
                        
                        <div class="bor8 m-b-20 how-pos4-parent">
                            
                            <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' TextMode="MultiLine" placeholder="Message" class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25"   />
                            
                        </div>
                       <%-- <button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                            Submit
                        </button>--%>
                        <asp:Button ID="Button1" runat="server" Text="Let us Know" CausesValidation="True" CommandName="Insert" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" OnClientClick="return ValidateData('Ins'); " />
          
                        
                            <%--<div class="row">
                                <div class="col-lg-12">
                                    Name
                                    <asp:TextBox ID="PersonNameTextBox" runat="server" Text='<%# Bind("PersonName") %>' onkeypress="return isAlpha(event,this);" />
                                </div>
                                <div class="col-lg-12">
                                    Email
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' TextMode="Email" />
                                </div>
                                <div class="col-lg-12">
                                    Mobile
                                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' onkeypress="return isNumberKey(event,this);" />
                                </div>
                                <div class="col-lg-12">
                                    Message
                                    <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' Columns="10" Rows="30" TextMode="MultiLine" />
                                    <%--<button type="submit" class="site-btn">Send Message</button>--%>
                                    
                                
                        
                    

            <%--PersonName:
            
            <br />
            Email:
            
            <br />
            Mobile:
            
            <br />
            Message:
           
            <br />
            
            <br />
            <asp:LinkButton ID="InsertButton" runat="server"  Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />--%>
        </InsertItemTemplate>
        <ItemTemplate>
            ContactId:
            <asp:Label ID="ContactIdLabel" runat="server" Text='<%# Eval("ContactId") %>' />
            <br />
            PersonName:
            <asp:Label ID="PersonNameLabel" runat="server" Text='<%# Bind("PersonName") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Mobile:
            <asp:Label ID="MobileLabel" runat="server" Text='<%# Bind("Mobile") %>' />
            <br />
            Message:
            <asp:Label ID="MessageLabel" runat="server" Text='<%# Bind("Message") %>' />
            <br />
           
            status:
            <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
           
            <br />
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>

                    </div>
                <div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
                    <div class="flex-w w-full p-b-42">
                        <span class="fs-18 cl5 txt-center size-211">
                            <span class="lnr lnr-map-marker"></span>
                        </span>
                        <div class="size-212 p-t-2">
                            <span class="mtext-110 cl2">Address
                            </span>
                            <p class="stext-115 cl6 size-213 p-t-18">
                                4/B 2509, paiki GR floor, G-2 shital appartment, nani, Moti Begumwadi, Salabatpura, Surat, Gujarat 395003 
                            </p>
                        </div>
                    </div>
                    <div class="flex-w w-full p-b-42">
                        <span class="fs-18 cl5 txt-center size-211">
                            <span class="lnr lnr-phone-handset"></span>
                        </span>
                        <div class="size-212 p-t-2">
                            <span class="mtext-110 cl2">Lets Talk
                            </span>
                            <p class="stext-115 cl1 size-213 p-t-18">
                                +91 9978143652
                            </p>
                        </div>
                    </div>
                    <div class="flex-w w-full">
                        <span class="fs-18 cl5 txt-center size-211">
                            <span class="lnr lnr-envelope"></span>
                        </span>
                        <div class="size-212 p-t-2">
                            <span class="mtext-110 cl2">Sale Support
                            </span>
                            <p class="stext-115 cl1 size-213 p-t-18">
                                <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="8cefe3e2f8edeff8cce9f4ede1fce0e9a2efe3e1">mrxmohammed010@gmail.com</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d569.7316812195469!2d72.82022726817345!3d21.19457774512633!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04fd3e2774e13%3A0x3501c0b0727707c3!2sThe%20Tajmahal%20Beverages!5e0!3m2!1sen!2sin!4v1615554462455!5m2!1sen!2sin" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>

    <asp:SqlDataSource ID="dsContact" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" InsertCommand="ContactInsert" InsertCommandType="StoredProcedure" SelectCommand="ContactGet" SelectCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="PersonName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="ContactId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                          
</asp:Content>

