<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Bilgilerim-Duzenle.aspx.cs" Inherits="Project.Web.User.Bilgilerim_Duzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server" id="form1">
        <asp:ScriptManager runat="server" id="scriptmanager1" />
        <asp:UpdatePanel runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
            <ContentTemplate>
<div class="main-content">
    <div class="container mt-7" >
      <!-- Table -->
        <div class="row" >
        <div class="col-xl-8 m-auto order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">Bilgilerim</h3>
                </div>
                  <div class="col-4 text-right">
                    <asp:Button runat="server" ID="btnduzenle"  CssClass="btn btn-sm btn-primary" Text="Düzenle" OnClick="btnduzenle_OnClick"/>
                </div>
              </div>
            </div>
            <div class="card-body">
                <h6 class="heading-small text-muted mb-4">User information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="">Kullanıcı Adı</label>
                          <asp:TextBox runat="server" id="txtkullaniciadi" CssClass="form-control form-control-alternative"/>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="txtemail">Email</label>
                          <asp:TextBox runat="server" TextMode="Email" MaxLength="90" id="txtemail" CssClass="form-control form-control-alternative"/>
                          </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="txtad">Ad</label>
                          <asp:TextBox runat="server" id="txtad" CssClass="form-control form-control-alternative" MaxLength="20" />
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="txtsoyad">Soyad</label>
                          <asp:TextBox runat="server" id="txtsoyad" CssClass="form-control form-control-alternative" MaxLength="20" />
                      </div>
                    </div>
                  </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group focused">
                                <label class="form-control-label" for="txttc">TC Kimlik No</label>
                                <asp:TextBox runat="server" id="txttc" TextMode="Number" CssClass="form-control form-control-alternative" MaxLength="11" />
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group focused">
                                <label class="form-control-label" for="txttel">Telefon</label>
                                <asp:TextBox runat="server" id="txttel" TextMode="Number" CssClass="form-control form-control-alternative" MaxLength="11" />
                            </div>
                        </div>
                    </div>
                </div>
                  <!-- Address -->
                <h6 class="heading-small text-muted mb-4">Contact information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group focused">
                        <label class="form-control-label" for="txtaddress">Addres</label>
                          <asp:TextBox runat="server" id="txtaddress" CssClass="form-control form-control-alternative" MaxLength="90" />
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="txtsehir">Şehir</label>
                          <asp:TextBox runat="server" id="txtsehir" CssClass="form-control form-control-alternative" Text="Aydın" />
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="txtilce">İlçe</label>
                          <asp:DropDownList runat="server" id="txtilce" CssClass="form-control form-control-alternative">
                              <asp:ListItem>Nazilli</asp:ListItem>
                              <asp:ListItem>Bozdoğan</asp:ListItem>
                              <asp:ListItem>Çine</asp:ListItem>
                              <asp:ListItem>Efeler</asp:ListItem>
                              <asp:ListItem>Karacasu</asp:ListItem>
                              <asp:ListItem>Köşk</asp:ListItem>
                              <asp:ListItem>Kuyucak</asp:ListItem>
                              <asp:ListItem>Sultanhisar</asp:ListItem>
                              <asp:ListItem>Umurlu</asp:ListItem>
                              <asp:ListItem>Yenipazar</asp:ListItem>
                          </asp:DropDownList>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" ></label>
                          <asp:Button runat="server" ID="btnguncelle"  CssClass="form-control form-control-alternative btn btn-sm btn-primary" Text="Güncelle" OnClick="btnguncelle_OnClick"/>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnduzenle" EventName="Click"/> 
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
                            <h5 class="m-b-10">BİLGİLERİMİ DÜZENLE</h5>
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
