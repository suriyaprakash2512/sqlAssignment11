using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercise11
{
    public partial class Articles : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("server=DESKTOP-G2EN09F;database=ContentDB;trusted_connection=true;");
                SqlCommand cmd = new SqlCommand("select * from Articles", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                LblMsg.Text = "Number of Articles Are:" + ds.Tables[0].Rows.Count;
                GvArticles.DataSource = ds.Tables[0];
                GvArticles.DataBind();
                con.Close();

            }
            catch (Exception ex)
            {
                LblMsg.Text = "Error!!!" + ex.Message;
            }
        }

    }
}
