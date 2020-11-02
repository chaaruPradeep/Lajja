<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Lil.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="login_email_label" runat="server" Text="Email Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="login_email_textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="login_password_label" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="login_password_textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="login_login_button" runat="server" OnClick="login_login_button_Click" Text="Login" />
                </td>
                <td>
                    <asp:Button ID="login_cancel_button" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
        <asp:Label ID="login_alert_label" runat="server"></asp:Label>
    </form>
</body>
</html>
