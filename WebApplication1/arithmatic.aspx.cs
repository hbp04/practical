using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class arithmatic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtNumber1.Text != null && txtNumber2.Text != null)
            {
                int number1 = Convert.ToInt32(txtNumber1.Text);
                int number2 = Convert.ToInt32(txtNumber2.Text);

                switch (ddlMethod.SelectedValue)
                {
                    case "+":
                        lblShow.Text = "Addition is " + (number1 + number2);
                        break;

                    case "-":
                        lblShow.Text = "Substraction is " + (number1 - number2);
                        break;

                    case "x":
                        lblShow.Text = "Multiplication is " + (number1 * number2);
                        break;

                    case "/":
                        lblShow.Text = "Division is " + (number1 / number2);
                        break;

                }
            }
            else
            {
                lblShow.Text = "Please enter value";
            }
        }
    }
}