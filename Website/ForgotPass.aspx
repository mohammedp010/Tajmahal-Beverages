<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPass.aspx.cs" Inherits="ForgotPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>The Tajmahal Beverages</title>
    <script type="text/javascript">
        function alertMessage() {
            alert('JavaScript Function Called!');
        }
    </script>
    <script>
        function success() {
            swal({
                title: "Good job!",
                text: "You clicked the button!",
                icon: "success",
                button: "Aww yiss!",
            });
        }
    </script> 
     <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
  <link href="urbanui-login-template-free-1-7433a5e503a6/assets/css/login.css" rel="stylesheet" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body style="background-color:#DFC391;">
    
     <div class="container-fluid" >
      <div class="row">
        
        <div class="col-sm-6 login-section-wrapper">
          <div class="brand-wrapper">
            <%--<img src="assets/images/logo.svg" alt="logo" class="logo">--%>
             <%--<img src="/urbanui-login-template-free-1-7433a5e503a6/assets/images/logo.svg" alt="" class="logo" />--%>
             <img src="/images/logo.png" alt="" height="90" width="155"  />
          </div>
            
          <div class="login-wrapper my-auto" >
            <h1 class="login-title">Forgot Password</h1>
    <form id="form1" runat="server" method="post">
    <div>
        <div>
                            <div class="form-group">
                                <label for="txtEmail">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="example@email.com" TextMode="Email" required></asp:TextBox><br />
                                <asp:Button ID="btnSend" runat="server" Text="Reset" CssClass="btn btn-primary" OnClick="btnSend_Click"  />
                                <%--<input type="email" name="email" id="email" class="form-control" placeholder="email@example.com">--%>
                            </div>
                            <%--<div class="form-group mb-4">
                                <label for="txtOTP">OTP code</label>
                                <asp:TextBox ID="txtOTP" runat="server" CssClass="form-control" placeholder="enter your OTP" ></asp:TextBox>
                                <input type="password" name="password" id="password" class="form-control" placeholder="enter your passsword">
                            </div>--%>
                           <%-- <input name="login" id="login" class="btn btn-block login-btn" type="button" value="Login">--%>
                            <%--<asp:Button ID="btnVerify" runat="server" Text="Verify" CssClass="btn btn-block login-btn"  />--%>
                            
                        </div>
    </div>
    </form>
             
            <p class="login-wrapper-footer-text">Don't have an account? <a href="signup.aspx" class="text-reset">Register here</a></p>
          </div>
        </div>
           
        <div class="col-sm-6 px-0 d-none d-sm-block">
          <%--<img src="assets/images/login.jpg" alt="login image" class="login-img">--%>
          <%--<img src="Images/Logo.png" alt="" height="190" width="255" />--%>
        </div>
      </div>
    </div>
       
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
</body>
</html>
