using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace panelcontrol42
{
    public partial class _43not42 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


           
           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            int count = Convert.ToInt32(TextBox1.Text);

            foreach (ListItem li in checklist1.Items)
            {
                if (li.Selected)
                {

                    if (li.Value == "Label")
                    {

                        for (int i = 0; i <= count; i++)
                        {
                            Label lbl = new Label();
                            lbl.Text = "label -" + i.ToString();

                            labels.Controls.Add(lbl);
                            //this.form1.Controls.Add(lbl);
                            //Panel1.Controls.Add(lbl);
                        }

                    }

                    else if (li.Value == "Textbox")
                    {

                        for (int i = 0; i <= count; i++)
                        {
                            TextBox txt = new TextBox();
                            txt.Text = "Textbox -" + i.ToString();
                            //this.form1.Controls.Add(txt);
                            texts.Controls.Add(txt);


                            //Panel2.Controls.Add(txt);
                        }

                    }

                    else if (li.Value == "Button")
                    {

                        for (int i = 0; i <= count; i++)
                        {
                            Button btn = new Button();
                            btn.Text = "Button -" + i.ToString();
                            //this.form1.Controls.Add(btn);
                            buttons.Controls.Add(btn);

                            
                            //Panel3.Controls.Add(btn);

                        }

                    }

                }
            }

        }
    }
}