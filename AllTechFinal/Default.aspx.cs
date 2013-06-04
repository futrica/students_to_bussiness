using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace AllTechFinal
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd = ("select * From users Where (email LIKE '" + txtEmail.Text + "')");
            MySqlDataReader reader = dao.consultarLer(cmd);
            //Response.Write(cmd);
            //Response.Write(dao.consultar(cmd));
            string senha = null;
            string nome = null;
            while (reader.Read())
            {
                nome = reader[2].ToString();
                senha = reader[4].ToString();
            }
            if (senha == txtSenha.Text)
            {
                FormsAuthentication.RedirectFromLoginPage(nome, false);
            }
        }
    }
}