<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Personeller.aspx.cs" Inherits="Project.Web.Dashboard.Personeller" %>
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
                                <asp:GridView runat="server" ID="gridnotlar" Width="80%" CssClass="table table-bordered table-hover table-active" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                    
                                    <Columns>
                                        <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                                            <EditItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="PersonelAdi" SortExpression="PersonelAdi">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" MaxLength="20" runat="server" Text='<%# Bind("PersonelAdi") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi1" runat="server" controltovalidate="TextBox1" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("PersonelAdi") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="PersonelSoyadi" SortExpression="PersonelSoyadi">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" MaxLength="20" runat="server" Text='<%# Bind("PersonelSoyadi") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi2" runat="server" controltovalidate="TextBox2" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>

                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("PersonelSoyadi") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="DepartmanId" SortExpression="DepartmanId">
                                            <EditItemTemplate>
                                                <asp:Label ID="TextBox3" runat="server" Text='<%# Bind("DepartmanId") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("DepartmanId") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="GirisTarihi" SortExpression="GirisTarihi">
                                            <EditItemTemplate>
                                                <asp:Label ID="TextBox4" runat="server" Text='<%# Bind("GirisTarihi") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("GirisTarihi") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="PersonelTc" SortExpression="PersonelTc">
                                            <EditItemTemplate>
                                                <asp:Label ID="TextBox5" runat="server" Text='<%# Bind("PersonelTc") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("PersonelTc") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="PersonelMail" SortExpression="PersonelMail">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox6" runat="server" MaxLength="35" TextMode="Email" Text='<%# Bind("PersonelMail") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi6" runat="server" controltovalidate="TextBox6" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("PersonelMail") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="PersonelMaas" SortExpression="PersonelMaas">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox7" runat="server" MaxLength="5" TextMode="Number" Text='<%# Bind("PersonelMaas") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi7" runat="server" controltovalidate="TextBox7" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("PersonelMaas") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="PersonelTelefon" SortExpression="PersonelTelefon">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox8" MaxLength="11" runat="server" TextMode="Number" Text='<%# Bind("PersonelTelefon") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi8" runat="server" controltovalidate="TextBox8" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("PersonelTelefon") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="True" HeaderText="Düzenle">
                                            <EditItemTemplate>
                                                <asp:Button ID="btnGuncelle" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir"></asp:Button>
                                                &nbsp;<asp:Button ID="btnIptal" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal"></asp:Button>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Button ID="btnDuzenle" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle"></asp:Button>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="True" HeaderText="Sil">
                                            <ItemTemplate>
                                                <asp:Button ID="btnSil" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil"></asp:Button>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbweb %>" DeleteCommand="DELETE FROM [Personeller] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Personeller] ([PersonelAdi], [PersonelSoyadi], [DepartmanId], [GirisTarihi], [PersonelTc], [PersonelMail], [PersonelMaas], [PersonelTelefon]) VALUES (@PersonelAdi, @PersonelSoyadi, @DepartmanId, @GirisTarihi, @PersonelTc, @PersonelMail, @PersonelMaas, @PersonelTelefon)" SelectCommand="SELECT [Id], [PersonelAdi], [PersonelSoyadi], [DepartmanId], [GirisTarihi], [PersonelTc], [PersonelMail], [PersonelMaas], [PersonelTelefon] FROM [Personeller]" UpdateCommand="UPDATE [Personeller] SET [PersonelAdi] = @PersonelAdi, [PersonelSoyadi] = @PersonelSoyadi, [DepartmanId] = @DepartmanId, [GirisTarihi] = @GirisTarihi, [PersonelTc] = @PersonelTc, [PersonelMail] = @PersonelMail, [PersonelMaas] = @PersonelMaas, [PersonelTelefon] = @PersonelTelefon WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PersonelAdi" Type="String" />
                <asp:Parameter Name="PersonelSoyadi" Type="String" />
                <asp:Parameter Name="DepartmanId" Type="Int32" />
                <asp:Parameter DbType="Date" Name="GirisTarihi" />
                <asp:Parameter Name="PersonelTc" Type="String" />
                <asp:Parameter Name="PersonelMail" Type="String" />
                <asp:Parameter Name="PersonelMaas" Type="Decimal" />
                <asp:Parameter Name="PersonelTelefon" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PersonelAdi" Type="String" />
                <asp:Parameter Name="PersonelSoyadi" Type="String" />
                <asp:Parameter Name="DepartmanId" Type="Int32" />
                <asp:Parameter DbType="Date" Name="GirisTarihi" />
                <asp:Parameter Name="PersonelTc" Type="String" />
                <asp:Parameter Name="PersonelMail" Type="String" />
                <asp:Parameter Name="PersonelMaas" Type="Decimal" />
                <asp:Parameter Name="PersonelTelefon" Type="String" />
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
                            <h5 class="m-b-10">Personeller</h5>
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