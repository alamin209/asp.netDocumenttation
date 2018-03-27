<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WizerAdvance.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" OnFinishButtonClick="Wizard1_FinishButtonClick">
            <FinishNavigationTemplate>
                <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" OnClientClick="return confirm('Are you sure to submit ')" Text="Finish" />
            </FinishNavigationTemplate>
            <StartNavigationTemplate>
                <asp:Button ID="StartNextButton" runat="server"  CommandName="MoveNext" OnClientClick="return confirm('Are you sure to go next............... ')"  Text ="Next" />
            </StartNavigationTemplate>
         
            <StepNavigationTemplate>
                <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" UseSubmitBehavior="false" Text="Previous" />
<%--                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" OnClientClick="return confirm('Are you sure to go next ')"  also work />--%>
<%--                this is hierychy Wizard1$StepNavigationTemplateContainerID$Button1--%>
                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next"   />

            </StepNavigationTemplate>
         
            <WizardSteps>
                <asp:WizardStep runat="server" title="Step 1">
                    <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Step 2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:WizardStep>
       
                 <asp:WizardStep runat="server" title="Step 3">
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
