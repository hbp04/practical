using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class factorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int factorial = Convert.ToInt32(txtNumber.Text);
            if(factorial > 0)
            {
                int count = 1;
                for(int i = 1; i <= factorial; i++)
                {
                    count = count * i;
                }

                lblShow.ForeColor = System.Drawing.Color.DarkBlue;
                lblShow.Text = "Factorial of " + factorial + " is " + count;
            }
            else if(factorial == 0)
            {
                lblShow.ForeColor = System.Drawing.Color.DarkBlue;
                lblShow.Text = "Factorial of " + factorial + " is 1";
            }
            else
            {
                lblShow.ForeColor = System.Drawing.Color.Red;
                lblShow.Text = "Please enter valid number";
            }
        }
    }
}