<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Banka-Bilgileri.aspx.cs" Inherits="Project.Web.User.Banka_Bilgileri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="formm1" runat="server" style="width: 80%">
    <asp:ScriptManager ID="scriptmanager1" runat="server" />
    <div class="clearfix">
    <asp:UpdatePanel ID="updatepanelbankalar" runat="server">
    <ContentTemplate>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive" style="overflow: visible">
                    <asp:GridView ID="gridbanka" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-bordered table-hover table-active" DataKeyNames="Id" DataSourceID="datasource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                        
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="BankaAdi" HeaderText="BankaAdi" SortExpression="BankaAdi" />
                            <asp:BoundField DataField="BankaSube" HeaderText="BankaSube" SortExpression="BankaSube" />
                            <asp:BoundField DataField="HesapNo" HeaderText="HesapNo" SortExpression="HesapNo" />
                            <asp:BoundField DataField="Iban" HeaderText="Iban" SortExpression="Iban" />
                            <asp:BoundField DataField="BankaTip" HeaderText="BankaTip" SortExpression="BankaTip" />
                            <asp:BoundField DataField="BankaDetay" HeaderText="BankaDetay" SortExpression="BankaDetay" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                        
                    </asp:GridView>
                </div>
            </div>
        </div>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
        <asp:SqlDataSource ID="datasource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbweb %>" SelectCommand="SELECT * FROM [Bankalar]">

        </asp:SqlDataSource>
    </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-8">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Şirket Banka Bilgileri</h5>
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
