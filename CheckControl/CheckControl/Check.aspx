﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Check.aspx.cs" Inherits="CheckControl.Check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server" onscroll="true" >
        <div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" RepeatDirection="Horizontal">

                        <asp:ListItem Text="Diploma"  Value="1" ></asp:ListItem>
                        <asp:ListItem Text="Graduate"   Value="2" ></asp:ListItem>
                        <asp:ListItem Text="Non-Gradutae"  Value="3" ></asp:ListItem>

        </asp:CheckBoxList>

        <br/> <br/>
        <%--//part two added here--%> 
       


    
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
    
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Seclect All" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Deselctall" />
    </div>
        <div>
      <asp:CheckBoxList ID="CheckBoxList2" runat="server"  OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Height="10px" Width="146px"   >

                         <asp:ListItem Text="Diploma"  Value="1" ></asp:ListItem>
                         <asp:ListItem Text="Graduate"   Value="2" ></asp:ListItem>
                        <asp:ListItem Text="Non-Gradutae"  Value="3" ></asp:ListItem>
                         <asp:ListItem Text="Diploma"  Value="1" ></asp:ListItem>
                        <asp:ListItem Text="Graduate"   Value="2" ></asp:ListItem>
                        <asp:ListItem Text="Non-Gradutae"  Value="3" ></asp:ListItem>
              
                     

        </asp:CheckBoxList>
            </div>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
    </form>
</body>
</html>
