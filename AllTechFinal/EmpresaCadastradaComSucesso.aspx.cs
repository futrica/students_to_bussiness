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
    public partial class EmpresaCadastradaComSucesso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd = ("select * from companies");
            MySqlDataReader reader =  dao.consultarLer(cmd);
            string aux;
            string aux2;

            while (reader.Read())
            {
                lblId.Text = reader[0].ToString();
                lblNome.Text = reader[1].ToString();
                lblCnpj.Text = reader[2].ToString();
           }
            aux = reader[3].ToString();
            aux2 = reader[4].ToString();
            reader.Close();
            
            cmd = ("select * from addresses where address_id=" + aux );

            MySqlDataReader reader2 = dao.consultarLer2(cmd);

            while (reader2.Read())
            {
                lblLogra.Text = reader2[1].ToString();
                lblNum.Text = reader2[2].ToString();
                lblCep.Text = reader2[3].ToString();
                lblBairro.Text = reader2[4].ToString();
                lblCidade.Text = reader2[5].ToString();
                lblEstado.Text = reader2[6].ToString();
                lblPais.Text = reader2[7].ToString();             
            }
            reader2.Close();

            cmd = ("select * from phones where phone_id=" + aux2);

            MySqlDataReader reader3 = dao.consultarLer2(cmd);

            while (reader3.Read())
            {
                lblTel.Text = reader3[1].ToString();
                lblRamal.Text = reader3[2].ToString();
            }
            reader3.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NovaEmpresa.aspx");
        }
    }
}