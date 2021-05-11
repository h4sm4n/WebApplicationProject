<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="Project.Web.Dashboard.Giris" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="ie=edge" charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pamuk İnşaat Online İşlemler</title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/login.css">
</head>

<body>
    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 login-section-wrapper">
                    <div class="brand-wrapper">
                        <img src="assets/images/logo.svg" alt="logo" class="logo">
                    </div>
                        <div class="login-wrapper my-auto">
                            <h1 class="login-title">Giriş</h1>
                            <form id="form1" runat="server">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <asp:TextBox id="txtemail" CssClass="form-control" placeholder="email@example.com" runat="server"/>
                                    <%--TextMode="Email" yazcaksın textboxa normal için--%>
                                </div>
                                <div class="form-group mb-4">
                                    <label for="password">Şifre</label>
                                    <asp:TextBox name="password" id="txtsifre" CssClass="form-control" TextMode="Password" placeholder="Şifrenizi giriniz." runat="server"/>
                                </div>
                                <asp:Button id="btnlogin" CssClass="btn btn-block login-btn" Text="Giriş Yap" OnClick="btnlogin_OnClick" runat="server"/>
                            </form>
                            <a href="#!" class="forgot-password-link">Şifremi unuttum.</a>
                            <p class="login-wrapper-footer-text">Hesabınız yok mu? <a href="Kaydol.aspx" class="text-reset">Buradan kaydolun.</a></p>
                        </div>
                    </div>
                    <div class="col-sm-6 px-0 d-none d-sm-block">
                        <img src="assets/images/login.jpg" alt="login image" class="login-img">
                    </div>
            </div>
        </div>
    </main>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
