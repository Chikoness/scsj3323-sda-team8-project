using System;
using System.Collections.Generic;
using System.Linq;

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
            User u = new User(txtAddfname.Text, txtAddlname.Text, ddlAddRole.SelectedValue, txtAddoccupation.Text, txtAddphone.Text, txtAddemail.Text, txtAddaddress.Text, txtAddfaculty.Text, int.Parse(txtAddage.Text), txtAdduserId.Text);
            u.AddUser();
            Response.Redirect("/");
        }

        protected void btnEdituser_Click(object sender, EventArgs e)
        {
            User u = new User(txtEditfname.Text, txtEditlname.Text, ddlEditRole.SelectedValue, txtEditoccupation.Text, txtEditphone.Text, txtEditemail.Text, txtEditaddress.Text, txtEditfaculty.Text, int.Parse(txtEditage.Text), lblUserId.Text);
            u.EditUser(Convert.ToInt32(DropDownListId.SelectedValue));

            Response.Redirect("/");
        }

        protected void btnGetuser_Click(object sender, EventArgs e)
        {
            btnEditUser.Visible = true;
            btnDeleteUser.Visible = true;

            User u = new User();

            txtEditfname.Text = u.GetUser(Convert.ToInt32(DropDownListId.SelectedValue))[0];
            txtEditlname.Text = u.GetUser(Convert.ToInt32(DropDownListId.SelectedValue))[1];
            ddlEditRole.SelectedValue = u.GetUser(Convert.ToInt32(DropDownListId.SelectedValue))[2];
            txtEditoccupation.Text = u.GetUser(Convert.ToInt32(DropDownListId.SelectedValue))[3];
            txtEditphone.Text = u.GetUser(Convert.ToInt32(DropDownListId.SelectedValue))[4];
            txtEditemail.Text = u.GetUser(Convert.ToInt32(DropDownListId.SelectedValue))[5];
            txtEditaddress.Text = u.GetUser(Convert.ToInt32(DropDownListId.SelectedValue))[6];
            txtEditfaculty.Text = u.GetUser(Convert.ToInt32(DropDownListId.SelectedValue))[7];

            txtEditage.Text = u.GetUserAge(Convert.ToInt32(DropDownListId.SelectedValue)).ToString();
        }
        protected void btnDeleteuser_Click(object sender, EventArgs e)
        {
            User u = new User();
            u.DeleteUser(Convert.ToInt32(DropDownListId.SelectedValue));
            Response.Redirect("/");
        }
    }
}