using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DefaultPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            USER u = new USER();
            u.addUser(txtAddfName.Text, txtAddlName.Text, txtAddPosition.Text, txtAddRoles.Text, txtAddpNumber.Text, 
                        txtAddEMail.Text, txtAddAddress.Text, int.Parse(txtAddAge.Text));
        }
    }
}