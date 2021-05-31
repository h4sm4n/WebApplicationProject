<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Randevu-Olustur.aspx.cs" Inherits="Project.Web.User.Randevu_Olustur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="foormgider" runat="server" class="offset-4">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="clearfix" style="align-items: center ">
            <h1 class="offset-0 primary-border font-weight-bold" style="width: 37%">Randevu Al</h1>
            <br/><br/>
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black">Adres:</label> 
                <br />
                <asp:DropDownList CssClass="pull-right txtbox" style="width: 175px" ID="drpadres" runat="server" />
            </div>

            <br />
            <br />

            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black">Tarih: </label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txttarih" TextMode="Date" runat="server" />
            </div>

            <br />
            <br />

            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black">Saat: </label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtsaat" TextMode="Time" runat="server"/>
            </div>

            <br />
            <br />

            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Detay:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" MaxLength="149" style="width: 175px" ID="txtdetay" TextMode="MultiLine" runat="server" />
                
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black">İş Türü:</label>
                <br/>
                <asp:DropDownList CssClass="pull-right txtbox" style="width: 175px" ID="drpisturu" runat="server" >
                    <asp:ListItem>Mantolama</asp:ListItem>
                    <asp:ListItem>Tadilat</asp:ListItem>
                    <asp:ListItem>Dekorasyon</asp:ListItem>
                    <asp:ListItem>Dış Mekan Tasarımı</asp:ListItem>
                    <asp:ListItem>İnşaat</asp:ListItem>
                </asp:DropDownList>
                
            </div>

            <br />
            <br />
        
            <div style="width:20%">
                <asp:Button CssClass=" btn-primary offset-5" Text="Oluştur" Width="32%" runat="server" ID="btnekle" OnClick="btnekle_OnClick"/>
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
                            <h5 class="m-b-10">Randevu Oluştur</h5>
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