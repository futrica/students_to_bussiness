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
    public partial class GerarProposta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd = ("select * From estimates Where (estimate_id LIKE '" + txtIdOr.Text + "')");
            MySqlDataReader reader = dao.consultarLer(cmd);
            string empresa = null;
            string cod_us = null;
            string descricao = null;
            string data = null;
            while (reader.Read())
           {
                empresa = reader[1].ToString();
                cod_us = reader[2].ToString();
                descricao = reader[3].ToString();
                data = reader[4].ToString();
            }
            lblUser_id.Text = cod_us;
            lblEmpresa.Text = empresa;
            lblTimeNow.Text = data;
            lblDesc.Text = descricao;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Dao dao = new Dao();

            string costs = ("INSERT INTO costs(description,value,estimated_id) VALUES('" + txtDescServ.Text + "','" + txtValor.Text + "','" + txtIdOr.Text + "')");
//            string address = ("INSERT INTO addresses(street,number,postal_code,district,city,state,country) VALUES('" + txtRua.Text + "','" + txtNumero.Text + "','" + txtCep.Text + "','" + txtBairro.Text + "','" + txtCidade.Text + "','" + txtEstado.Text + "','" + txtPais.Text + "')");

  //          int idPhone = dao.insereERetornaIdInsercao(phones);
    //        int idAddress = dao.insereERetornaIdInsercao(address);

      //      string company = ("INSERT INTO companies(name,cnpj,address_id,phone_id) VALUES('" + txtNome.Text + "','" + txtCnpj.Text + "','" + idAddress + "','" + idPhone + "')");

            //string phoneid = ("SELECT MAX(id) as phone_id FROM phones");
            //graças ao Jether

            dao.inserir(costs);

            //Response.Redirect("EmpresaCadastradaComSucesso.aspx");
            // dao.inserir(phones);
            //dao.inserir(address);
            //dao.inserir(company);

            txtDescServ.Text = "";
            txtValor.Text = "";

            lblMsg.Text = "Custo Adicionado com sucesso!";



        }
    }
}