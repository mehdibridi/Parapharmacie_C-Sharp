<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicamentList.aspx.cs" Inherits="ProjetParaM.MedicamentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 99%;
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
            height: 111px;
            width: 30%;
        }
        .auto-style6 {
            height: 111px;
            width: 39%;
        }
        .auto-style4 {
            height: 111px;
        }
        .auto-style12 {
            height: 373px;
            direction: ltr;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            height: 142px;
            width: 681px;
        }
        .auto-style20 {
            width: 681px;
        }
        </style>
</head>
<body style="padding:0px;margin:0px;">
    <form id="form1" runat="server">
        
    <table class="auto-style1" style="background-color: #EFEFEF">
        <tr>
            <td class="auto-style2" style="padding:0px;margin:0px; background-color: #FFFFFF;">
                <table class="auto-style3">
                    <tr style="background-color: #FFFFFF;">
                        <td class="auto-style5" >
                            <asp:Image ID="Image1" runat="server" Height="109px" Width="351px" ImageUrl="~/Images/logoPara.png" />
                        </td>
                        <td class="auto-style6" style="text-align: center"  >
                            Rechercher<br />
                            <asp:TextBox ID="TextBox1" runat="server" Width="262px" BorderColor="#009999" BorderStyle="Solid" Height="19px"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" BackColor="#009999" Height="27px" Text="OK" Width="34px" />
                        </td>
                        <td class="auto-style4" style="border-style: 10; border-width: 10px; text-align: right; padding-right: 5px;" >&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#009999" NavigateUrl="~/Login.aspx">Deconnecter</asp:HyperLink>
&nbsp;
                            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#009999">Connexion</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#009999" NavigateUrl="~/Panier.aspx">Mon panier</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="border-bottom-style: solid; border-bottom-width: 5px; border-bottom-color: #333333;">
                                    <asp:Menu ID="Menu2" runat="server" BorderColor="White" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="White" Orientation="Horizontal" BackColor="#009999" Width="100%"  Font-Bold="True" RenderingMode="List" OnMenuItemClick="Menu2_MenuItemClick">
                                        <DynamicHoverStyle BackColor="White" Font-Size="XX-Large" />
                                        <Items>

                                            <asp:MenuItem Text="Acceuil" Value="Acceuil" NavigateUrl="~/MenuClient.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Bio" Value="Bio"></asp:MenuItem>
                                            <asp:MenuItem Text="Bébé" Value="Bébé"></asp:MenuItem>
                                            <asp:MenuItem Text="Médicament" Value="Médicament" Selected="True"></asp:MenuItem>
                                            <asp:MenuItem Text="Santé" Value="Santé"></asp:MenuItem>
                                            <asp:MenuItem Text="Visage" Value="Visage"></asp:MenuItem>
                                            
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
            <td class="auto-style12" style="padding: 30px 10px 10px 200px; margin: 10px; text-align: center; vertical-align: middle">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="NomProduit" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="240px" CellPadding="4" ForeColor="#333333" CssClass="auto-style21">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BorderStyle="Solid" BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        <table class="auto-style18" style="border: 1px solid #000000">
                            <tr>
                                <td class="auto-style19" style="text-align: center">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="140px" ImageUrl='<%# Eval("photo") %>'  Width="287px"  CommandName="ajouter"  OnCommand="ImageButton1_Command" CommandArgument='<%# Eval("NomProduit") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; background-color: #009999;" class="auto-style20">
                                    <asp:Label ID="nomProduit" runat="server" Text='<%# Eval("NomProduit") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; background-color: #009999;" class="auto-style20">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Prix") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [NomProduit], [Prix], [photo] FROM [Produit] WHERE ([Catégorie] = @Catégorie)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Catégorie" SessionField="Page" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
        
    </form>
</body>
</html>
