<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="admin_panel.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true"   OnSelectedIndexChanged ="DropDownList2_SelectedIndexChanged"  >
                <asp:ListItem Text="Select the  user" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Select the  Admin" Value="admin"></asp:ListItem>
                <asp:ListItem Text="Select the  user" Value="nonadmin"></asp:ListItem>
            </asp:DropDownList>
            <asp:Panel ID="adminpanel" runat="server">
        <table>
           
               <tr id="MyRow1" runat="server">
           <td> <h3>You are loggin in as a admin </h3></td>
    </tr>
            <tr>
                <td>
                    <asp:Label ID="admin" runat="server" Text="Admin"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="user" runat="server" Text="admin Login"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="User Detail"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>

            </tr>

        </table>
                </asp:Panel>
            <asp:Panel ID="nonadminpanel" runat="server">
    <table>
       <%-- <tr>
            <td colspan="2">
                <h3>You are loggin in as a Mike </h3>
            </td>
        </tr>--%>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="nonAdmin"  font-size="XX-Large"></asp:Label>

            </td>
            <%--<td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>--%>

        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="admin Login"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="User Detail"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>

        </tr>
          <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="User Detail"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>

        </tr>
          <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="User Detail"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>

        </tr>


    </table>
                </asp:Panel>
     </div>
    </form>
    
</body>
</html>
