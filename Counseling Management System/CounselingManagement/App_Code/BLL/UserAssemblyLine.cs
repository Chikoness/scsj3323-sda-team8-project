using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using CounselingManagement.App_Code.DAL.DataSet1TableAdapters;

namespace CounselingManagement
{
    // Director
    class AssemblyLine
    {
        public void Assemble(UserBuilder userBuilder)
        {
            userBuilder.AddFName();
            userBuilder.AddLName();
            userBuilder.AddUserID();
            userBuilder.AddRole();
            userBuilder.AddOccupation();
            userBuilder.AddPhone();
            userBuilder.AddEmail();
            userBuilder.AddAddress();
            userBuilder.AddFaculty();
            userBuilder.AddAge();
        }
    }

    // Builder abstract class
    abstract class UserBuilder
    {
        protected User user;

        public User User
        {
            get { return user; }
        }
        public abstract void AddFName();
        public abstract void AddLName();
        public abstract void AddUserID();
        public abstract void AddRole();
        public abstract void AddOccupation();
        public abstract void AddPhone();
        public abstract void AddEmail();
        public abstract void AddAddress();
        public abstract void AddFaculty();
        public abstract void AddAge();
    }

    class Student : UserBuilder
    {
        UserTableAdapter uta = new UserTableAdapter();

        public Student()
        {
            user = new User();
        }
        public override void AddFName()
        {
            user["fName"] = "FName";
        }
        public override void AddLName()
        {
            user["lName"] = "LName";
        }
        public override void AddUserID()
        {
            string length = (uta.getLength() + 1).ToString();
            string convertLength = length;

            if (length.Length == 1)
            {
                convertLength = "00" + length;
            } else if (length.Length == 2)
            {
                convertLength = "0" + length;
            } else
            {
                convertLength = length;
            }

            user["userId"] = "stu-" + convertLength;
        }
        public override void AddRole()
        {
            user["role"] = "Student";
        }
        public override void AddOccupation()
        {
            user["occupation"] = "Student";
        }
        public override void AddPhone()
        {
            user["phone"] = "012-3456789";
        }
        public override void AddEmail()
        {
            user["email"] = "student@email.com";
        }
        public override void AddAddress()
        {
            user["address"] = "123 Jalan Kampung";
        }
        public override void AddFaculty()
        {
            user["faculty"] = "Komputeran";
        }
        public override void AddAge()
        {
            user["age"] = 18.ToString();
        }
    }

    class Staff : UserBuilder
    {
        UserTableAdapter uta = new UserTableAdapter();

        public Staff()
        {
            user = new User();
        }
        public override void AddFName()
        {
            user["fName"] = "FName";
        }
        public override void AddLName()
        {
            user["lName"] = "LName";
        }
        public override void AddUserID()
        {
            string length = (uta.getLength() + 1).ToString();
            string convertLength = length;

            if (length.Length == 1)
            {
                convertLength = "00" + length;
            }
            else if (length.Length == 2)
            {
                convertLength = "0" + length;
            }
            else
            {
                convertLength = length;
            }

            user["userId"] = "staf-" + convertLength;
        }
        public override void AddRole()
        {
            user["role"] = "Staff";
        }
        public override void AddOccupation()
        {
            user["occupation"] = "Lecturer / Asst. Lecturer";
        }
        public override void AddPhone()
        {
            user["phone"] = "012-3456789";
        }
        public override void AddEmail()
        {
            user["email"] = "staff@email.com";
        }
        public override void AddAddress()
        {
            user["address"] = "123 Jalan City";
        }
        public override void AddFaculty()
        {
            user["faculty"] = "Engineering";
        }
        public override void AddAge()
        {
            user["age"] = 30.ToString();
        }
    }

    class Psychologist : UserBuilder
    {
        UserTableAdapter uta = new UserTableAdapter();

        public Psychologist()
        {
            user = new User();
        }
        public override void AddFName()
        {
            user["fName"] = "FName";
        }
        public override void AddLName()
        {
            user["lName"] = "LName";
        }
        public override void AddUserID()
        {
            string length = (uta.getLength() + 1).ToString();
            string convertLength = length;

            if (length.Length == 1)
            {
                convertLength = "00" + length;
            }
            else if (length.Length == 2)
            {
                convertLength = "0" + length;
            }
            else
            {
                convertLength = length;
            }

            user["userId"] = "psy-" + convertLength;
        }
        public override void AddRole()
        {
            user["role"] = "Psychologist";
        }
        public override void AddOccupation()
        {
            user["occupation"] = "Psychologist / Asst. Psychologist";
        }
        public override void AddPhone()
        {
            user["phone"] = "012-3456789";
        }
        public override void AddEmail()
        {
            user["email"] = "psychologist@email.com";
        }
        public override void AddAddress()
        {
            user["address"] = "123 Jalan City";
        }
        public override void AddFaculty()
        {
            user["faculty"] = "Counselling";
        }
        public override void AddAge()
        {
            user["age"] = 30.ToString();
        }
    }
}