<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListeProduits.aspx.cs" Inherits="ProjetParaM.ListeProduits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">




        .auto-style1 {
            width: 104%;
            height: 589px;
        }
        .auto-style2 {
            height: 120px;
        }
        .auto-style3 {
            width: 100%;
            height: 143px;
        }
        .auto-style5 {
            height: 122px;
            width: 32%;
        }
        .auto-style6 {
            height: 122px;
            width: 38%;
        }
        .auto-style4 {
            height: 122px;
        }
        .auto-style7 {
            width: 354px;
        }
        .auto-style8 {
            width: 347px;
        }
        .auto-style9 {
            width: 583px;
        }
        </style>
</head>
<body style="padding:0px;margin:0px;">
    <form id="form1" runat="server">
    <table class="auto-style1" style="background-color: #EFEFEF">
        <tr>
            <td colspan="3" class="auto-style2" style="padding:0px;margin:0px; background-color: #FFFFFF;">
                <table class="auto-style3">
                    <tr style="background-color: #FFFFFF;">
                        <td class="auto-style5" >
                            <asp:Image ID="Image1" runat="server" Height="114px" Width="351px" ImageUrl="~/Images/logoPara.png" />
                        </td>
                        <td class="auto-style6" style="text-align: center"  >
                            Rechercher<br />
                            <asp:TextBox ID="TextBox1" runat="server" Width="262px" BorderColor="#009999" BorderStyle="Solid" Height="19px"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" BackColor="#009999" Height="27px" Text="OK" Width="34px" />
                        </td>
                        <td class="auto-style4" style="border-style: 10; border-width: 10px; text-align: right; padding-right: 5px;" >&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#009999" NavigateUrl="~/Login.aspx">Deconnecter</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#009999">Connexion</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#009999">Mon panier</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="border-bottom-style: solid; border-bottom-width: 5px; border-bottom-color: #333333;">
                                    
                            <asp:Menu ID="Menu1" runat="server" BorderColor="White" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="White" Orientation="Horizontal" BackColor="#009999" Width="100%"  Font-Bold="True" RenderingMode="List">
                                        <DynamicHoverStyle BackColor="White" Font-Size="XX-Large" />
                                        <Items>
                                            <asp:MenuItem Text="Acceuil" Value="Acceuil" NavigateUrl="~/MenuAdmin.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Liste des utilisateurs" Value="Liste des utilisateurs" NavigateUrl="~/ListeUser.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Liste Produits" Value="Liste Produits" NavigateUrl="~/ListeProduits.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Liste Produits Acheter" Value="Liste Produits Acheter" NavigateUrl="~/ListAchat.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Nouveau Produit" Value="Nouveau Produit" NavigateUrl="~/newProduct.aspx"></asp:MenuItem>

                                        </Items>
                                        <StaticHoverStyle BackColor="#51BC10" Font-Size="XX-Large" ForeColor="#333333" />
                                        <StaticMenuItemStyle BorderColor="White" BorderStyle="None" BorderWidth="1px" HorizontalPadding="20px" />
                                    </asp:Menu>
                                            </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style8" style="padding: 0px 0px 0px 20px; margin: 0px 0px 0px 20px" >
                <div style="box-shadow:6px 6px 6px gray; text-align:center" class="auto-style9">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NomProduit" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="582px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="NomProduit" HeaderText="NomProduit" ReadOnly="True" SortExpression="NomProduit" />
                            <asp:BoundField DataField="Prix" HeaderText="Prix" SortExpression="Prix" />
                            <asp:BoundField DataField="Quantite" HeaderText="Quantite" SortExpression="Quantite" />
                            <asp:BoundField DataField="Catégorie" HeaderText="Catégorie" SortExpression="Catégorie" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#009999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Produit] WHERE [NomProduit] = @NomProduit" InsertCommand="INSERT INTO [Produit] ([NomProduit], [Prix], [Quantite], [Catégorie]) VALUES (@NomProduit, @Prix, @Quantite, @Catégorie)" SelectCommand="SELECT [NomProduit], [Prix], [Quantite], [Catégorie] FROM [Produit]" UpdateCommand="UPDATE [Produit] SET [Prix] = @Prix, [Quantite] = @Quantite, [Catégorie] = @Catégorie WHERE [NomProduit] = @NomProduit">
                        <DeleteParameters>
                            <asp:Parameter Name="NomProduit" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="NomProduit" Type="String" />
                            <asp:Parameter Name="Prix" Type="Double" />
                            <asp:Parameter Name="Quantite" Type="Int32" />
                            <asp:Parameter Name="Catégorie" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Prix" Type="Double" />
                            <asp:Parameter Name="Quantite" Type="Int32" />
                            <asp:Parameter Name="Catégorie" Type="String" />
                            <asp:Parameter Name="NomProduit" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
