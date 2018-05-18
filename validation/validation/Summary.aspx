<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="validation.Summary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>This is title </title>
</head>
<body>
    <form id="form1" runat="server">

        <table>
            <tr>
                <td>
                    Email:

                </td>
                <td>

                       <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator     ID="RequiredFieldValidatoremail"  ForeColor="Red"  ControlToValidate="email" runat="server" ErrorMessage="Email is requiurd" ValidationGroup="registaion">*</asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="email"  ForeColor="Red" runat="server" ErrorMessage="the email pattaer was not match" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

                </td>

            </tr>
             <tr>
                <td>
                    User Name:

                </td>
                <td>

                       <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName"  ForeColor="Red"  ControlToValidate="UserName"  runat="server" ErrorMessage="User Name is requird" ValidationGroup="registaion">*</asp:RequiredFieldValidator>


                </td>

            </tr>
             <tr>
                <td>
                    
                    Passwoed:

                </td>
                <td>

                       <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPassword"    runat="server"  ControlToValidate="txtPassword"  ForeColor="Red"  ErrorMessage ="Password is requird " ValidationGroup="registaion">*</asp:RequiredFieldValidator>


                </td>

            </tr>
             <tr>
                <td>
                    Confirm Password:

                </td>
                <td>

                       <asp:TextBox ID="Confirmpassword"  TextMode="Password" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmpassword" ControlToValidate="Confirmpassword"  runat="server" ForeColor="Red" ErrorMessage="Confirm Password was not match" ValidationGroup="registaion">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ErrorMessage="Password and confirm Password was not match" ControlToValidate="Confirmpassword" ControlToCompare="txtPassword" Type="String"  Operator="Equal" Display="Dynamic" >*</asp:CompareValidator>

                </td>

            </tr>
            <tr>

                <td>
                    <asp:ValidationSummary ID="ValidationSummary1"   ForeColor="Red"  runat="server" DisplayMode="List" ValidationGroup="registaion" />
                </td>
            </tr>


            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" ValidationGroup="registaion"  />
                    <asp:Button ID="Button3" runat="server" CausesValidation="False" OnClick="Button3_Click1" Text="Clear" />
                </td>
            </tr>
             


        </table>
    
        
           
      
       
        <table>
            <tr>
                <td>
                    User Name:

                </td>
                <td>

                       <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8"  ForeColor="Red"  ControlToValidate="UserName"  runat="server" ErrorMessage="User Name is requird">*</asp:RequiredFieldValidator>


                </td>

            </tr>
             <tr>
                <td>
                    Passwoed:
                </td>
                <td>

                <asp:TextBox ID="TextBox9" TextMode="Password" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator9"    runat="server"  ControlToValidate="txtPassword"  ForeColor="Red"  ErrorMessage ="Password is requird ">*</asp:RequiredFieldValidator>


                </td>

            </tr>
            
             <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Login"  />
                </td>
            </tr>

            <tr>

                <td>
                    <asp:ValidationSummary ID="ValidationSummary2"   ForeColor="Red"  runat="server" DisplayMode="List" />
                </td>
            </tr>
        </table>



   
    </form>
</body>
</html>
