using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Celender
{
    public partial class advance_caleder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            foreach(DateTime selectedDateTime in Calendar1.SelectedDates  )
            {
            Response.Write(Calendar1.SelectedDate.ToString("d")+"</br>");
            
            }

            
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (!e.Day.IsOtherMonth && e.Day.Date.Day % 2 == 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Red;
                e.Cell.ForeColor = System.Drawing.Color.White;
                e.Cell.Font.Bold = true;
                e.Cell.Text = "XXXX";
                e.Cell.ToolTip = "This is booked for this time";


            }
            else
            {
                e.Cell.ToolTip = "Aviable";

            }

        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            string nexttmongth = getmongth(e.NewDate.Month);
            string  prevoius = getmongth(e.PreviousDate.Month);

            Response.Write("the prevous month " + prevoius + " Present  " + nexttmongth);

        }


         private  string getmongth(int mongthnumbe)
        {

            switch (mongthnumbe)
            { 
            
                case 1:
             return "Jan";
             case 2:
             return "Feb";
             case 3:
             return "March";
             case 4:
             return "April";
              case 5:
             return "may";
              
               case 6:
             return "Jun";
               case 7:
             return "July";
              case 8:
             return "Aug";
              case 9:
             return "Sep";
              case 10:
             return "acto";
              case 11:
             return "July";
              case 12:
             return "July";
             default:
             return "Invalid Month";
            }
        
        }

    }
}