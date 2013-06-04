using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace AllTechFinal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd = ("select * From users Where (email LIKE '" + User.Identity.Name + "')");
            MySqlDataReader reader = dao.consultarLer(cmd);
            //Response.Write(cmd);
            //Response.Write(dao.consultar(cmd));
            string empresa = null;
            string nome = null;
            while (reader.Read())
            {
                empresa = reader[3].ToString();
                nome = reader[1].ToString();
                //senha = reader[4].ToString();
            }
            //Response.Write(empresa);
            if (empresa != "10")
            {
                Response.Redirect("AcessoNegado.aspx");
            }
            lblNome.Text = nome;
            lblData.Text = DateTime.Now.ToString();
        }
    }
}