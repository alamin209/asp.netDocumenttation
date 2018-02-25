using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UploadFile
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileextenion = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (fileextenion.ToLower() != ".doc" && fileextenion.ToLower() != ".docx")
                { 


                 Label1.Text = "Please select the file is not corrct formate ";
                 Label1.ForeColor = System.Drawing.Color.Red;
                
                }



                else

                {
                    
                   int filsize=FileUpload1.PostedFile.ContentLength ;    //1024bite*1024bitt=1048576*2=2megabyte
                    if(filsize>2097152)

                 {  FileUpload1.SaveAs(Server.MapPath("~/Image/" + FileUpload1.FileName));
                    Label1.Text = "File upload successful";
                   Label1.ForeColor = System.Drawing.Color.Green;
                 }

                    else
                    {
                    Label1.Text = "File contain more than 2Mb ";
                  
                    }

                }
            }
            else
            {
                Label1.Text = "Please select the file";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}