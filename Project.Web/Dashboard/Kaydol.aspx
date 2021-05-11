<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kaydol.aspx.cs" Inherits="Project.Web.Dashboard.Kaydol" %>

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

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Kayıt Formu</h2>
                    <form id="form1" runat="server">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Ad</label>
                                    <asp:TextBox id="txtad" CssClass="input--style-4" placeholder="Adınızı girin." runat="server"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Soyad</label>
                                    <asp:TextBox id="txtsoyad" CssClass="input--style-4" placeholder="Soyadınızı girin." runat="server"/>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Şifre</label>
                                    <asp:TextBox id="txtsifre" CssClass="input--style-4" placeholder="Şifrenizi girin." TextMode="Password" runat="server"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Şifre(Tekrar)</label>
                                    <asp:TextBox id="txtsifre2" CssClass="input--style-4" placeholder="Şifrenizi tekrar girin." TextMode="Password" runat="server"/>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Mail</label>
                                    <asp:TextBox id="txtmail" CssClass="input--style-4" placeholder="email@example.com" TextMode="Email" runat="server"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">TC Kimlik No</label>
                                    <asp:TextBox id="txttc" CssClass="input--style-4" placeholder="Tc kimlik numaranızı girin." runat="server" TextMode="Number"/>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Telefon</label>
                                    <asp:TextBox id="txttelefon" CssClass="input--style-4" placeholder="Telefon numaranızı girin." TextMode="Number" runat="server"/>

                                </div>
                            </div>
                            <div class="col-2" style="margin-left: 150px">
                                <asp:Button CssClass="btn btn--radius-2 btn--blue" Text="Kaydol" runat="server" ID="btnkaydol" OnClick="btnkaydol_OnClick" ></asp:Button>
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
