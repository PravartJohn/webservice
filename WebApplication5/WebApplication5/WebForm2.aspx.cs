using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string firstname = Session["Firstname"].ToString();
            string lastname = Session["Lastname"].ToString();
            string playinghours = Session["Playing hours"].ToString();
            string courtype = Session["Court type"].ToString();
            string paymentmethod = Session["checkbox"].ToString();
            Label1.Text = "First name: " + firstname + " " + " Last name: " + lastname + " " + "has chosen " + courtype + " is playing for " + playinghours + " hours" + " with payment method of: " + paymentmethod;
        }
    }
}