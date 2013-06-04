using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllTechFinal
{
    public partial class NovoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Dao dao = new Dao();

            string user = ("INSERT INTO users(name,email,company_id,password) VALUES('" + txtNome.Text + "','" + txtEmail.Text + "','" + txtEmpresa.Text + "','" + txtSenha.Text + "')");
            dao.inserir(user);

            Response.Redirect("UsuarioCadastradoComSucesso.aspx");
        }
    }
}