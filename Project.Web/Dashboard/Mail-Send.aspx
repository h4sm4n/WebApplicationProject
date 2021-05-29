<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Mail-Send.aspx.cs" Inherits="Project.Web.Dashboard.Mail_Send" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:UpdatePanel runat="server" ID="update1" UpdateMode="Conditional" ChildrenAsTriggers="False">
            <ContentTemplate>
        <div class="clearfix">
            <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" id="form_container">
                    <h2>Mail Gönderme Ekranı</h2>
                    <form role="form" method="post" id="reused_form" >
                        <asp:ScriptManager runat="server" ID="script1" />
                        <div class="row">
                                    <div class="col-sm-12 form-group">
                                        <label for="message"> *Konu:</label>
                                        <input runat="server" class="form-control" type="text" name="konu" id="konu" maxlength="100"></input>
                                    </div>
                                </div>
                                <div class="row">
                            <div class="col-sm-12 form-group">
                                <label for="message"> *Mesaj:</label>
                                <textarea runat="server" class="form-control" type="textarea" name="message" id="message" maxlength="6000" rows="7"></textarea>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="tcno">*Müşteri TC:</label>
                                <asp:Button runat="server" ID="btnsorgula" CssClass="pull-right" style="font-size: 12px; height: 25px; text-align:end" Text="Sorgula" OnClick="btnsorgula_OnClick"></asp:Button>
                                <input runat="server" type="number" class="form-control" id="tcno" name="tcno">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label for="mail">*Müşteriye ait Mail:</label>
                                <input runat="server" type="text" class="form-control" id="emailto" name="emailto" readonly="readonly">
                            </div>
                        </div>
                            
                        
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="name"> Gönderen:</label>
                                <input runat="server" type="text" class="form-control" id="name" name="name" value="Pamuk İnşaat" readonly="readonly" required>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label for="email"> Email:</label>
                                <input runat="server" type="email" class="form-control" id="email" name="email" value="insaatpamuk@gmail.com" readonly="readonly" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <div runat="server" id="success_message" style="width:100%; height:100%;"> <h3>Mail başarıyla gönderildi.</h3> </div>
                                <div runat="server" id="error_message" style="width:100%; height:100%;"> <h3>Error</h3> Bir hata oluştu. </div>
                            </div>
                            <div class="col-sm-6 form-group">
                                <asp:Button runat="server" type="submit" class="btn btn-lg btn-primary pull-right" id="btngonder" Text="Maili Gönder" OnClick="btngonder_OnClick"></asp:Button>
                            </div>
                        </div>
                            
                    </form>
                </div>
            </div>
        </div>
        </div>
    </ContentTemplate>
        <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnsorgula" EventName="Click"/>
    </Triggers>
        </asp:UpdatePanel>
    </form>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-8">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Mail Gönder</h5>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Anasayfa.aspx"> <i class="fa fa-home"></i> </a>
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