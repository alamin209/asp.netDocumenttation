<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Multiview.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post"  >
        <fieldset>
            <legend>Movie Information</legend>
        <div>
      
            <asp:MultiView ID="MultiView1" runat="server">
                
                <asp:View ID="View1" runat="server">
                    <table style="1 px solid red" runat="server">
                        <tr>
                            <td>
                                <h2>1-Personal Information</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>First Name
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="textfirstname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name:
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="textlastname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="add_Gender" runat="server">
                                    <asp:ListItem Value="Male" Text="Male"> </asp:ListItem>
                                    <asp:ListItem Value="Female" Text="Female"> </asp:ListItem>

                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Button ID="Button1" runat="server" Text="Step 2 > " OnClick="Button1_Click"  />
                            </td>
                        </tr>
                    </table>

                </asp:View>


                <asp:View ID="View2" runat="server">
                    <table style="1 px solid red" runat="server">
                        <tr>
                            <td>
                                <h2>Contact Details</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>Email
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="textemail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Contact:
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="textnumber" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Button ID="Button3" runat="server"  Text="Step 1 &gt;&gt; " OnClick="Button3_Click" />
                                <asp:Button ID="Button2" runat="server" Text="Step 3 >> " OnClick="Button2_Click"  />
                            </td>
                            <td style="text-align: left">&nbsp;</td>
                        </tr>

                    </table>


                </asp:View>
                <asp:View ID="View3" runat="server">
                    <table>
                        <tr>
                            <td colspan="2">
                                <h2>Informatin summry </h2>
                            </td>
                        </tr>


                        <tr>
                            <td>FIrst Name</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <td>Email Address</td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <td>Contact info</td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right">
                                <asp:Button ID="Button4" runat="server"  Text="Step 2 &gt;&gt; " OnClick="Button4_Click" />
                                <asp:Button ID="Button5" runat="server" Text="Submit >> " OnClick="Button5_Click" />
                            </td>
                            <td style="text-align: left">&nbsp;</td>
                        </tr>


                    </table>
                </asp:View>
            </asp:MultiView>
            
        </div>
      
        </fieldset>
    </form>
</body>
</html>
