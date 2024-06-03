using System;

namespace idk.App_Code
{
    public class User
    {
        public int userId;
        public string userName;
        public string password;
        public string firstName;
        public string lastName;
        public DateTime birthday;
        public string city;
        public bool Admin;
        public User()
        {
            userId = -1;
            userName = "";
            password = "";
            firstName = "";
            lastName = "";
            birthday = DateTime.Today;
            city = "";
            Admin = false;

        }
    }
}