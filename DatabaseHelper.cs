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
                return ConfigurationManager.ConnectionStrings["PizzaDBConnection"].ConnectionString;

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
                using (SqlConnection con = GetConnection())
                {
                    con.Open();

                    string sql = @"
IF OBJECT_ID('dbo.Users','U') IS NULL
BEGIN
    CREATE TABLE Users
    (
        UserId INT IDENTITY(1,1) PRIMARY KEY,
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

IF OBJECT_ID('dbo.Admins','U') IS NULL
BEGIN
    CREATE TABLE Admins
    (
        AdminId INT IDENTITY(1,1) PRIMARY KEY,
        FullName NVARCHAR(100) NOT NULL,
        Username NVARCHAR(50) NOT NULL UNIQUE,
        Email NVARCHAR(150) NOT NULL UNIQUE,
        Password NVARCHAR(255) NOT NULL,
        Status NVARCHAR(20) NOT NULL DEFAULT 'Active',
        CreatedDate DATETIME NOT NULL DEFAULT GETDATE()
    );
END

IF OBJECT_ID('dbo.DeliveryStaff','U') IS NULL
BEGIN
    CREATE TABLE DeliveryStaff
    (
        DeliveryId INT IDENTITY(1,1) PRIMARY KEY,
        FullName NVARCHAR(100) NOT NULL,
        Email NVARCHAR(150) NOT NULL,
        Mobile NVARCHAR(15) NOT NULL,
        Password NVARCHAR(100) NOT NULL,
        VehicleNumber NVARCHAR(50) NULL,
        Address NVARCHAR(250) NULL,
        Status NVARCHAR(20) NOT NULL DEFAULT 'Available',
        CreatedDate DATETIME NOT NULL DEFAULT GETDATE()
    );
END

IF OBJECT_ID('dbo.Categories','U') IS NULL
BEGIN
    CREATE TABLE Categories
    (
        CategoryId INT IDENTITY(1,1) PRIMARY KEY,
        CategoryName NVARCHAR(100) NOT NULL UNIQUE,
        Description NVARCHAR(500) NULL,
        Status NVARCHAR(20) NOT NULL DEFAULT 'Active',
        CreatedDate DATETIME NOT NULL DEFAULT GETDATE()
    );
END

IF OBJECT_ID('dbo.Pizzas','U') IS NULL
BEGIN
    CREATE TABLE Pizzas
    (
        PizzaId INT IDENTITY(1,1) PRIMARY KEY,
        PizzaName NVARCHAR(150) NOT NULL,
        CategoryId INT NOT NULL,
        Price DECIMAL(10,2) NOT NULL,
        Status NVARCHAR(30) NOT NULL DEFAULT 'Available',
        ImageUrl NVARCHAR(250) NULL,
        Description NVARCHAR(500) NULL,
        CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),
        CONSTRAINT FK_Pizzas_Categories FOREIGN KEY(CategoryId) REFERENCES Categories(CategoryId)
    );
END

IF OBJECT_ID('dbo.Orders','U') IS NULL
BEGIN
    CREATE TABLE Orders
    (
        OrderId INT IDENTITY(1000,1) PRIMARY KEY,
        UserId INT NULL,
        CustomerName NVARCHAR(100) NOT NULL,
        DeliveryAddress NVARCHAR(250) NULL,
        Phone NVARCHAR(20) NULL,
        Amount DECIMAL(10,2) NOT NULL,
        PaymentMethod NVARCHAR(30) NOT NULL DEFAULT 'COD',
        PaymentStatus NVARCHAR(30) NOT NULL DEFAULT 'Pending',
        OrderStatus NVARCHAR(40) NOT NULL DEFAULT 'Pending',
        DeliveryId INT NULL,
        CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),
        CONSTRAINT FK_Orders_Users FOREIGN KEY(UserId) REFERENCES Users(UserId),
        CONSTRAINT FK_Orders_Delivery FOREIGN KEY(DeliveryId) REFERENCES DeliveryStaff(DeliveryId)
    );
END

IF NOT EXISTS (SELECT 1 FROM Admins WHERE Username='admin')
BEGIN
    INSERT INTO Admins(FullName,Username,Email,Password,Status)
    VALUES('Pizza Palace Admin','admin','admin@pizzapalace.com','admin123','Active');
END

IF NOT EXISTS (SELECT 1 FROM Categories)
BEGIN
    INSERT INTO Categories(CategoryName,Description,Status) VALUES
    ('Veg Pizza','Fresh vegetarian pizzas','Active'),
    ('Non-Veg Pizza','Chicken and meat pizzas','Active'),
    ('Cheese Pizza','Extra cheese pizzas','Active'),
    ('Combo Meals','Pizza combo meals','Active');
END

IF NOT EXISTS (SELECT 1 FROM Pizzas)
BEGIN
    INSERT INTO Pizzas(PizzaName,CategoryId,Price,Status,ImageUrl,Description)
    SELECT 'Margherita Supreme',CategoryId,299,'Available','pizza1.jpg','Classic mozzarella cheese and basil' FROM Categories WHERE CategoryName='Veg Pizza';
    INSERT INTO Pizzas(PizzaName,CategoryId,Price,Status,ImageUrl,Description)
    SELECT 'Pepperoni Feast',CategoryId,449,'Available','pizza2.jpg','Loaded sliced pepperoni' FROM Categories WHERE CategoryName='Non-Veg Pizza';
    INSERT INTO Pizzas(PizzaName,CategoryId,Price,Status,ImageUrl,Description)
    SELECT 'Four Cheese Burst',CategoryId,549,'Available','pizza5.jpg','Liquid cheese stuffed crust' FROM Categories WHERE CategoryName='Cheese Pizza';
END

IF NOT EXISTS (SELECT 1 FROM DeliveryStaff)
BEGIN
    INSERT INTO DeliveryStaff(FullName,Email,Mobile,Password,VehicleNumber,Address,Status)
    VALUES('Rahul Sharma','rahul@gmail.com','9876543210','rahul123','GJ01AB1234','Rajkot','Available');
END

IF NOT EXISTS (SELECT 1 FROM Orders)
BEGIN
    INSERT INTO Orders(CustomerName,DeliveryAddress,Phone,Amount,PaymentMethod,PaymentStatus,OrderStatus,DeliveryId)
    SELECT 'John Doe','Flat 402, Baker Street','9876543210',1131.48,'Card','Paid','Out for Delivery',MIN(DeliveryId) FROM DeliveryStaff;
    INSERT INTO Orders(CustomerName,DeliveryAddress,Phone,Amount,PaymentMethod,PaymentStatus,OrderStatus,DeliveryId)
    SELECT 'Anita Roy','Park Road','9822233344',499,'COD','Pending','Preparing',MIN(DeliveryId) FROM DeliveryStaff;
END
";

                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception)
            {
                // Pages display the actual database error when a query fails.
            }
        }
    }
}
