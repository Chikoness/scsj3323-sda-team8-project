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
            if (txtEditfname != null)
            {
                btnEditUser.Visible = false;
                btnDeleteUser.Visible = false;
            } else
            {
                btnEditUser.Visible = true;
                btnDeleteUser.Visible = true;
            }
        }

        protected void btnAdduser_Click(object sender, EventArgs e)
        {
            User u = new User();
            u.AddUser(txtAddfname.Text, txtAddlname.Text, txtAddoccupation.Text, ddlAddRole.SelectedValue, txtAddphone.Text, txtAddemail.Text, txtAddaddress.Text, txtAddfaculty.Text, int.Parse(txtAddage.Text), int.Parse(txtAdduserId.Text));
            Response.Redirect("/");
        }

        protected void btnEdituser_Click(object sender, EventArgs e)
        {
            User u = new User();
            u.EditUser(txtEditfname.Text, txtEditlname.Text, txtEditoccupation.Text, ddlEditRole.SelectedValue, txtEditphone.Text, txtEditemail.Text, txtEditaddress.Text, txtEditfaculty.Text, int.Parse(txtEditage.Text), int.Parse(DropDownListUserId.SelectedValue));

            Response.Redirect("/");
        }

        protected void btnGetuser_Click(object sender, EventArgs e)
        {
            btnEditUser.Visible = true;
            btnDeleteUser.Visible = true;

            User u = new User();

            txtEditfname.Text = u.GetUserData(Convert.ToInt32(DropDownListUserId.SelectedValue))[0];
            txtEditlname.Text = u.GetUserData(Convert.ToInt32(DropDownListUserId.SelectedValue))[1];
            ddlEditRole.SelectedValue = u.GetUserData(Convert.ToInt32(DropDownListUserId.SelectedValue))[2];
            txtEditoccupation.Text = u.GetUserData(Convert.ToInt32(DropDownListUserId.SelectedValue))[3];
            txtEditphone.Text = u.GetUserData(Convert.ToInt32(DropDownListUserId.SelectedValue))[4];
            txtEditemail.Text = u.GetUserData(Convert.ToInt32(DropDownListUserId.SelectedValue))[5];
            txtEditaddress.Text = u.GetUserData(Convert.ToInt32(DropDownListUserId.SelectedValue))[6];
            txtEditfaculty.Text = u.GetUserData(Convert.ToInt32(DropDownListUserId.SelectedValue))[7];

            txtEditage.Text = u.GetUserDataAge(Convert.ToInt32(DropDownListUserId.SelectedValue)).ToString();
        }
        protected void btnDeleteuser_Click(object sender, EventArgs e)
        {
            User u = new User();
            u.DeleteUser(Convert.ToInt32(DropDownListUserId.SelectedValue));
            Response.Redirect("/");
        }
    }
}