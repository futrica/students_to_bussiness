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
    public partial class PesquisaOrcamento1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd = ("select * from estimates");
            MySqlDataAdapter reader = dao.consultar2(cmd);
            DataTable dt = new DataTable();
            reader.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}