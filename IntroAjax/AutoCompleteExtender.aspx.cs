using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace IntroAjax
{
    public partial class AutoCompleteExtender : System.Web.UI.Page
    {
       static string cs = ConfigurationManager.ConnectionStrings["dbcs"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

         [System.Web.Script.Services.ScriptMethod()]
         [System.Web.Services.WebMethod]
        public static List<String> GetCompletionList(string prefixText, int count)
        {
            SqlConnection con = new SqlConnection(cs);
            string q = "select * from City where cityname like @name + '%'";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@name", prefixText);
            List<string> CityNames = new List<string>();
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            while(sdr.Read())
            {
                CityNames.Add(sdr["cityname"].ToString());
            }
            con.Close();
            return CityNames;
        }
 
    }
}