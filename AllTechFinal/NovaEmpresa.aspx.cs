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
    public partial class NovaEmpresa : System.Web.UI.Page
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
            //Response.Write(empresa);
            if (empresa != "10")
            {
                Response.Redirect("AcessoNegado.aspx");
            }
        }

        protected void bntCadastrar_Click(object sender, EventArgs e)
        {
            Dao dao = new Dao();

            string phones  = ("INSERT INTO phones(phone,branch) VALUES('" + txtTelefone.Text + "','" + txtRamal.Text + "')");
            string address = ("INSERT INTO addresses(street,number,postal_code,district,city,state,country) VALUES('" + txtRua.Text + "','" + txtNumero.Text + "','" + txtCep.Text + "','" + txtBairro.Text + "','" + txtCidade.Text + "','" + txtEstado.Text + "','" + txtPais.Text + "')");
            
            int idPhone = dao.insereERetornaIdInsercao(phones);
            int idAddress = dao.insereERetornaIdInsercao(address);

            string company = ("INSERT INTO companies(name,cnpj,address_id,phone_id) VALUES('" + txtNome.Text + "','" + txtCnpj.Text + "','" + idAddress + "','" + idPhone + "')");

            //string phoneid = ("SELECT MAX(id) as phone_id FROM phones");
            //graças ao Jether

            int idCompany = dao.insereERetornaIdInsercao(company);

            Response.Redirect("EmpresaCadastradaComSucesso.aspx");
            // dao.inserir(phones);
            //dao.inserir(address);
            //dao.inserir(company);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}