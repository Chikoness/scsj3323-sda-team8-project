using System;
using System.Collections.Generic;
using System.Threading;
using System.Text;
using System.IO;
using System.Web;
//using DataSet1TableAdapters;
using WebApplication1.App_Code.DAL.DataSet1TableAdapters;

public class USER   
    {
        private int id;
        private string fName;
        private string lName;
        private string position;
        private string roles;
        private string phoneNumber;
        private string eMail;
        private string contactAdd;
        private string faculty;
        private int age;

            public USER() { 
            }

            ~USER(){

             }  

            public void addUser (int id, string fName, string lname, string position, string roles, string phoneNumber, string eMail,
                                    string contactAdd, string faculty, int age)
             {
                
                USERTableAdapter uta = new USERTableAdapter();
                uta.addUser (fName, lName, position, roles, phoneNumber,eMail, contactAdd, faculty, age);    

             }

    }
