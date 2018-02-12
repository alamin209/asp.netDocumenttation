<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CascadinExample.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 128px">
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="Cont" runat="server"  Width="200px" style="margin-bottom: 0px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        </div>
    <div>
        <asp:DropDownList ID="Country" runat="server"  Width="200px" style="margin-bottom: 0px">
        </asp:DropDownList>
 
       <div/>
        <div>
        <asp:DropDownList ID="City" runat="server"  Width="200px" style="margin-bottom: 0px">
        </asp:DropDownList>
        </div/>
    </form>
</body>
</html>
