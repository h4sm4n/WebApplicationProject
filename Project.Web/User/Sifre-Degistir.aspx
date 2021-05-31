<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Sifre-Degistir.aspx.cs" Inherits="Project.Web.User.Sifre_Degistir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins" style="width: 1200px">
        <div class="wrapper wrapper--w680" >
            <div class="card card-4" >
                <div class="card-body" style="margin-left:400px" >
                    <h2 class="title">Şifre Değiştirme Ekranı</h2>
                    <br />
                    <form id="form1" runat="server">
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div class="row row-space" style="margin-left: 75px">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label label-primary" style="color: black">Şifre</label>
                                    <asp:TextBox id="txtsifre" CssClass="input--style-4" placeholder="Şifrenizi girin." runat="server"/>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space" style="margin-left: 75px">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label label-primary" style="color: black">Yeni Şifre</label>
                                    <asp:TextBox id="txtyeni" CssClass="input--style-4" placeholder="Yeni şifrenizi girin." runat="server"/>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space" style="margin-left: 75px">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label label-primary" style="color: black">Yeni Şifre(Tekrar)</label>
                                    <asp:TextBox id="txtyeni2" CssClass="input--style-4" placeholder="Yeni şifreyi tekrar girin." runat="server"/>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2" style="margin-left: 100px">
                                <asp:Button CssClass="btn btn--radius-2 btn--blue btn-primary" Text="Şifremi Değiştir" runat="server" ID="btnyolla" OnClick="btnyolla_OnClick" ></asp:Button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-8">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Şifre Değiştir</h5>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Default.aspx"> <i class="fa fa-home"></i> </a>
                            </li>
                            <li class="breadcrumb-item"><a href="#!">Ana Sayfa</a>
                            </li>
                        </ul>
                    </div>
                    <div class="p-15 p-b-0 breadcrumb-item" style="margin-left: 1300px">
                        <form class="form-material">
                            <div class="form-group form-primary">
                                <input type="text" name="footer-email" class="form-control" style="width: 200px; color: aliceblue ">
                                <span class="form-bar"></span>
                                <label class="float-label">
                                    <br/>
                                    <i class="fa fa-search m-r-10"></i>
                                    Ara
                                </label>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </p>
</asp:Content>

