<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form1.aspx.cs" Inherits="form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 186px">
    <form id="form" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server" Height="115px" Width="247px">
                <asp:TableRow>
                    <asp:TableHeaderCell>
                        <h2>This is form Exapmle</h2>
                    </asp:TableHeaderCell>

                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                    Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                  <asp:TableRow>
                    <asp:TableCell>
                        Email:
                      <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </asp:TableCell>
                      </asp:TableRow>
                
            </asp:Table>



            <asp:Button ID="Transferred_next_page" runat="server" OnClick="transfeerd_Info_Click1" Text="Next page" />



        </div>


    </form>


</body>
</html>
