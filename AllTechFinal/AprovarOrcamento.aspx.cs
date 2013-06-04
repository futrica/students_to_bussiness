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
    public partial class AprovarOrcamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd = ("select * From users Where (email LIKE '" + User.Identity.Name + "')");
            MySqlDataReader reader = dao.consultarLer(cmd);
            //Response.Write(cmd);
            //Response.Write(dao.consultar(cmd));
            string empresa = null;
            //string nome = null;
            while (reader.Read())
            {
                empresa = reader[3].ToString();
                //senha = reader[4].ToString();
            }

            lblInfo.Text = empresa;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd = ("select * From estimates Where (company_id LIKE '" + lblInfo.Text + "')");
            MySqlDataAdapter reader2 = dao.consultar2(cmd);
            DataTable dt = new DataTable();
            reader2.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd2 = ("select * From costs Where (estimated_id LIKE '" + txtCod.Text + "')");
            MySqlDataAdapter reader3 = dao.consultar2(cmd2);
            DataTable dt = new DataTable();
            reader3.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Dao dao = new Dao();

            string estimates = ("UPDATE estimates SET ok='" + 1  + "' WHERE estimate_id='" + txtCod.Text + "'");

            dao.atualizar(estimates);
            Response.Redirect("OrcamentoEnviado.aspx");
        }
    }
}