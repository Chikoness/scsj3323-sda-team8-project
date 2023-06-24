using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CounselingManagement.App_Code.DAL.DataSet1TableAdapters;

namespace CounselingManagement
{
    public partial class Builder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStudent_Click(object sender, EventArgs e)
        {
            UserBuilder builder;

            AssemblyLine build = new AssemblyLine();

            builder = new Student();
            build.Assemble(builder);
            builder.User.BuildUser();
        }

        protected void btnAdduser2_Click(object sender, EventArgs e)
        {
            UserBuilder builder;

            AssemblyLine build = new AssemblyLine();

            builder = new Staff();
            build.Assemble(builder);
            builder.User.BuildUser();
        }

        protected void btnAdduser3_Click(object sender, EventArgs e)
        {
            UserBuilder builder;

            AssemblyLine build = new AssemblyLine();

            builder = new Psychologist();
            build.Assemble(builder);
            builder.User.BuildUser();
        }
    }
}