using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;

namespace AllTechFinal
{
    public partial class GerarOs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd = ("select * From estimates Where (ok LIKE '" + 1 + "')");
            MySqlDataAdapter reader2 = dao.consultar2(cmd);
            DataTable dt = new DataTable();
            reader2.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["field1"] = txtValor.Text;
            Response.Redirect("OS.aspx");
        }


    }
}