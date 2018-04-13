<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="44part.aspx.cs" Inherits="validation._44part" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red" ControlToValidate="TextBox1" runat="server" ErrorMessage="Name is requird ">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                     <td>Gender </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Text="Select the Gender "  Value="-1" ></asp:ListItem>
                            <asp:ListItem Value="1" Text="Male"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Femlae"></asp:ListItem>
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" InitialValue="-1" ForeColor="red" ControlToValidate="DropDownList1" runat="server" ErrorMessage="Selct the GENDER ">
                        </asp:RequiredFieldValidator>
                         
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>

                    </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
