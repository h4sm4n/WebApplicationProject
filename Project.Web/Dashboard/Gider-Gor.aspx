<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Main.Master" AutoEventWireup="true" CodeBehind="Gider-Gor.aspx.cs" Inherits="Project.Web.Dashboard.Gider_Gor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <asp:ScriptManager ID="scriptmanager1" runat="server" />
        <div class="clearfix">
            <asp:UpdatePanel ID="updatepanelgelirler" runat="server">
                <ContentTemplate>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive" style="overflow: visible">
                                <asp:GridView ID="gridgider" runat="server" Width="80%" CssClass="table table-bordered table-hover table-active" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowCommand="gridgider_RowCommand">

                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Ay" SortExpression="Ay" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ay") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi1" runat="server" controltovalidate="TextBox1" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Ay") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Yil" SortExpression="Yil" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Yil") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi2" runat="server" controltovalidate="TextBox2" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Yil") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Elektrik" SortExpression="Elektrik" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Elektrik") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi3" runat="server" controltovalidate="TextBox3" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Elektrik") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Su" SortExpression="Su" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Su") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi4" runat="server" controltovalidate="TextBox4" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Su") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dogalgaz" SortExpression="Dogalgaz" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Dogalgaz") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi5" runat="server" controltovalidate="TextBox5" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Dogalgaz") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Internet" SortExpression="Internet" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Internet") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi6" runat="server" controltovalidate="TextBox6" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Internet") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Maaslar" SortExpression="Maaslar" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Maaslar") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi7" runat="server" controltovalidate="TextBox7" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Maaslar") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Malzeme" SortExpression="Malzeme" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Malzeme") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi8" runat="server" controltovalidate="TextBox8" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Malzeme") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Ofis" SortExpression="Ofis" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Ofis") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi9" runat="server" controltovalidate="TextBox9" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Ofis") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Diger" SortExpression="Diger" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Diger") %>'></asp:TextBox>
                                                <asp:requiredfieldvalidator id="reqKullaniciAdi10" runat="server" controltovalidate="TextBox10" errormessage="Lütfen boş alan bırakmayınız." setfocusonerror="true" display="Dynamic"></asp:requiredfieldvalidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("Diger") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="True" HeaderText="Düzenle" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="True" HeaderText="Kaydı Sil" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" CommandArgument='<%# Bind("Id") %>' OnClientClick="return confirm('Kaydı silmek istediğinize emin misiniz?')"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
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
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbweb %>" DeleteCommand="DELETE FROM [Giderler] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Giderler] ([Ay], [Yil], [Elektrik], [Su], [Dogalgaz], [Internet], [Maaslar], [Malzeme], [Ofis], [Diger]) VALUES (@Ay, @Yil, @Elektrik, @Su, @Dogalgaz, @Internet, @Maaslar, @Malzeme, @Ofis, @Diger)" SelectCommand="SELECT * FROM [Giderler]" UpdateCommand="UPDATE [Giderler] SET [Ay] = @Ay, [Yil] = @Yil, [Elektrik] = @Elektrik, [Su] = @Su, [Dogalgaz] = @Dogalgaz, [Internet] = @Internet, [Maaslar] = @Maaslar, [Malzeme] = @Malzeme, [Ofis] = @Ofis, [Diger] = @Diger WHERE [Id] = @Id" >
             <DeleteParameters>
                 <asp:Parameter Name="Id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="Ay" Type="String" />
                 <asp:Parameter Name="Yil" Type="Int32" />
                 <asp:Parameter Name="Elektrik" Type="Decimal" />
                 <asp:Parameter Name="Su" Type="Decimal" />
                 <asp:Parameter Name="Dogalgaz" Type="Decimal" />
                 <asp:Parameter Name="Internet" Type="Decimal" />
                 <asp:Parameter Name="Maaslar" Type="Decimal" />
                 <asp:Parameter Name="Malzeme" Type="Decimal" />
                 <asp:Parameter Name="Ofis" Type="Decimal" />
                 <asp:Parameter Name="Diger" Type="Decimal" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Ay" Type="String" />
                 <asp:Parameter Name="Yil" Type="Int32" />
                 <asp:Parameter Name="Elektrik" Type="Decimal" />
                 <asp:Parameter Name="Su" Type="Decimal" />
                 <asp:Parameter Name="Dogalgaz" Type="Decimal" />
                 <asp:Parameter Name="Internet" Type="Decimal" />
                 <asp:Parameter Name="Maaslar" Type="Decimal" />
                 <asp:Parameter Name="Malzeme" Type="Decimal" />
                 <asp:Parameter Name="Ofis" Type="Decimal" />
                 <asp:Parameter Name="Diger" Type="Decimal" />
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
                            <h5 class="m-b-10">Giderler</h5>
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