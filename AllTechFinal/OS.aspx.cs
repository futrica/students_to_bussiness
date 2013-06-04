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
    public partial class OS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string field1 = (string)(Session["field1"]);
            lblNumOs.Text = field1;

            Dao dao = new Dao();
            string cmd = ("select * From estimates Where (estimate_id LIKE '" + field1 + "')");
            MySqlDataReader reader = dao.consultarLer(cmd);
            string comp_id;
            string user_id;
            string end_id;
            string tel_id;

            while (reader.Read())
            {
                lblDescri.Text = reader[3].ToString();
                lblData.Text = reader[4].ToString();
                comp_id = reader[1].ToString();
                user_id= reader[2].ToString();
            }
            comp_id = reader[1].ToString();
            user_id = reader[2].ToString();

            reader.Close();

            cmd = ("select * From users Where (user_id LIKE '" + user_id + "')");

            MySqlDataReader reader2 = dao.consultarLer2(cmd);

            while (reader2.Read())
            {
                lblUser.Text = reader2[1].ToString();
            }
            reader2.Close();


            cmd = ("select * From companies Where (company_id LIKE '" + comp_id + "')");

            MySqlDataReader reader3 = dao.consultarLer2(cmd);

            while (reader3.Read())
            {
                lblEmpresa.Text = reader3[1].ToString();
                end_id = reader3[3].ToString();
                tel_id = reader3[4].ToString();
            }
            end_id = reader3[3].ToString();
            tel_id = reader3[4].ToString();

            reader3.Close();


            cmd = ("select * From addresses Where (address_id LIKE '" + end_id + "')");

            MySqlDataReader reader4 = dao.consultarLer2(cmd);

            while (reader4.Read())
            {
                lblRua.Text = reader4[1].ToString();
                lblNum.Text = reader4[2].ToString();
                lblBairro.Text = reader4[4].ToString();
                lblCidade.Text = reader4[5].ToString();
                lblEstado.Text = reader4[6].ToString();
                lblPais.Text = reader4[7].ToString();
            }
            reader4.Close();


            cmd = ("select * From phones Where (phone_id LIKE '" + tel_id + "')");

            MySqlDataReader reader5 = dao.consultarLer2(cmd);

            while (reader5.Read())
            {
                lblTel.Text = reader5[1].ToString();
                lblRamal.Text = reader5[2].ToString();
            }
            reader4.Close();
        }
    }
}


//cmd = ("select * from addresses where address_id=" + var);

//MySqlDataReader reader2 = dao.consultarLer2(cmd);

//while (reader2.Read())
//{
//    lblRua.Text = reader2[1].ToString();
//    lblNum.Text = reader2[2].ToString();
//    lblBairro.Text = reader2[4].ToString();
//    lblCidade.Text = reader2[5].ToString();
//    lblEstado.Text = reader2[6].ToString();
//    lblPais.Text = reader2[7].ToString();
//}
//reader2.Close();