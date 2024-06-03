using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Security;

namespace idk
{
    public partial class Login : System.Web.UI.Page
    {
        // משתנה מסוג מחרוזת שישמור את הטבלה
        public string st = "";
        // משתנה מסוג מחרוזת שישמור את ההודעה למשתמש 
        public string msg = "";
        // המקום בו תשמר פקודת ה SQL שלנו 
        public string sqlMsg = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                string emailText = email.Text;
                string passwordText = password.Text;

                string sqlSelect = $"Select * from Users where email = '{emailText}' and password = '{passwordText}'";

                if (!IsExist(sqlSelect))
                {
                    msg = "Unfortunately, there is no matching user";
                    sqlMsg = sqlSelect;
                }
                else
                {
                    string sqlCheckAdmin = $"Select isAdmin from Users where email = '{emailText}' and password = '{passwordText}'";
                    using (SqlDataReader reader = ExecuteQuery(sqlCheckAdmin))
                    {
                        if (reader.Read())
                        {
                            bool isAdmin = reader.GetBoolean(reader.GetOrdinal("IsAdmin"));
                            Session["userName"] = emailText;
                            Session["Login"] = true;
                            Session["Admin"] = isAdmin;

                            if(Application["Logins"] == null)
                            {
                                Application["Logins"] = 1;
                            }
                            else
                            {
                                Application["Logins"] = (int)Application["Logins"] + 1;
                            }

                            if (Application["OnlineUsers"] == null)
                            {
                                Application["OnlineUsers"] = 1;
                            }
                            else
                            {
                                Application["OnlineUsers"] = (int)Application["OnlineUsers"] + 1;
                            }
                            FormsAuthentication.SetAuthCookie(emailText, true);
                            Session["firstname"] = reader.GetString(reader.GetOrdinal("fName"));
                            Response.Redirect("Default.aspx");
                        }
                    }
                }

                // Set the msgLabel text
                msgLabel.Text = msg;
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            // Handle the submit button click event
            Page_Load(sender, e);
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            // Clear the form fields and message label
            email.Text = "";
            password.Text = "";
            msgLabel.Text = "";
        }

        public static SqlDataReader ExecuteQuery(string sql)
        {
            SqlConnection conn = ConnectToDb();
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader data = com.ExecuteReader(CommandBehavior.CloseConnection);
            return data;
        }

        public static bool IsExist(string sql)
        {
            using (SqlDataReader data = ExecuteQuery(sql))
            {
                return data.Read();
            }
        }

        public static SqlConnection ConnectToDb()
        {
            string connection = @"Data Source=SAGIV\SQLEXPRESS;Initial Catalog=Users;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connection);
            return conn;
        }
    }
}
