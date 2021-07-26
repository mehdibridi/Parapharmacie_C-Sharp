<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProjetParaM.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 589px;
        }
        .auto-style2 {
            height: 120px;
        }
        .auto-style3 {
            width: 100%;
            height: 143px;
        }
        .auto-style4 {
            height: 111px;
        }
        .auto-style5 {
            height: 111px;
            width: 30%;
        }
        .auto-style6 {
            height: 111px;
            width: 39%;
        }
        .auto-style12 {
            height: 373px;
            direction: ltr;
        }
        .auto-style15 {
            width: 41px;
            height: 45px;
        }
        .auto-style16 {
            height: 45px;
        }
        .auto-style17 {
            width: 34px;
            height: 45px;
            direction: ltr;
        }
        .auto-style18 {
            width: 100%;
            height: 357px;
        }
    </style>
</head>
<body  style="padding:0px;margin:0px;">
    <form id="form1" runat="server">
    <table class="auto-style1" style="background-color: #EFEFEF">
        <tr>
            <td colspan="3" class="auto-style2" style="padding:0px;margin:0px; background-color: #FFFFFF;">
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
                            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#009999" NavigateUrl="~/Login.aspx">Connexion</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#009999">Mon panier</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="border-bottom-style: solid; border-bottom-width: 5px; border-bottom-color: #333333;">
                                    <asp:Menu ID="Menu2" runat="server" BorderColor="White" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="White" Orientation="Horizontal" BackColor="#009999" Width="100%" OnMenuItemClick="Menu2_MenuItemClick" Font-Bold="True" RenderingMode="List">
                                        <DynamicHoverStyle BackColor="White" Font-Size="XX-Large" />
                                        <Items>

                                            <asp:MenuItem Text="Acceuil" Value="Acceuil" NavigateUrl="~/WebForm1.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Bio" Value="Bio" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Bébé" Value="Bébé" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Médicament" Value="Médicament" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Santé" Value="Santé" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Visage" Value="Visage" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                                            
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
            <td class="auto-style12" colspan="3">
                <img alt="" class="auto-style18" src="Images/5624bae76ce59-e-sante.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style17" style="width:33%">
                <br />
                QUI SOMME NOUS <br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                <br />
            </td>
            <td class="auto-style15"style="width:33%; margin-left: 3px;">QUI SOMME NOUS
                <br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG</td>
            <td class="auto-style16"style="width:33%">QUI SOMME NOUS
                <br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG<br />
                TEST TEST TEST TEST TEST TSESTSGSGGSGSGSG</td>
        </tr>
    </table>
    </form>
</body>
</html>
