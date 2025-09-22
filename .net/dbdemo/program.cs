using System;
using System.Data.SqlClient;
namespace dbdemo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            Console.WriteLine("Getting Connection ...");

            var datasource = @"LAPTOP-U25QJMLJ"; // your server
            var database = "db_demo"; // your database name
            //var username = "DESKTOP-LCNNVH9\\kk"; // username of server to connect
            //var password = ""; // password

            // Create your connection string
            string connString = @"Data Source=" + datasource +
                ";Initial Catalog=" + database + "; Trusted_Connection=True;";


            Console.WriteLine(connString);

            SqlConnection conn = new SqlConnection(connString);

            try
            {
                Console.WriteLine("Opening Connection ...");
                // Open the connection
                conn.Open();
                Console.WriteLine("Connection successful!");
                InsertStaff(conn);
                displayStaff(conn);

            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e.Message);
            }
            finally
            {
                // Close the connection
                conn.Close();
            }


        }
        static void InsertStaff(SqlConnection conn)
        {
            Console.Write("Enter the Staff Name...");
            int id = 2;
            string name = "Jayashree";
            string num = "9876543210";
           
            string querry = "insert into students (student_id,student_name,contact_num) values(@id,@name,@num)";
            SqlCommand cm = new SqlCommand(querry, conn);
            cm.Parameters.AddWithValue("@id", id);
            cm.Parameters.AddWithValue("@name", name);
            
            cm.Parameters.AddWithValue("@num", num);
            int rows = cm.ExecuteNonQuery();
            if (rows > 0)
            {
                Console.WriteLine("Inseted recordsuccessfully");
            }


        }
        static void displayStaff(SqlConnection conn)
        {
            string query = "select * from students";
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader reader = cm.ExecuteReader();
            Console.WriteLine("Staff :");
            while (reader.Read())
            {
                {
                    Console.WriteLine($"Name :{reader["Name"]}");

                }
            }
        }
    }
}