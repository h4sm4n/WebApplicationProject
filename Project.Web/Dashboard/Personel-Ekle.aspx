<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Personel-Ekle.aspx.cs" Inherits="Project.Web.Dashboard.Personel_Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="formpersonel" runat="server" class="offset-4">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="clearfix" style="align-items: center; margin-left: 0px;">
            <h1 class="offset-0 primary-border font-weight-bold" style="width: 37%">Yeni Personel Girişi</h1>
            <br/><br/>

            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black">Ad: </label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" MaxLength="20" style="width: 175px" ID="txtad" runat="server"/>
            </div>

            <br />
            <br />

            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Soyad:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" MaxLength="20" style="width: 175px" ID="txtsoyad" runat="server"  />
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black">Departman:</label>
                <br/>
                <asp:DropDownList CssClass="pull-right txtbox" ID="drpdepartman" runat="server" Height="27px" Width="182px">
                    <asp:ListItem>Ofis</asp:ListItem>
                    <asp:ListItem>Saha</asp:ListItem>
                    <asp:ListItem>Muhasebe</asp:ListItem>
                </asp:DropDownList>
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> TC No:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtPersoneltc" runat="server" MaxLength="11" TextMode="Number" />
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Email:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" MaxLength="30" style="width: 175px" ID="txtemail" runat="server" TextMode="Email"/>
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Maaş:</label>
                <br/>
                <asp:TextBox ID="txtmaas" TextMode="Number"  MaxLength="5" CssClass="pull-right txtbox" style="width: 175px" runat="server" ></asp:TextBox>
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Telefon:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" MaxLength="15" style="width: 175px" ID="txttel" runat="server" TextMode="Phone"/>
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
                            <h5 class="m-b-10">Personel Ekle</h5>
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