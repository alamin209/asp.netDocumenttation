<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wizerd.aspx.cs" Inherits="Wizerdcontrol.Wizerd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick">
                <SideBarStyle VerticalAlign="Top" />
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="1-Personal Information">
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
                          
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Contact Details">
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
                                <td>&nbsp;</td>
                            </tr>
                

                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Informatin summry">
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
                          
                        </table>
                    </asp:WizardStep>

                </WizardSteps>
            </asp:Wizard>


        </div>
    </form>
</body>
</html>
