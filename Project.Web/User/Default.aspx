<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project.Web.User.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 30%; margin-right: 30%">
        <h4 style="background-color:aliceblue">Sayın <span style="background-color: aliceblue; font-style: italic; font-size: 30px "><%= Session["email"].ToString() %></span>,  Online İşlemlere hoşgeldiniz. Dilediğiniz işlemi Menü aracılığıyla gerçekleştirebilirsiniz.</h4>
        <br />
        <br />
        <div class="clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3" id="form_container">
                        <div class="col-sm-12 form-group">
                            <h3 style="background-color: wheat; color: black; margin-left: 150px; width: 300px">Yaklaşan Randevular</h3>
                        </div>
                        <div class="col-sm-12 form-group">
                            <h5 style="background-color: coral; margin-left: 100px; width: 500px"> Yaklaşan randevunuz bulunmamaktadır.</h5>
                        </div>
                        
                    </div>
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
                            <h5 class="m-b-10">Ana Sayfa</h5>
                            <p class="m-b-0">Online İşlemlere Hoşgeldiniz</p>
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