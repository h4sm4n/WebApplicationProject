<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Banka-Ekle.aspx.cs" Inherits="Project.Web.Dashboard.Banka_Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="offset-3 primary-border font-weight-bold" style="width: 35%">Yeni Banka Bilgisi Girişi</h1>
    <br/><br/>
        <form id="form1" runat="server" class="offset-4">
            <div style="width:11%" class="offset-1">
                Banka Adı <asp:TextBox ID="txtad" CssClass="pull-right txtbox" runat="server"></asp:TextBox>
            </div>
            <br/><br/>
            <div style="width: 11%" class="offset-1">
                Şube Adı <asp:TextBox ID="txtsube" CssClass="pull-right txtbox" runat="server"></asp:TextBox>
            </div>
            <br>
            <br>
            <div style="width: 11%" class="offset-1">
                Hesap No <asp:TextBox ID="txthesapno" CssClass="pull-right txtbox" runat="server"></asp:TextBox>
            </div>
            <br>
            <br>
            <div style="width: 11%" class="offset-1">
                Iban No <asp:TextBox ID="txtiban" CssClass="pull-right txtbox" style="" runat="server">TR</asp:TextBox>
            </div>
            <br>
            <br>
            <div style="width: 11%" class="offset-1">
                Detay <asp:TextBox ID="txtdetay" CssClass="pull-right txtbox" runat="server" TextMode="MultiLine" Height="59px" Width="160px"></asp:TextBox>
            </div>
            <br />
            <br />
            <br />
            <br/>
            <div style="width: 25%">
                <asp:Button CssClass="button offset-4" Text="Ekle" Width="25%" runat="server" ID="btnekle" OnClick="btnekle_Click"/>
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
                            <h5 class="m-b-10">Yeni Banka Girişi</h5>
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
                    <div class="p-15 p-b-0 breadcrumb-item" style="margin-left: 10px">
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
