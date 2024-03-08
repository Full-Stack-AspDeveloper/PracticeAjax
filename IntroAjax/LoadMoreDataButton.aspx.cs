using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntroAjax
{
    public partial class LoadMoreDataButton : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ToString();
        int num = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                num = 5;
                ViewState["num"] = num;
                BindRepeterWithDB(num);
            }
        }
        void BindRepeterWithDB( int NoOfRows)
        {
            int rowCount = GetTotalDataOfEmployee();
            if(NoOfRows > rowCount)
            {
                LoadButton.Visible = false;
            }
            SqlConnection con = new SqlConnection(cs);
            string query = "select top (@val) * from EmpInfo";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@val", NoOfRows);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count > 0)
            {
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.DataSource = null;
                Repeater1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int numValue = Convert.ToInt32(ViewState["num"]) + 5;
            BindRepeterWithDB(numValue);
            ViewState["num"] = numValue;
        }

        int GetTotalDataOfEmployee()
        {
            SqlConnection con = new SqlConnection(cs);
            string qu = "select count(*) from EmpInfo";
            SqlCommand cmd = new SqlCommand(qu, con);
            con.Open();
            int rowCount = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            return rowCount;
        }
    }
}