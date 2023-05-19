using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CounselingManagement
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdduser_Click(object sender, EventArgs e)
        {
            User u = new User();
            u.addUser(txtAddfname.Text, txtAddlname.Text, txtAddoccupation.Text, txtAddrole.Text, txtAddphone.Text, txtAddemail.Text, txtAddaddress.Text, txtAddfaculty.Text, int.Parse(txtAddage.Text), int.Parse(txtAdduserId.Text));

            successTxt.Text = txtAddfname.Text + " from " + txtAddfaculty.Text + " added to the database.";
        }
    }
}