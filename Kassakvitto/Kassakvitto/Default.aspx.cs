using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kassakvitto.Model;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Reciept r = new Reciept(double.Parse(MainTextBox.Text));

                TotalLabel.Text = String.Format("{0:c}",r.Subtotal);
                RabattsattsLabel.Text = String.Format("{0:p0}", r.DiscountRate);
                RabattLabel.Text = String.Format("{0:c}", r.MoneyOff);
                AttBetalaLabel.Text = String.Format("{0:c}", r.Total);
                recieptbox.Visible = true;
            }
        }
    }
}