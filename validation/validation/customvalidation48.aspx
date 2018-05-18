<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customvalidation48.aspx.cs" Inherits="validation.customvalidation48" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script type="text/javascript">
            function Iseven(source, args)
            {

                if (args.Value == "") {

                    args.IsValid = false;
                }

                else {
                    if (args.Value % 2 == 0) {

                        args.IsValid = true;
                    }

                    else {

                        args.IsValid = false;

                    }
                }

            }


        </script>



</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>
                input the postiove integer number :
            </td>


        </tr>
          <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1"  runat="server" ForeColor="Red" ErrorMessage="this is not valid" ControlToValidate="TextBox1" OnServerValidate="CustomValidator1_ServerValidate" ClientValidationFunction="Iseven" ValidateEmptyText="true"></asp:CustomValidator>
            </td>
        </tr>
          <tr>
            <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </tr>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    </table>
    </div>
    </form>
</body>
</html>
