using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week5
{
    public partial class Tip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                //Get the amount from the textbox.
            //poop out variable.
            Double amount = Convert.ToDouble(txtAmount.Text);

            //Get the tip amount
            Double tipPercent = Convert.ToDouble(ddlPercent.SelectedValue);

            //Calc th tip and total
            Double tipAmount = amount * tipPercent;
            Double total = amount + tipAmount;

            //display results
            lblTip.Text = tipAmount.ToString("C");
            lblTotal.Text = total.ToString("C");

            }

            catch (Exception err)
            {
                Response.Redirect("/Error.aspx");
            }
            
        }
    }
}