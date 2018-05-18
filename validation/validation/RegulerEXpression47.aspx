<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegulerEXpression47.aspx.cs" Inherits="validation.RegulerEXpression47" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>This is Title</title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Email"> </asp:Label>

                        <asp:TextBox ID="textEmail" runat="server"></asp:TextBox></td>
                    <td class="auto-style1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail" runat="server" ErrorMessage="Invalide  Email" ControlToValidate="textEmail"  ForeColor="red"  ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>


                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </td>
                   
                </tr>
                <tr><td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td></tr>

            </table>

        </div>
    </form>
</body>
</html>
