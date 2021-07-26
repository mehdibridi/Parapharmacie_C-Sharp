<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="ProjetParaM.Inscription" %>

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
        .auto-style5 {
            height: 111px;
            width: 30%;
        }
        .auto-style6 {
            height: 111px;
            width: 45%;
        }
        .auto-style4 {
            height: 111px;
        }
        .auto-style7 {
            width: 413px;
        }
        .auto-style8 {
            width: 347px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            width: 100%;
            height: 471px;
        }
        .auto-style11 {
            height: 45px;
        }
        .auto-style12 {
            width: 309px;
        }
        .auto-style13 {
            height: 29px;
        }
    </style>
</head>
<body>

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
                            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#009999" NavigateUrl="~/Login.aspx">Connexion</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#009999">Mon panier</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="border-bottom-style: solid; border-bottom-width: 5px; border-bottom-color: #333333;">
                                    
                            <asp:Menu ID="Menu1" runat="server" BorderColor="White" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="White" Orientation="Horizontal" BackColor="#009999" Width="100%"  Font-Bold="True" RenderingMode="List">
                                        <DynamicHoverStyle BackColor="White" Font-Size="XX-Large" />
                                        <Items>
                                            <asp:MenuItem Text="Acceuil" Value="Acceuil" NavigateUrl="~/WebForm1.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Bio" Value="Bio"></asp:MenuItem>
                                            <asp:MenuItem Text="Bébé" Value="Bébé"></asp:MenuItem>
                                            <asp:MenuItem Text="Médicament" Value="Médicament"></asp:MenuItem>
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
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style8" style="padding: 20px 0px 0px 20px; margin: 20px 0px 0px 20px" >
                <div style="box-shadow:6px 6px 6px gray; text-align:center" class="auto-style7">
                    <table class="auto-style10" style="border: 1px solid #009999; background-color: #FFFFCC">
                        <tr>
                            <td class="auto-style11" colspan="2" style="color: White; background-color: #009999; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inscrivez-vous pour obtenir votre nouveau compte</td>
                        </tr>
                        <tr>
                            <td class="auto-style12" style="padding: 5px; margin: 5px; text-align: left"><asp:label runat="server" AssociatedControlID="Username" ID="UserNameLabel1">Nom d'utilisateur :</asp:label></td>
                            <td>
                                <asp:TextBox ID="Username" runat="server" CssClass="auto-style9" Width="199px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12" style="padding: 5px; margin: 5px; text-align: left"><asp:label runat="server" AssociatedControlID="Password" ID="PasswordLabel1">Mot de passe :</asp:label></td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" CssClass="auto-style9" TextMode="Password" Width="199px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12" style="padding: 5px; margin: 5px; text-align: left"><asp:label runat="server" AssociatedControlID="ConfirmPassword" ID="ConfirmPasswordLabel1">Confirmer le mot de passe :</asp:label></td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="auto-style9" TextMode="Password" Width="199px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12" style="padding: 5px; margin: 5px; text-align: left"><asp:label runat="server" AssociatedControlID="Mail" ID="EmailLabel2">Adresse de messagerie :</asp:label></td>
                            <td>
                                <asp:TextBox ID="Mail" runat="server" CssClass="auto-style9" Width="199px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12" style="padding: 5px; margin: 5px; text-align: left"><asp:label runat="server" AssociatedControlID="Tel" ID="EmailLabel3">Numéro Télephone :</asp:label></td>
                            <td>
                                <asp:TextBox ID="Tel" runat="server" CssClass="auto-style9" Width="199px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13" colspan="2">
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Le mot de passe et le mot de passe de confirmation doivent correspondre."></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right; vertical-align: top;">
                                <asp:Button ID="Button3" runat="server" BackColor="#009999" OnClick="Button3_Click" Text="Créée un utilisateur" Width="184px" />
                            </td>
                        </tr>
                    </table>
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
