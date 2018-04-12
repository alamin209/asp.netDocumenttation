<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="43not42.aspx.cs" Inherits="panelcontrol42._43not42" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table>
                <tr>

                    <td>
                        <h3>Content Type</h3>
                    </td>
                    <td>
                        <asp:CheckBoxList ID="checklist1" runat="server">
                            <asp:ListItem Text="Label"> </asp:ListItem>
                            <asp:ListItem Text="Textbox"> </asp:ListItem>
                            <asp:ListItem Text="Button"> </asp:ListItem>

                        </asp:CheckBoxList>
                    </td>
                    <td>How many </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>

                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Genertae controller" />

                    </td>
                </tr>
                <tr>
                    <td> 
                        <h3>Panil controll</h3>
                    </td>

                    <td colspan="5" id="labels" runat="server">
                        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                    </td>


                </tr>
                 <tr>
                    <td> 
                        <h3>Button Controll</h3>
                    </td>

                    <td colspan="5" id="buttons" runat="server">
                        <asp:Panel ID="Panel2" runat="server"></asp:Panel>
                    </td>


                </tr>
                 <tr>
                    <td> 
                        <h3>TextBoxcontroll</h3>
                    </td>

                    <td colspan="5" id="texts" runat="server">
                        <asp:Panel ID="Panel3" runat="server"></asp:Panel>
                    </td>


                </tr>
            </table>




        </div>
    </form>
</body>
</html>
