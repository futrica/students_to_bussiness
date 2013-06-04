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
    public partial class UsuarioCadastradoComSucesso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd = ("select * from users");
            MySqlDataReader reader = dao.consultarLer(cmd);

            while (reader.Read())
            {
                lblId.Text = reader[0].ToString();
                lblNome.Text = reader[1].ToString();
                lblEmail.Text = reader[2].ToString();
                lblEmpresa.Text = reader[3].ToString();
                lblSenha.Text = reader[4].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NovoUsuario.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}