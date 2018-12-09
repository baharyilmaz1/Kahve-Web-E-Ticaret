<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="sitem.Giris"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 25px;
            text-align: center;
        }
        .bg{
           
        }
        .uyehiza{
            margin-left:0px;
        }
        .auto-style3 {
            width: 130px;
        }
        .auto-style4 {
            width: 109px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="2" >
                <tr>
                    <td class="auto-style2" colspan="3">ÜYE GİRİŞİ</td>
                </tr>
                <tr>
                    <td>Kullanıcı Adı</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtKad" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKad" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red" ToolTip="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Şifre:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifre" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <asp:CheckBox ID="chkBeniHatirla" runat="server" Text="Beni Hatırla" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnGiris" runat="server" OnClick="btnGiris_Click" Text="Giriş Yap" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <asp:LinkButton ID="lnkUyeOl" runat="server" OnClick="lnkUyeOl_Click">Üye Ol</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>

</body>
</html>
