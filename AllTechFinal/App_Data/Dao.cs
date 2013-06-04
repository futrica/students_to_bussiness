using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace AllTechFinal
{
    public class Dao
    {
        static string conexao = "Persist Security Info=False;server=127.0.0.1;database=alltech;uid=root;pwd=Comtec123jb";
        MySqlConnection conMySQL = new MySqlConnection(conexao);
        MySqlCommand cmdMySQL = null;
        MySqlDataReader consulta;
        MySqlDataAdapter consulta2;
        public Dao(){}        
        private bool OpenConnection()
        {
            try
            {
                conMySQL.Open();
                return true;
            }
            catch (MySqlException ex)
            {                
                switch (ex.Number)
                {
                    case 0:
                        Console.Write("Cannot connect to server.  Contact administrator");                        
                        break;

                    case 1045:
                        Console.Write("Invalid username/password, please try again");
                        break;
                }
                return false;
            }
        }
        public void inserir(string sql)
        {
            //"INSERT INTO contato(nome,email) VALUES('" + txtNome.Text + "','" + txtEmail.Text + "')";
            if(this.OpenConnection() == true)
            {
                cmdMySQL = new MySqlCommand(sql, conMySQL);                
                cmdMySQL.ExecuteNonQuery();
                cmdMySQL.Dispose();               
            }
            conMySQL.Close();
        }

        public void atualizar(string sql)
        {
            //"UPDATE contato SET nome='" + txtNome.Text + "', email='" + txtEmail.Text +"' WHERE id='" + id + "'";
            if (this.OpenConnection() == true)
            {
                cmdMySQL = new MySqlCommand(sql, conMySQL);                                
                cmdMySQL.ExecuteNonQuery();                
            }
            conMySQL.Close();
        }

        public MySqlDataReader consultar(string sql)
        {
            //"SELECT * FROM contato ORDER BY nome ASC";
            //"SELECT * FROM contato WHERE nome LIKE '"+txtPesquisar.Text+"%' ORDER BY nome ASC";
            //"SELECT * FROM contato WHERE id = '"+txtId.Text+"%' ORDER BY id ASC";
            /*
             * EXEMPLO DE ITERAÇÃO DO READER QUE SERÁ RETORNADO NESSE MÉTODO
             * while(reader.Read())
				{					
                    ListViewItem list = new ListViewItem(reader[0].ToString());
                    list.SubItems.Add(reader[0].ToString());//->ID_CONTATO
					list.SubItems.Add(reader[1].ToString());//->NOME
					list.SubItems.Add(reader[2].ToString());//->EMAIL
					lstvContatos.Items.AddRange(new ListViewItem [] {list});
				}
				reader.Close();
             */            
            if (this.OpenConnection() == true)
            {
                cmdMySQL = new MySqlCommand(sql, conMySQL);
                consulta = cmdMySQL.ExecuteReader();
            }
            conMySQL.Close();
            return consulta;
        }

        public MySqlDataAdapter consultar2(string sql)
        {            
            if (this.OpenConnection() == true)
            {
                cmdMySQL = new MySqlCommand(sql, conMySQL);
                consulta2 = new MySqlDataAdapter(cmdMySQL);
            }
            conMySQL.Close();
            return consulta2;
        }
        public void excluir(string sql)
        {
            //"DELETE FROM contato WHERE id='" + lstvContatos.Items[lstvContatos.FocusedItem.Index].Text + "'";
            if (this.OpenConnection() == true)
            {
                cmdMySQL = new MySqlCommand(sql, conMySQL);
                cmdMySQL.ExecuteNonQuery();
            }
            conMySQL.Close();
        }

        public int insereERetornaIdInsercao(string sql) {
            int id = 0;              
            if (this.OpenConnection() == true)
            {
                cmdMySQL = new MySqlCommand(sql, conMySQL);
                cmdMySQL.ExecuteNonQuery();
                long idLong = cmdMySQL.LastInsertedId;
                id = Convert.ToInt32(idLong);
            }
            conMySQL.Close();            
            return id;
        }



        public MySqlDataReader consultarLer(string sql)
        {
            //"SELECT * FROM contato ORDER BY nome ASC";
            //"SELECT * FROM contato WHERE nome LIKE '"+txtPesquisar.Text+"%' ORDER BY nome ASC";
            //"SELECT * FROM contato WHERE id = '"+txtId.Text+"%' ORDER BY id ASC";
            /*
             * EXEMPLO DE ITERAÇÃO DO READER QUE SERÁ RETORNADO NESSE MÉTODO
             * while(reader.Read())
				{					
                    ListViewItem list = new ListViewItem(reader[0].ToString());
                    list.SubItems.Add(reader[0].ToString());//->ID_CONTATO
					list.SubItems.Add(reader[1].ToString());//->NOME
					list.SubItems.Add(reader[2].ToString());//->EMAIL
					lstvContatos.Items.AddRange(new ListViewItem [] {list});
				}
				reader.Close();
             */
            if (this.OpenConnection() == true)
            {
                cmdMySQL = new MySqlCommand(sql, conMySQL);
                consulta = cmdMySQL.ExecuteReader();
            }
           
            return consulta;
        }


        public MySqlDataReader consultarLer2(string sql)
        {
            cmdMySQL = new MySqlCommand(sql, conMySQL);
            consulta = cmdMySQL.ExecuteReader();
            return consulta;
        }

  //      public MySqlDataReader consultarLer3(string sql)
    //    {
   //         cmdMySQL = new MySqlCommand(sql, conMySQL);
   //         consulta = cmdMySQL.ExecuteReader();
   //         return consulta;
 //       }
        
    }
}