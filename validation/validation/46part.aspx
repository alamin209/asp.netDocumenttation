<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="46part.aspx.cs" Inherits="validation._46part" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
   
    <table>
        <h2> Compared with value or som issue</h2>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password">
                </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPassword" runat="server" Display="Dynamic" ErrorMessage="Password Can not Empty" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator></td>
            
        </tr>
        <tr>
            <td>Rerype Password</td>
            <td><asp:TextBox ID="txtretypPassword" runat="server" TextMode="Password"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidatorretypPassword" runat="server" ErrorMessage="The pasword was not match " ControlToValidate="txtretypPassword" ControlToCompare="txtPassword" Type="String" Operator="Equal" ForeColor="Red" ></asp:CompareValidator>
<%--                <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtretypPassword" runat="server" ErrorMessage="It also can niot empty"" ControlToValidate=""></asp:RequiredFieldValidator>--%>
             </td>
        </tr>
        <tr>
            <td>Date of aplication </td>
            <td><asp:TextBox ID="aplicationDate" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="GreaterThan" ForeColor="Red" ControlToValidate="aplicationDate"   ValueToCompare="1/1/2019"  ErrorMessage="The date bmust be greater then 1/1/2019" Type="Date" ></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatoraplicationDate" Display="Dynamic" ControlToValidate="aplicationDate" runat="server" ErrorMessage="Date can not empty " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
         <tr>
            <td>Age </td>
            <td><asp:TextBox ID="textage" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatortextage"  Display="Dynamic" ControlToValidate="textage" runat="server" ErrorMessage="Age Can not empty"  ></asp:RequiredFieldValidator>
               <asp:CompareValidator ID="CompareValidatortextage" runat="server" ControlToValidate="textage" ErrorMessage="Age must be number" ForeColor="Red"   Type="Integer" Operator="DataTypeCheck" SetFocusOnError="True"  ></asp:CompareValidator>

            </td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" /></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>

    </form>
     </div>
    </body>
</html>
