<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="UploadFile.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Uploadfile" />
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
    
    </div>
    </form>
</body>
</html>
