<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Randevular.aspx.cs" Inherits="Project.Web.Dashboard.Randevular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scriptmanager1" runat="server"/>
        <div class="clearfix">
            <asp:UpdatePanel ID="updatepanelgelirler" runat="server">
                <ContentTemplate>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive" style="overflow: visible">
                                <asp:GridView runat="server" ID="gridrandevular" Width="100%" CssClass="table table-bordered table-hover table-active" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Sqldatasource1">
                                    
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
                                        <asp:BoundField DataField="Saat" HeaderText="Saat" SortExpression="Saat" />
                                        <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
                                        <asp:BoundField DataField="IsTuru" HeaderText="IsTuru" SortExpression="IsTuru" />
                                        <asp:BoundField DataField="MusteriAd" HeaderText="MusteriAd" SortExpression="MusteriAd" />
                                        <asp:BoundField DataField="MusteriSoyad" HeaderText="MusteriSoyad" SortExpression="MusteriSoyad" />
                                        <asp:BoundField DataField="MusteriTelefon" HeaderText="MusteriTelefon" SortExpression="MusteriTelefon" />
                                        <asp:BoundField DataField="Sehir" HeaderText="Sehir" SortExpression="Sehir" />
                                        <asp:BoundField DataField="Ilce" HeaderText="Ilce" SortExpression="Ilce" />
                                        <asp:BoundField DataField="AdresDetay" HeaderText="AdresDetay" SortExpression="AdresDetay" />
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
        <asp:SqlDataSource ID="Sqldatasource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbweb %>" SelectCommand="SELECT Randevular.Id, Randevular.Tarih, Randevular.Saat, Randevular.Detay, Randevular.IsTuru, Musteriler.MusteriAd, Musteriler.MusteriSoyad, Musteriler.MusteriTelefon, Adresler.Sehir, Adresler.Ilce, Adresler.AdresDetay FROM Randevular INNER JOIN Musteriler ON Randevular.MusteriId = Musteriler.Id INNER JOIN Adresler ON Randevular.AdresId = Adresler.Id AND Musteriler.AdresId = Adresler.Id"> </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-8">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Randevular</h5>
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