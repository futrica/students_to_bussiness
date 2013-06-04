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
    public partial class AddOrcamento : System.Web.UI.Page
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
            string user = null;
            while (reader.Read())
            {
                empresa = reader[3].ToString();
                nome = reader[1].ToString();
                user = reader[0].ToString();
            }
            //Response.Write(empresa);
            
            lblNome.Text = nome;
            lblEmpresa.Text = empresa;
            lblTimeNow.Text = DateTime.Now.ToString();
            lblUser_id.Text = user;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Dao dao = new Dao();

            string orcamento = ("INSERT INTO estimates(company_id,user_id,description,begin_date) VALUES('" + lblEmpresa.Text + "','" + lblUser_id.Text + "','" + txtDescricao.Text + "','" + lblTimeNow.Text + "')");

            //int idPhone = dao.insereERetornaIdInsercao(phones);
            //int idAddress = dao.insereERetornaIdInsercao(address);

            //string company = ("INSERT INTO companies(name,cnpj,address_id,phone_id) VALUES('" + txtNome.Text + "','" + txtCnpj.Text + "','" + idAddress + "','" + idPhone + "')");

            //string phoneid = ("SELECT MAX(id) as phone_id FROM phones");
            //graças ao Jether

            dao.inserir(orcamento);

            Response.Redirect("OrcamentoEnviadoComSucesso.aspx");
            // dao.inserir(phones);
            //dao.inserir(address);
            //dao.inserir(company);
        }


    }
}