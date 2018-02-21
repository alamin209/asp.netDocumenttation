<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioButton.aspx.cs" Inherits="Bulledasp.net.RadioButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 45px">
    
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
         <asp:ListItem  Text="Red" Value="1" ></asp:ListItem>
        <asp:ListItem  Text="Green" Value="2" ></asp:ListItem>
        <asp:ListItem  Text="Black" Value="3" ></asp:ListItem>
        <asp:ListItem  Text="White" Value="4" ></asp:ListItem>
        <asp:ListItem  Text="efef" Value="5" ></asp:ListItem>

        </asp:RadioButtonList>

    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Deselectall" />
    </form>
</body>
</html>
