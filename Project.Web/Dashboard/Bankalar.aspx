<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Bankalar.aspx.cs" Inherits="Project.Web.Dashboard.Bankalar" %>
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
        <asp:GridView ID="gridbanka" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-bordered table-hover table-active" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" OnRowCommand="gridbanka_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                <EditItemTemplate>
                    <asp:Label ID="text1" runat="server" Text='<%# Bind("Id") %>' Font-Size="Small"></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Banka Adı" SortExpression="BankaAdi">
                <EditItemTemplate>
                    <asp:TextBox ID="text2" runat="server" MaxLength="49" Text='<%# Bind("BankaAdi") %>' Font-Size="Small"></asp:TextBox>
                    <asp:requiredfieldvalidator id="reqKullaniciAdi1" runat="server" controltovalidate="text2" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("BankaAdi") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Şube" SortExpression="BankaSube">
                <EditItemTemplate>
                    <asp:TextBox ID="text3" runat="server" MaxLength="49" Text='<%# Bind("BankaSube") %>' Font-Size="Small"></asp:TextBox>
                    <asp:requiredfieldvalidator id="reqKullaniciAdi2" runat="server" controltovalidate="text3" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("BankaSube") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hesap No" SortExpression="HesapNo">
                <EditItemTemplate>
                    <asp:TextBox ID="text4" runat="server" MaxLength="15" TextMode="Number" Text='<%# Bind("HesapNo") %>' Font-Size="Small"></asp:TextBox>
                    <asp:requiredfieldvalidator id="reqKullaniciAdi3" runat="server" controltovalidate="text4" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("HesapNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Iban" SortExpression="Iban">
                <EditItemTemplate>
                    <asp:TextBox ID="text5" runat="server" MaxLength="26" Text='<%# Bind("Iban") %>' Font-Size="Small"></asp:TextBox>
                    <asp:requiredfieldvalidator id="reqKullaniciAdi4" runat="server" controltovalidate="text5" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Iban") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Banka Tip"  SortExpression="BankaTip">
                <EditItemTemplate>
                    <asp:TextBox ID="text6" runat="server" MaxLength="15" Text='<%# Bind("BankaTip") %>' Font-Size="Small"></asp:TextBox>
                    <asp:requiredfieldvalidator id="reqKullaniciAdi5" runat="server" controltovalidate="text6" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("BankaTip") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Banka Detay"  SortExpression="BankaDetay">
                <EditItemTemplate>
                    <asp:TextBox ID="text7" MaxLength="49" runat="server" Text='<%# Bind("BankaDetay") %>' Font-Size="Small"></asp:TextBox>
                    <asp:requiredfieldvalidator id="reqKullaniciAdi6" runat="server" controltovalidate="text7" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("BankaDetay") %>' Font-Size="Small"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Güncelle" HeaderStyle-Width="80px">
                <EditItemTemplate>
                    <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelle"></asp:Button>
                    <br />
                    <asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal"></asp:Button>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="LinkButton11" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle"></asp:Button>
                </ItemTemplate>
                <ControlStyle BackColor="#FFFFCC" CssClass="btn" ForeColor="Black" />
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle CssClass="edit-delete" ForeColor="Black" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Kaydı Sil" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Button ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil"  CssClass="btn" CommandArgument='<%# Bind("Id") %>' OnClientClick="return confirm('Kaydı silmek istediğinize emin misiniz?')"></asp:Button>
                </ItemTemplate>
                <ControlStyle BackColor="#FFFFCC" CssClass="btn" />
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle ForeColor="Black" />
            </asp:TemplateField>
        </Columns>
            <EditRowStyle HorizontalAlign="Center" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" HorizontalAlign="Center" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="#FFFFCC" ForeColor="#003399" HorizontalAlign="Center" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=WEBSITE;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Bankalar]" DeleteCommand="DELETE FROM [Bankalar] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Bankalar] ([BankaAdi], [BankaSube], [HesapNo], [Iban], [BankaTip], [BankaDetay]) VALUES (@BankaAdi, @BankaSube, @HesapNo, @Iban, @BankaTip, @BankaDetay)" UpdateCommand="UPDATE [Bankalar] SET [BankaAdi] = @BankaAdi, [BankaSube] = @BankaSube, [HesapNo] = @HesapNo, [Iban] = @Iban, [BankaTip] = @BankaTip, [BankaDetay] = @BankaDetay WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BankaAdi" Type="String" />
                <asp:Parameter Name="BankaSube" Type="String" />
                <asp:Parameter Name="HesapNo" Type="String" />
                <asp:Parameter Name="Iban" Type="String" />
                <asp:Parameter Name="BankaTip" Type="String" />
                <asp:Parameter Name="BankaDetay" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BankaAdi" Type="String" />
                <asp:Parameter Name="BankaSube" Type="String" />
                <asp:Parameter Name="HesapNo" Type="String" />
                <asp:Parameter Name="Iban" Type="String" />
                <asp:Parameter Name="BankaTip" Type="String" />
                <asp:Parameter Name="BankaDetay" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
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
                            <h5 class="m-b-10">Bankalar</h5>
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