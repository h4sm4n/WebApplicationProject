<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Randevularim.aspx.cs" Inherits="Project.Web.User.Randevularim" %>
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
                    <asp:GridView ID="gridbanka" runat="server" OnRowCommand="gridbanka_OnRowCommand" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-bordered table-hover table-active" DataKeyNames="Id" DataSourceID="datasource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                      
                        <Columns>
                            <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MusteriId" SortExpression="MusteriId">
                                <EditItemTemplate>
                                    <asp:Label ID="TextBox5" runat="server" Text='<%# Bind("MusteriId") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("MusteriId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="AdresId" SortExpression="AdresId">
                                <EditItemTemplate>
                                    <asp:Label ID="TextBox4" runat="server" Text='<%# Bind("AdresId") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("AdresId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tarih" SortExpression="Tarih">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" Text='<%# Bind("Tarih") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Tarih") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Saat" SortExpression="Saat">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Time" Text='<%# Bind("Saat") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Saat") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Detay" SortExpression="Detay">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" MaxLength="145" runat="server" Text='<%# Bind("Detay") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Detay") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="IsTuru" SortExpression="IsTuru">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" MaxLength="11" runat="server" Text='<%# Bind("IsTuru") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("IsTuru") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="True" HeaderText="Düzenle">
                                <EditItemTemplate>
                                    <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir"></asp:Button>
                                    &nbsp;<asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal"></asp:Button>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Button ID="LinkButton11" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle"></asp:Button>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="True" HeaderText="Sil">
                                <ItemTemplate>
                                    <asp:Button ID="LinkButton12" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" CommandArgument='<%# Bind("Id") %>' OnClientClick="return confirm('Kaydı silmek istediğinize emin misiniz?')"></asp:Button>
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
        <asp:SqlDataSource ID="datasource1" OnSelecting="datasource1_OnSelecting" runat="server" ConnectionString="<%$ ConnectionStrings:dbweb %>" DeleteCommand="DELETE FROM [Randevular] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Randevular] ([MusteriId], [AdresId], [Tarih], [Saat], [Detay], [IsTuru]) VALUES (@MusteriId, @AdresId, @Tarih, @Saat, @Detay, @IsTuru)" SelectCommand="SELECT * FROM [Randevular] WHERE ([MusteriId] = @MusteriId)" UpdateCommand="UPDATE [Randevular] SET [MusteriId] = @MusteriId, [AdresId] = @AdresId, [Tarih] = @Tarih, [Saat] = @Saat, [Detay] = @Detay, [IsTuru] = @IsTuru WHERE [Id] = @Id" >
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MusteriId" Type="Int32" />
                <asp:Parameter Name="AdresId" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Tarih" />
                <asp:Parameter DbType="Time" Name="Saat" />
                <asp:Parameter Name="Detay" Type="String" />
                <asp:Parameter Name="IsTuru" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter  DefaultValue="0" Name="MusteriId" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="MusteriId" Type="Int32" />
                <asp:Parameter Name="AdresId" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Tarih" />
                <asp:Parameter DbType="Time" Name="Saat" />
                <asp:Parameter Name="Detay" Type="String" />
                <asp:Parameter Name="IsTuru" Type="String" />
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
                            <h5 class="m-b-10">Randevularım</h5>
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