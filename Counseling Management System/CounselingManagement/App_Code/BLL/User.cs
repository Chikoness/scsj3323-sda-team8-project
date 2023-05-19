using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using CounselingManagement.App_Code.DAL.DataSetTableAdapters;

namespace CounselingManagement.App_Code.BLL
{
    public class User
    {
        private string fName;
        private string lName;
        private string occupation;
        private string role;
        private string phone;
        private string email;
        private string address;
        private string faculty;
        private int age;
        private int userId;

        public User() { 
        }

        ~User() { 
        }

        public void addUser(string fName, string lName, string occupation, string role, string phone, string email, string address, string faculty, int age, int userId)
        {
            UserTableAdapter uta = new UserTableAdapter();
            uta.addUser(userId, fName, lName, role, occupation, phone, email, address, faculty, age);
        }

    }
}
