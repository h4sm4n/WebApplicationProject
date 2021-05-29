<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Not-Ekle.aspx.cs" Inherits="Project.Web.Dashboard.Not_Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="formwork" runat="server" class="offset-4">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="clearfix" style="align-items: center ">
            <h1 class="offset-0 primary-border font-weight-bold" style="width: 37%">Yeni Not Girişi</h1>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Not:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtnot" runat="server" MaxLength="50" TextMode="MultiLine"/>
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Not Türü:</label>
                <br/>
                <asp:DropDownList ID="drptur" CssClass="pull-right txtbox" style="width: 175px" runat="server">
                    <asp:ListItem>İş</asp:ListItem>
                    <asp:ListItem>Müşteri</asp:ListItem>
                    <asp:ListItem>Önemli</asp:ListItem>
                    <asp:ListItem>Toplantı</asp:ListItem>
                    <asp:ListItem>Randevu</asp:ListItem>
                </asp:DropDownList>
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Alarm Tarihi:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtalarm" runat="server" TextMode="DateTimeLocal" />
            </div>
            
            <br />
            <br />

            <div style="width:20%">
                <asp:Button CssClass=" btn-primary offset-5" Text="Ekle" Width="25%" runat="server" ID="btnekle" OnClick="btnekle_OnClick"/>
            </div>
        </div>
    </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-8">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Not Ekle</h5>
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