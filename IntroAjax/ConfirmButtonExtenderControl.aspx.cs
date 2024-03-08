using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntroAjax
{
    public partial class ConfirmButtonExtenderControl : System.Web.UI.Page
    {
         string cs = ConfigurationManager.ConnectionStrings["dbcs"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Searchbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string q = "select * from emp where id = @id";
            SqlDataAdapter sda = new SqlDataAdapter(q, con);
            sda.SelectCommand.Parameters.AddWithValue("@id", SearchTextBox1.Text);
            DataTable td = new DataTable();
            sda.Fill(td);
            if (td.Rows.Count > 0)
            {
                Nametxt.Text = td.Rows[0]["name"].ToString();
                Desigtxt.Text = td.Rows[0]["desgnation"].ToString();
                Label1.Text = "Record Found";
                Label1.ForeColor = Color.Green;
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "Record Not Found";
                Label1.ForeColor = Color.Red;
                Label1.Visible = true;
                Nametxt.Text = "";
                Desigtxt.Text = "";
            }
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string q = "Update emp set name = @name, desgnation = @desgnation where id = @id";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@id", SearchTextBox1.Text);
            cmd.Parameters.AddWithValue("@name", Nametxt.Text);
            cmd.Parameters.AddWithValue("@desgnation", Desigtxt.Text);
            con.Open();
           int a = cmd.ExecuteNonQuery();
            if(a>0)
            {
                Response.Write("<script>alert('Update Successfully')</script>");
                Nametxt.Text = "";
                Desigtxt.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Update Failed')</script>");
            }
            con.Close();
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string q = "delete  from emp where id = @id";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@id", SearchTextBox1.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert('Delete Successfully')</script>");
                Nametxt.Text = "";
                Desigtxt.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Delete Failed')</script>");
            }
            con.Close();
        }
    }
}