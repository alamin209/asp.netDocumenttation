<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hidden.aspx.cs" Inherits="hiddenfeild.hidden" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body style="height: 181px">
    <form id="form1" runat="server">
    <div style="font-family:Arial">

        
        <table >
            <tr>
                <td class="auto-style1">Name<asp:TextBox ID="textname" runat="server" ></asp:TextBox>
                 <asp:HiddenField ID="HiddenFeildId"  runat="server" />
                </td>
               
            </tr>
            <tr>
                <td>DEPERTMENRT <asp:TextBox ID="textdept" runat="server"></asp:TextBox>

                </td>
               
           
            </tr>
            <tr>
                <td>GENDER
                     <asp:TextBox ID="textgender" runat="server"></asp:TextBox>
                  </td>
   
            </tr>

            <tr>
            
              
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click1" />
                    <asp:Button ID="Button2" runat="server" Text="Load" OnClick="Button2_Click1" style="height: 26px" />
                </td>
                 <td>
                     &nbsp;</td>
            </tr>  

        </table>

    </div>
    </form>
</body>
</html>
