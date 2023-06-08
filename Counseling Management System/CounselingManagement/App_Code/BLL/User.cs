using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using CounselingManagement.App_Code.DAL.DataSetTableAdapters;

namespace CounselingManagement
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

        public User(string fn, string ln, string rol, string occ, string p, string em, string add, string fa, int a, int ui)
        {
            this.fName = fn;
            this.lName = ln;
            this.role = rol;
            this.occupation = occ;
            this.phone = p;
            this.email = em;
            this.address = add;
            this.faculty = fa;
            this.age = a;
            this.userId = ui;
        }

        ~User() { 
        }

        public void AddUser()
        {
            UserTableAdapter uta = new UserTableAdapter();
            uta.addUser(userId, fName, lName, occupation, role, phone, email, address, faculty, age);
        }

        public string[] GetUser(int userId)
        {
            string[] data = { "fname", "lname", "role", "occupation", "phone", "email", "address", "faculty" };
            UserTableAdapter uta = new UserTableAdapter();

            data[0] = (string) uta.getUser(userId).Rows[0].ItemArray[1];
            data[1] = (string) uta.getUser(userId).Rows[0].ItemArray[2];
            data[2] = (string) uta.getUser(userId).Rows[0].ItemArray[3];
            data[3] = (string) uta.getUser(userId).Rows[0].ItemArray[4];
            data[4] = (string) uta.getUser(userId).Rows[0].ItemArray[5];
            data[5] = (string) uta.getUser(userId).Rows[0].ItemArray[6];
            data[6] = (string) uta.getUser(userId).Rows[0].ItemArray[7];
            data[7] = (string) uta.getUser(userId).Rows[0].ItemArray[8];

            return data;
        }

        public int GetUserAge(int userId)
        {
            UserTableAdapter uta = new UserTableAdapter();

            return Convert.ToInt32(uta.getUser(userId).Rows[0].ItemArray[9]);
        }

        public void EditUser()
        {
            UserTableAdapter uta = new UserTableAdapter();
            uta.editUser(fName, lName, role, occupation, phone, email, address, faculty, age, userId);
        }

        public void DeleteUser(int userId)
        {
            UserTableAdapter uta = new UserTableAdapter();
            uta.deleteUser(userId);
        }
    }
}
