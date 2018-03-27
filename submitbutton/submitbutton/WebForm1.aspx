<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="submitbutton.WebForm1" %>

<!DOCTYPE html>



<%-- REAMRKING--------------------------------------------------here mainly working with submit behovoure means which button will be submit first--%>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 125px; width: 873px">
    
        NAME:<asp:TextBox ID="txtname" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox>
        </br>
        <asp:Button ID="Button1" runat="server" Text="clear" OnClick="Button1_Click" UseSubmitBehavior="False" />
    
        <asp:Button ID="Button2" runat="server" Text="submit" OnClick="Button2_Click" />
        <br></br>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
