using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;

namespace idk.aspx
{
    public partial class Register : Page
    {
        public string st = "";
        public string msg = "";
        public string sqlMsg = "";

        public static string connString = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;


        public static SqlConnection ConnectToDb()
        {
            string connection = @"Data Source=SAGIV\SQLEXPRESS;Initial Catalog=Users;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connection);
            return conn;
        }

        public static void DoQuery(string sql)
        {
            SqlConnection conn = ConnectToDb();
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }

        public static bool IsExist(string sql)
        {
            SqlConnection conn = ConnectToDb();
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader data = com.ExecuteReader();
            bool found = Convert.ToBoolean(data.Read());
            conn.Close();
            return found;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string fname = Request["firstname"];
                string lname = Request["lastname"];
                string email = Request["email"];
                string password = Request["password"];
                string birthdate = Request["birthdate"];
                string id = Request["id"];
                string gender = Request["gender"];

                string favoriteMetals = "";
                if (Request.Form.GetValues("gold") != null)
                {
                    foreach (string metal in Request.Form.GetValues("gold"))
                    {
                        favoriteMetals += metal + ", ";
                    }
                }
             

                st += "<tr><td>first name: </td> <td>" + fname + "</td></tr>";
                st += "<tr><td>last name: </td> <td>" + lname + "</td></tr>";
                st += "<tr><td>email: </td> <td>" + email + "</td></tr>";
                st += "<tr><td>password: </td> <td>" + password + "</td></tr>";
                st += "<tr><td>birthdate: </td> <td>" + birthdate + "</td></tr>";
                st += "<tr><td>id: </td> <td>" + id + "</td></tr>";
                st += "<tr><td>gender: </td> <td>" + gender + "</td></tr>";

                string fileName = "Database1.mdf";
                string sqlSelect = $"Select * from Users where email = '{email}'";

                if (IsExist(sqlSelect))
                {
                    msg = "This email address is already in the DB";
                    sqlMsg = sqlSelect;
                }
                else
                {
                    Session["logout"] = true;
                    string sqlInsert = $"Insert into Users values ('{fname}','{lname}','{password}','{email}',0,'{birthdate}','{gender}','{id}','{favoriteMetals}')";
                    sqlMsg = sqlInsert;
                    Application["loggedVisitors"] = (int)Application["loggedVisitors"] + 1;
                    DoQuery(sqlInsert);
                    Session["login"] = true;
                    Session["email"] = email;
                    msg = "success";
                    if (Session["email"] != null)
                    {
                        string firstName = GetFirstNameByEmail(email, fileName);

                        Session["firstname"] = firstName;
                    }
                    FormsAuthentication.SetAuthCookie(email, true);
                    if(Application["OnlineUsers"] == null)
                    {
                        Application["OnlineUsers"] = 1;
                    }
                    else
                    {
                        Application["OnlineUsers"] = (int)Application["OnlineUsers"] + 1;
                    }
                    Response.Redirect("default.aspx");
                }
            }
        }
        private string GetFirstNameByEmail(string email, string fileName)
        {
            string firstName = null;
            string connString = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
            string conn = @"Data Source=SAGIV\SQLEXPRESS;Initial Catalog=Users;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(conn))
            {
                string query = "SELECT fname FROM Users WHERE email = @Email";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        firstName = reader["fname"].ToString();
                    }
                }
            }

            return firstName;
        }
    }
}
