using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Defence
{
    public class SqlHelper
    {
        const string CON_STRING = "data Server=0ae9031a-ca19-4ffe-922b-a34000300504.sqlserver.sequelizer.com;Database=db0ae9031aca194ffe922ba34000300504;User ID=qovzudeqccvycric;Password=ZENwfAfwhmyqKeiGxUg8Aoon6aHd5GmfjwqitWjmBBVJR4cb6rHtGvLKqAyf2cAG;";

        public DataTable Query(string commandText)
        {
            SqlConnection cn = new SqlConnection(CON_STRING);
            cn.Open();

            SqlCommand myCommand = new SqlCommand();
            myCommand.Connection = cn;

            DataTable dt = new DataTable();
            SqlDataAdapter myDataAdapter = new SqlDataAdapter(commandText, cn);
            myDataAdapter.Fill(dt);

            cn.Close();

            return dt;
        }

        public void Update(string updateText)
        {
            SqlConnection cn = new SqlConnection(CON_STRING);
            cn.Open();

            SqlCommand myCommand = new SqlCommand();
            myCommand.Connection = cn;
            myCommand.CommandText = updateText;
            myCommand.ExecuteNonQuery();

            cn.Close();
        }

        public void Insert(string insertText)
        {
            SqlConnection cn = new SqlConnection(CON_STRING);
            cn.Open();

            SqlCommand myCommand = new SqlCommand();
            myCommand.Connection = cn;
            myCommand.CommandText = insertText;
            myCommand.ExecuteNonQuery();

            cn.Close();
        }

        public void UpdateFile(string commandText, byte[] fileByteArray)
        {
            SqlConnection cn = new SqlConnection(CON_STRING);
            cn.Open();

            SqlCommand cm = new SqlCommand();
            cm.Connection = cn;
            cm.CommandType = CommandType.Text;
            if (cn.State == 0) cn.Open();
            cm.CommandText = commandText;
            SqlParameter spFile = new SqlParameter("@file", SqlDbType.Binary);
            spFile.Value = fileByteArray;
            cm.Parameters.Add(spFile);
            cm.ExecuteNonQuery();
        }

        public void Delete(string deleteText)
        {
            SqlConnection cn = new SqlConnection(CON_STRING);
            cn.Open();

            SqlCommand myCommand = new SqlCommand();
            myCommand.Connection = cn;
            myCommand.CommandText = deleteText;
            myCommand.ExecuteNonQuery();

            cn.Close();
        }
    }
}