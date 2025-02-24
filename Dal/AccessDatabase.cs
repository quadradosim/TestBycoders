using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using static System.Runtime.InteropServices.JavaScript.JSType;
using System.Xml.Linq;
using Microsoft.Extensions.Configuration;

namespace TesteBycoders.Dal
{
    public class AccessDatabase
    {
        private readonly IConfiguration _configuration;

        public AccessDatabase(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public List<FinancialMovement> GetFinancialMovementbyEachStore()
        {
            var result = new List<FinancialMovement>();

            //get connectionString from appsettings
            string connectionString = _configuration.GetConnectionString("DefaultConnection");

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string comandoSQL = "SELECT fm.Name, t.Description, IIF(t.Nature = 'Entrada', SUM(fm.Value), SUM(fm.Value) * -1)  AS Total FROM FinancialMovement fm INNER JOIN Transactions t ON fm.IdTransaction = t.Id GROUP BY fm.name, t.Description, t.Nature ORDER BY fm.Name";

                SqlCommand cmd = new SqlCommand(comandoSQL, conn);
                cmd.CommandType = CommandType.Text;

                conn.Open();
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    var line = new FinancialMovement();

                    line.Name = dr["Name"].ToString();
                    line.Description = dr["Description"].ToString();
                    line.Total = dr["Total"].ToString();

                    result.Add(line);
                }
                conn.Close();
            }

            return result;
        }

        public void AddFinancialMovement(string type, string date, string value, string cpf, string card, string hour, string owner, string name)
        {
            var connectionString = "Server=localhost\\SQLEXPRESS;Database=Bycoders;Trusted_Connection=True;";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string comandoSQL = "INSERT INTO FinancialMovement(IdTransaction,Date,Value,CPF,Card,Hour,Owner,Name) VALUES(@IdTransaction, @Date, @Value, @CPF, @Card, @Hour, @Owner, @Name)"; 

                SqlCommand cmd = new SqlCommand(comandoSQL, con);
                cmd.CommandType = CommandType.Text;

                cmd.Parameters.AddWithValue("@IdTransaction", type);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@Value", value);
                cmd.Parameters.AddWithValue("@CPF", cpf);
                cmd.Parameters.AddWithValue("@Card", card);
                cmd.Parameters.AddWithValue("@Hour", hour);
                cmd.Parameters.AddWithValue("@Owner", owner);
                cmd.Parameters.AddWithValue("@Name", name);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}
