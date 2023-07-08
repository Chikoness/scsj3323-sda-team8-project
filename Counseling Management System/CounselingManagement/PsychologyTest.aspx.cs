using System;
using System.Collections.Generic;
using System.Linq;

namespace CounselingManagement
{
    public partial class PsychologyTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(txtScore.Text) < 1 || Convert.ToInt32(txtScore.Text) > 100)
            {
                lblError.Text = "Score must be between 0 - 100. Please enter score again";
                return;
            }

            Test psyTest = new Test(Convert.ToInt32(txtScore.Text), ddlCat.SelectedValue);
            lblRes.Text = psyTest.getTestScoreResult();
        }
    }
}