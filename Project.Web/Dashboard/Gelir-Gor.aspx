<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Gelir-Gor.aspx.cs" Inherits="Project.Web.Dashboard.Gelir_Gor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>







<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="foorm1" runat="server">
        <asp:ScriptManager ID="scriptmanager1" runat="server" />
        <div class="clearfix">
        <asp:UpdatePanel ID="updatepanelgelirler" runat="server">
            <ContentTemplate>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive" style="overflow: visible">
                            <asp:GridView ID="gridgelir" runat="server" Width="80%" CssClass="table table-bordered table-hover table-active" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowCommand="gridgelir_RowCommand">
                                 
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="GelirTipi" SortExpression="GelirTipi">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" MaxLength="49" Text='<%# Bind("GelirTipi") %>'></asp:TextBox>
                                            <asp:requiredfieldvalidator id="reqKullaniciAdi1" runat="server" controltovalidate="TextBox1" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("GelirTipi") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="FaturaNo" SortExpression="FaturaNo">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" TextMode="Number" runat="server" Text='<%# Bind("FaturaNo") %>'></asp:TextBox>
                                            <asp:requiredfieldvalidator id="reqKullaniciAdi2" runat="server" controltovalidate="TextBox2" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("FaturaNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Ay" SortExpression="Ay">
                                        <EditItemTemplate>
                                            <input id="TextBox3" runat="server" type="number" min="1" max="12" value='<%# Bind("Ay") %>'/>
                                            <asp:requiredfieldvalidator id="reqKullaniciAdi3" runat="server" controltovalidate="TextBox3" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Ay") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Yil" SortExpression="Yil">
                                        <EditItemTemplate>
                                            <input id="TextBox4" type="number" min="2017" max="2023" runat="server" value='<%# Bind("Yil") %>'/>
                                            <asp:requiredfieldvalidator id="reqKullaniciAdi4" runat="server" controltovalidate="TextBox4" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Yil") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="FaturaTarih" SortExpression="FaturaTarih">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" TextMode="DateTimeLocal" Text='<%# Bind("FaturaTarih") %>' ReadOnly="True"></asp:TextBox>
<%--                                            <asp:requiredfieldvalidator id="reqKullaniciAdi5" runat="server" controltovalidate="TextBox5" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>--%>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("FaturaTarih") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Muhasebeci" SortExpression="Muhasebeci">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" MaxLength="49" Text='<%# Bind("Muhasebeci") %>'></asp:TextBox>
                                            <asp:requiredfieldvalidator id="reqKullaniciAdi6" runat="server" controltovalidate="TextBox6" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Muhasebeci") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="True" HeaderText="Düzenle">
                                        <EditItemTemplate>
                                            <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir"></asp:Button>
                                            &nbsp;<asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal"></asp:Button>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Button ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle"></asp:Button>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="True" HeaderText="Kaydı Sil">
                                        <ItemTemplate>
                                            <asp:Button ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" CommandArgument='<%# Bind("Id") %>' OnClientClick="return confirm('Kaydı silmek istediğinize emin misiniz?')"></asp:Button>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFFCC" ForeColor="#003399" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                                 
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbweb %>" DeleteCommand="DELETE FROM [Gelirler] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Gelirler] ([GelirTipi], [FaturaNo], [Ay], [Yil], [FaturaTarih], [Muhasebeci]) VALUES (@GelirTipi, @FaturaNo, @Ay, @Yil, @FaturaTarih, @Muhasebeci)" SelectCommand="SELECT * FROM [Gelirler]" UpdateCommand="UPDATE [Gelirler] SET [GelirTipi] = @GelirTipi, [FaturaNo] = @FaturaNo, [Ay] = @Ay, [Yil] = @Yil, [FaturaTarih] = @FaturaTarih, [Muhasebeci] = @Muhasebeci WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="GelirTipi" Type="String" />
            <asp:Parameter Name="FaturaNo" Type="String" />
            <asp:Parameter Name="Ay" Type="String" />
            <asp:Parameter Name="Yil" Type="String" />
            <asp:Parameter DbType="Date" Name="FaturaTarih" />
            <asp:Parameter Name="Muhasebeci" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="GelirTipi" Type="String" />
            <asp:Parameter Name="FaturaNo" Type="String" />
            <asp:Parameter Name="Ay" Type="String" />
            <asp:Parameter Name="Yil" Type="String" />
            <asp:Parameter DbType="Date" Name="FaturaTarih" />
            <asp:Parameter Name="Muhasebeci" Type="String" />
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
                            <h5 class="m-b-10">Gelirler</h5>
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