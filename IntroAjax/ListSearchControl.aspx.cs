﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntroAjax
{
    public partial class ListSearchControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Label1.Text = "You Have Selected " + ListBox1.SelectedItem.ToString();
            Label1.Text = "You Have Selected " + DropDownList1.SelectedItem.ToString();
        }
    }
}