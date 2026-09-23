using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Pizza_Website
{
    public static class DatabaseHelper
    {
        public static string GetConnectionString()
        {
            if (ConfigurationManager.ConnectionStrings["PizzaDBConnection"] != null)
            {
                return ConfigurationManager.ConnectionStrings["PizzaDBConnection"].ConnectionString;
            }
            return @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=PizzaOrderingDB;Integrated Security=True;";
        }

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(GetConnectionString());
        }

        public static void InitializeDatabase()
        {
            try
            {
                string masterConnStr = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True;";
                using (SqlConnection masterConn = new SqlConnection(masterConnStr))
                {
                    masterConn.Open();
                    using (SqlCommand cmd = masterConn.CreateCommand())
                    {
                        cmd.CommandText = "IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'PizzaOrderingDB') CREATE DATABASE PizzaOrderingDB;";
                        cmd.ExecuteNonQuery();
                    }
                }

                using (SqlConnection conn = GetConnection())
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandText = @"
                        IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Users')
                        BEGIN
                            CREATE TABLE Users (
                                UserId INT PRIMARY KEY IDENTITY(1,1),
                                FullName NVARCHAR(100) NOT NULL,
                                Email NVARCHAR(150) NOT NULL UNIQUE,
                                Mobile NVARCHAR(15) NOT NULL,
                                Password NVARCHAR(255) NOT NULL,
                                Address NVARCHAR(250) NULL,
                                Role NVARCHAR(20) NOT NULL DEFAULT 'User',
                                Status NVARCHAR(20) NOT NULL DEFAULT 'Active',
                                CreatedDate DATETIME NOT NULL DEFAULT GETDATE()
                            );
                        END

                        IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Admins')
                        BEGIN
                            CREATE TABLE Admins (
                                AdminId INT PRIMARY KEY IDENTITY(1,1),
                                FullName NVARCHAR(100) NOT NULL,
                                Username NVARCHAR(50) NOT NULL UNIQUE,
                                Email NVARCHAR(150) NOT NULL UNIQUE,
                                Password NVARCHAR(255) NOT NULL,
                                Status NVARCHAR(20) NOT NULL DEFAULT 'Active',
                                CreatedDate DATETIME NOT NULL DEFAULT GETDATE()
                            );
                        END

                        IF NOT EXISTS (SELECT * FROM Admins WHERE Username = 'admin')
                        BEGIN
                            INSERT INTO Admins (FullName, Username, Email, Password, Status, CreatedDate)
                            VALUES ('Pizza Palace Admin', 'admin', 'admin@pizzapalace.com', 'admin123', 'Active', GETDATE());
                        END";
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception)
            {
                // Silently handle if database already initialized
            }
        }
    }
}
