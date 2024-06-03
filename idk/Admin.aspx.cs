using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace idk
{
    public partial class Admin : System.Web.UI.Page
    {
        public static SqlConnection ConnectToDb(string fileName)
        {
            string path = HttpContext.Current.Server.MapPath("~/App_Data/") + fileName;
            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True;Connect Timeout=30";

            SqlConnection conn = new SqlConnection(connString);
            return conn;
        }

        public static List<string[]> GetUsersFromDatabase(string fileName)
        {
            List<string[]> users = new List<string[]>();

            string query = "SELECT email, password, isAdmin FROM userstbl";
            using (SqlConnection conn = ConnectToDb(fileName))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string email = reader["email"].ToString();
                            string password = reader["password"].ToString();
                            string isAdmin = reader["isAdmin"].ToString();

                            users.Add(new string[] { email, password, isAdmin });
                        }
                    }
                }
            }

            return users;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["Admin"])
            {
                Response.Redirect("Default.aspx");
            }

            // Retrieve users from the database
            List<string[]> users = GetUsersFromDatabase("DB.mdf");

            // Filter out the admin user and check if there are other users
            users.RemoveAll(user => user[2] == "True"); // Assuming the admin user has isAdmin set to "True"

            // Show a message if there are no users other than the admin
            if (users.Count == 0)
            {
                noUsersLabel.Visible = true;
            }
            else
            {
                noUsersLabel.Visible = false;

                // Populate the table
                foreach (var user in users)
                {
                    TableRow row = new TableRow();

                    TableCell emailCell = new TableCell();
                    emailCell.Text = user[0];
                    row.Cells.Add(emailCell);

                    TableCell passwordCell = new TableCell();
                    passwordCell.Text = user[1];
                    row.Cells.Add(passwordCell);

                    TableCell isAdminCell = new TableCell();
                    isAdminCell.Text = user[2];
                    row.Cells.Add(isAdminCell);

                    usersTable.Rows.Add(row);
                }
            }
        }
    }
}