<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adexaple.aspx.cs" Inherits="advirtisementroteted.Adexaple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AdRotator ID="AdRotator1" runat="server" KeywordFilter="bdjobs"    Target="_blank"  AdvertisementFile="~/advirtise.xml" />

    
    </div>
    </form>
</body>
</html>
