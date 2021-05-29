<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Gider-Ekle.aspx.cs" Inherits="Project.Web.Dashboard.Gider_Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="foormgider" runat="server" class="offset-4">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="clearfix" style="align-items: center ">
            <h1 class="offset-0 primary-border font-weight-bold" style="width: 37%">Yeni Gider Girişi</h1>
            <br/><br/>
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black">Ay:</label> 
                <br />
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtay" MaxLength="8" runat="server" />
            </div>

            <br />
            <br />

            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black">Yıl: </label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtyil" MaxLength="4" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ValidationExpression="((\d+))$"
                                                ControlToValidate="txtyil" />
            </div>

            <br />
            <br />

            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black">Elektrik Faturası: </label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtelektrik" runat="server"/>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="((\d+)((\.\d{1,2})?))$"
                                                ControlToValidate="txtelektrik" />
            </div>

            <br />
            <br />

            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Su Faturası:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtsu" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="((\d+)((\.\d{1,2})?))$"
                                                ControlToValidate="txtsu" />
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black">Doğalgaz Faturası:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtdogalgaz" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression="((\d+)((\.\d{1,2})?))$"
                                                ControlToValidate="txtdogalgaz" />
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> İnternet Faturası:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtinternet" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ValidationExpression="((\d+)((\.\d{1,2})?))$"
                                                ControlToValidate="txtinternet" />
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Maaşlar:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtmaas" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ValidationExpression="((\d+)((\.\d{1,2})?))$"
                                                ControlToValidate="txtmaas" />
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Malzemeler:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtmalzeme" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ValidationExpression="((\d+)((\.\d{1,2})?))$"
                                                ControlToValidate="txtmalzeme" />
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Ofis Giderleri:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtofis" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ValidationExpression="((\d+)((\.\d{1,2})?))$"
                                                ControlToValidate="txtofis" />
            </div>

            <br />
            <br />
            
            <div style="width:20%" class="offset-0">
                <label class="offset-4" style="color: black"> Diğer:</label>
                <br/>
                <asp:TextBox CssClass="pull-right txtbox" style="width: 175px" ID="txtdiger" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ValidationExpression="((\d+)((\.\d{1,2})?))$"
                                                ControlToValidate="txtdiger" />
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
                            <h5 class="m-b-10">Gider Girişi</h5>
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