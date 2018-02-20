<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxlistandlistboxrealtimeexample.aspx.cs" Inherits="checkboxlistRealtimeexample.checkboxlistandlistboxrealtimeexample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 223px">
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="98px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged"  Width="148px"  RepeatDirection="Horizontal" AutoPostBack="True" >

            <asp:ListItem Text="alamin Graduate" Value="1"> </asp:ListItem>
             <asp:ListItem Text="aklima " Value="2"> </asp:ListItem>
            <asp:ListItem Text="Jahangir " Value="3"> </asp:ListItem>
             <asp:ListItem Text="Joba  " Value="4"> </asp:ListItem>
            <asp:ListItem Text="aysha " Value="5"> </asp:ListItem>


        </asp:CheckBoxList>

    
        <asp:ListBox ID="ListBox1" SelectionMode="Multiple" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Height="86px" Width="200px"></asp:ListBox>

    
    </div>
        <asp:Label ID="Label1"  Font-Bold="true" runat="server"></asp:Label>
    </form>
</body>
</html>
