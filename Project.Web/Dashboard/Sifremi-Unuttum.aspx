<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sifremi-Unuttum.aspx.cs" Inherits="Project.Web.Dashboard.Sifremi_Unuttum" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Pamuk İnşaat Online İşlemler</title>
    <link href="assets/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="assets/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="assets/css/main.css" rel="stylesheet" media="all">
</head>

<body style="background-color: aqua">
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins" style="background-color: aqua">
        <div class="wrapper wrapper--w680" style="background-color: aqua">
            <div class="card card-4" style="background-color: aqua">
                <div class="card-body" style="background-color: aliceblue">
                    <h2 class="title">Şifre Sıfırlama Ekranı</h2>
                    <form id="form1" runat="server">
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Mail</label>
                                    <asp:TextBox id="txtmail" CssClass="input--style-4" placeholder="Maili girin." TextMode="Email" runat="server"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Mail(Tekrar)</label>
                                    <asp:TextBox id="txtmail2" CssClass="input--style-4" placeholder="Maili tekrar girin." TextMode="Email" runat="server"/>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2" style="margin-left: 150px">
                                <asp:Button CssClass="btn btn--radius-2 btn--blue" Text="Şifremi Unuttum" runat="server" ID="btnyolla" OnClick="btnyolla_OnClick" ></asp:Button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/js/global.js"></script>
</body>
</html>
