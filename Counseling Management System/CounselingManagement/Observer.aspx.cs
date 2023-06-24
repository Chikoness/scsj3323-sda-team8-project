using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CounselingManagement
{
    public partial class Observer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddAdvert1_Click(object sender, EventArgs e)
        {
            var subject = new Subject();
            var socMed = new SocMedAdObserver();
            var newsletter = new NewsletterObserver();

            subject.Attach(socMed);
            subject.Attach(newsletter);
        }
        protected void btnRmAdvert1_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogicAdvert1_Click(object sender, EventArgs e)
        {

        }
    }
}