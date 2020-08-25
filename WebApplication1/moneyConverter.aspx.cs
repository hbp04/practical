using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class moneyConverter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            double convertFrom = Convert.ToDouble(txtConvertFrom.Text);
            //int convertTo = Convert.ToInt32(txtConvertTo.Text);

            string ddlFrom = DropDownListMoneyConvertFrom.SelectedValue;
            string ddlTo = DropDownListMoneyConvertTo.SelectedValue;

            convertMethods cm = new convertMethods();
            double currency = cm.getExchangeRate(ddlFrom, ddlTo, convertFrom);

            txtConvertTo.Text = currency.ToString();

            //if(ddlFrom.Equals("AUD") && ddlTo.Equals("BRL"))
            //{
            //    txtConvertTo.Text = (convertFrom * 3.80).ToString();
            //}
            //else if(ddlFrom.Equals("AUD") && ddlTo.Equals("BRL"))
            //{
            //    txtConvertTo.Text = (convertFrom * 3.80).ToString();
            //}
        }
    }
}