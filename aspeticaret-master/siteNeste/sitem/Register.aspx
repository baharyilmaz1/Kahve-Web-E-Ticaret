<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="sitem.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            height: 26px;
            width: 114px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 132px;
        }
        .auto-style5 {
            height: 26px;
            width: 132px;
        }
        .auto-style6 {
            width: 114px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>




            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2">KAYIT OL</td>
                </tr>
                <tr>
                    <td class="auto-style6">Kullanıcı Adı:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Ad</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Soyad:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtSurName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSurName" ErrorMessage="Boş Geçilemez" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Şifre:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Mail:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtMail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" Font-Bold="True" ForeColor="Red">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Telefon</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtTelefon" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2">Doğum Tarihi:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtBirthDay" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnKayit" runat="server" OnClick="btnKayit_Click" Text="KAYDOL" />
                    </td>
                </tr>
            </table>




        </div>
    </form>
</body>
</html>
