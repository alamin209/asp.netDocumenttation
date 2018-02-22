<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bullate.aspx.cs" Inherits="WebApplication3.Bullate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:BulletedList ID="BulletedList1" runat="server" BorderStyle="None" BulletStyle="Square" ClientIDMode="AutoID" FirstBulletNumber="10" OnClick="BulletedList1_Click" DisplayMode="LinkButton" Target="_blank">
                <asp:ListItem Text="ALAMIN"        Value="http://google.com"> </asp:ListItem>
                <asp:ListItem Text="Jahangir"  Value="www.alamin.com"> </asp:ListItem>
                <asp:ListItem Text="Aklime" Value="www.xvideox.com"> </asp:ListItem>

            </asp:BulletedList>

        </div>
    </form>
</body>
</html>
