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
    public partial class PesquisarEmpresas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            string cmd = ("select * from companies");
            MySqlDataReader reader = dao.consultarLer(cmd);
            Response.Write("<table border=" +"1>");
            while (reader.Read())
            {
                Response.Write("<tr>" + "<td>" + "id: " + "<strong>" + reader[0].ToString() + "</strong>" + "   </td>");
                Response.Write("<td>" + "empresa: " + "<strong>" + reader[1].ToString() + "</strong>" + " <br/>" + "</td>" + "</tr>");
             //   lblNome.Text = reader[1].ToString();
             //   lblCnpj.Text = reader[2].ToString();
            }
            Response.Write("</table>");
            reader.Close();
        }
    }
}