<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Isler.aspx.cs" Inherits="Project.Web.Dashboard.Isler" %>
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
                                <asp:GridView runat="server" ID="gridisler" Width="80%" CssClass="table table-bordered table-hover table-active" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowCommand="gridisler_OnRowCommand">

                                    <Columns>
                                        <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                                            <EditItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="IsTuru" SortExpression="IsTuru">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" MaxLength="15" runat="server" Text='<%# Bind("IsTuru") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi6" runat="server" controltovalidate="TextBox1" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("IsTuru") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="BaslangicTarihi" SortExpression="BaslangicTarihi">
                                            <EditItemTemplate>
                                                <asp:Label ID="TextBox2" runat="server" Text='<%# Bind("BaslangicTarihi") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("BaslangicTarihi") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="BitisTarihi" SortExpression="BitisTarihi">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" TextMode="DateTimeLocal" runat="server" Text='<%# Bind("BitisTarihi") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi1" runat="server" controltovalidate="TextBox3" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("BitisTarihi") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Fiyat" SortExpression="Fiyat">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" MaxLength="6" Text='<%# Bind("Fiyat") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi2" runat="server" controltovalidate="TextBox4" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Fiyat") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="OdemePlani" SortExpression="OdemePlani">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox5" runat="server" MaxLength="15" Text='<%# Bind("OdemePlani") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi3" runat="server" controltovalidate="TextBox5" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("OdemePlani") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="MusteriTc" SortExpression="MusteriTc">
                                            <EditItemTemplate>
                                                <asp:Label ID="TextBox6" runat="server" Text='<%# Bind("MusteriTc") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("MusteriTc") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="PersonelTc" SortExpression="PersonelTc">
                                            <EditItemTemplate>
                                                <asp:Label ID="TextBox7" runat="server" Text='<%# Bind("PersonelTc") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("PersonelTc") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="AdresDetay" SortExpression="AdresDetay">
                                            <EditItemTemplate>
                                                <asp:Label ID="TextBox8" runat="server" Text='<%# Bind("AdresDetay") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("AdresDetay") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="True" HeaderText="Düzenle">
                                            <EditItemTemplate>
                                                <asp:Button ID="btnguncelle" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir"></asp:Button>
                                                &nbsp;<asp:Label ID="Label9" runat="server" Text=""></asp:Label> 
                                                &nbsp; <asp:Button ID="btniptal" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal"></asp:Button>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Button ID="btnduzenle" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle"></asp:Button>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="True" HeaderText="Sil">
                                            <ItemTemplate>
                                                <asp:Button ID="btnsil" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" CommandArgument='<%# Bind("Id") %>' OnClientClick="return confirm('Kaydı silmek istediğinize emin misiniz?')"></asp:Button>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbweb %>" DeleteCommand="DELETE FROM [Isler] WHERE [Id] = @Id" SelectCommand="SELECT Isler.Id, Isler.IsTuru, Isler.BaslangicTarihi, Isler.BitisTarihi, Isler.Fiyat, Isler.OdemePlani, Musteriler.MusteriTc, Personeller.PersonelTc, Adresler.AdresDetay FROM Isler INNER JOIN Musteriler ON Isler.MusteriId = Musteriler.Id INNER JOIN Personeller ON Isler.YetkiliPersonelId = Personeller.Id INNER JOIN Adresler ON Isler.AdresId = Adresler.Id AND Musteriler.AdresId = Adresler.Id AND Personeller.AdresId = Adresler.Id" UpdateCommand="UPDATE [Isler] SET [IsTuru] = @IsTuru, [BitisTarihi] = @BitisTarihi, [Fiyat] = @Fiyat, [OdemePlani] = @OdemePlani WHERE [Id] = @Id
       ">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32"/>
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="IsTuru" Type="String"/>
                <asp:Parameter Name="BitisTarihi" Type="DateTime"/>
                <asp:Parameter Name="Fiyat" Type="Decimal"/>
                <asp:Parameter Name="OdemePlani" Type="String"/>
                <asp:Parameter Name="Id" Type="Int32"/>
            </UpdateParameters>
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
                            <h5 class="m-b-10">İşler</h5>
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