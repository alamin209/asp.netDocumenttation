using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WizerAdvance
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
               Button btn=(Button)Wizard1.FindControl("StepNavigationTemplateContainerID").FindControl("StepNextButton");
               btn.OnClientClick = "return confirm('Are you sure to go next............... ')";
        }

        //Page load fired before the  even so that the focus was not working and we ta
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Wizard1.ActiveStepIndex == 0)
            {

                TextBox1.Focus();
            }
            else if (Wizard1.ActiveStepIndex == 1)
            {

                TextBox2.Focus();
            }
            if (Wizard1.ActiveStepIndex == 2)
            {

                TextBox3.Focus();
            }

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }
    }
}