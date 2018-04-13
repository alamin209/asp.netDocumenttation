<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="45part.aspx.cs" Inherits="validation._45part" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Age" ></asp:Label></td>
                    <td>
                        <asp:TextBox ID="textage"  runat="server" style="margin-left: 0px" Width="140px"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidatorAge" runat="server" ErrorMessage="age must be between 1 & 100" ControlToValidate="textage" MinimumValue="1" MaximumValue="100" ForeColor="red"  type="Integer" Display="Dynamic" >
                        </asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorage" runat="server" Display="Dynamic" ErrorMessage="give the age " ControlToValidate="textage" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
          <tr>

             
                  <td>
                        <asp:Label ID="Label2" runat="server" Text="Date avilabe" ></asp:Label>
                      
                    </td>
                  <td>
                        <asp:TextBox ID="TextBox2"  runat="server" style="margin-left: 0px" Width="140px"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="give the date beteen 1/4/2018  & 1/5/2018"   ControlToValidate="TextBox2" MinimumValue=" 1/4/2018 " MaximumValue=" 1/5/2018" ForeColor="red"  type="Date" Display="Dynamic" >
                        </asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="give the Date " ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
             
                                 </td>
              </tr>
                <tr>
              <td>
              <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click1" />
                  <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                  </td>
              
          </tr>
                   
             
            </table>

        </div>
    </form>
</body>
</html>
