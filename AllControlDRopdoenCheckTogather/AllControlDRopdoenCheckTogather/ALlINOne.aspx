<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ALlINOne.aspx.cs" Inherits="AllControlDRopdoenCheckTogather.ALlINOne" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 170px">
           <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <%--<asp:ListItem Text="alamin" Value="1"></asp:ListItem>
                <asp:ListItem Text="aklima" Value="2"></asp:ListItem>
                <asp:ListItem Text="jahangir alom" Value="3"></asp:ListItem>
                <asp:ListItem Text="Aeysh" Value="4"></asp:ListItem>--%>
            </asp:DropDownList>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
           <%--      <asp:ListItem Text="alamin" Value="1"></asp:ListItem>
                <asp:ListItem Text="aklima" Value="2"></asp:ListItem>
                <asp:ListItem Text="jahangir alom" Value="3"></asp:ListItem>
                <asp:ListItem Text="Aeysh" Value="4"></asp:ListItem>--%>
            </asp:RadioButtonList>
            <asp:CheckBoxList SelectionMode="Multiple" ID="CheckBoxList1"  runat="server">
                <%-- <asp:ListItem Text="alamin" Value="1"></asp:ListItem>
                <asp:ListItem Text="aklima" Value="2"></asp:ListItem>
                <asp:ListItem Text="jahangir alom" Value="3"></asp:ListItem>
                <asp:ListItem Text="Aeysh" Value="4"></asp:ListItem>--%>
            </asp:CheckBoxList>


            <asp:BulletedList ID="BulletedList1" SelectionMode="Multiple"  runat="server" OnClick="BulletedList1_Click">
               <%--  <asp:ListItem Text="alamin" Value="1"></asp:ListItem>
                <asp:ListItem Text="aklima" Value="2"></asp:ListItem>
                <asp:ListItem Text="jahangir alom" Value="3"></asp:ListItem>
                <asp:ListItem Text="Aeysh" Value="4"></asp:ListItem>--%>
            </asp:BulletedList>


                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
