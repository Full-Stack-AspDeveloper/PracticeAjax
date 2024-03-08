using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntroAjax
{
    public partial class ModalPopup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text != "")
            {
                Label1.Text = "Welcome  " + TextBox1.Text;
                Label1.Visible = true;
                Label1.ForeColor = Color.Green;
            }
            else
            {
                Label1.Text = "Please Enter Your Name";
                Label1.Visible = true;
                Label1.ForeColor = Color.Red;
            }
        }

    }
}