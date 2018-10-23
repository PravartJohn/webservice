using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Session["court type"] = "Wooden Floor";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Session["court type"] = "Cement Floor";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Firstname"] = TextBox1.Text;
            Session["Lastname"] = TextBox2.Text;

            Session["playing hours"] = TextBox4.Text;
            Response.Redirect("WebForm2.aspx");
        }

       

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            Session["playing hours"] = TextBox4.Text;

        }

        

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string message = "";
            foreach(ListItem item in CheckBoxList1.Items)
            {
                if(item.Selected)
                {
                    message += item.Text;
                    message += ", ";
                }
            }
            Session["checkbox"] = message;
        }
    }
}