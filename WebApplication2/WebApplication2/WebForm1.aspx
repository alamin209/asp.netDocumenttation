<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ContinantList" Width="200px" runat="server"  AutoPostBack="true"
         DataTextField="ContinantName"  DataValueField="ContinantId" OnSelectedIndexChanged="ContinantList_SelectedIndexChanged"
            ></asp:DropDownList>
        <br/><br/>
        <asp:DropDownList ID="CountryList" width="200px"  runat="server" AutoPostBack="true"
             DataTextField="CountryName"  DataValueField="CountryId" OnSelectedIndexChanged="CountryList_SelectedIndexChanged"  
            ></asp:DropDownList>
        <br/><br/>
        <asp:DropDownList ID="CityList" Width="200px" runat="server"
            DataTextField="CityName"  DataValueField="CityId" OnSelectedIndexChanged="CountryList_SelectedIndexChanged"
          ></asp:DropDownList>
    </div>
    </form>
</body>
</html>
