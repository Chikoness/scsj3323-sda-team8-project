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

            subject.AdvertLogic();

            lblAdvert.Text = subject.Display() + ", " + subject.Notify() + " :: " + socMed.Display() + " :: " + socMed.Update(subject);
            lblAdvert2.Text = subject.Display() + ", " + subject.Notify() + " :: " + newsletter.Display() +" :: " + newsletter.Update(subject); 
            lblAdvert3.Text = subject.AdvertLogic();
        }
        protected void btnRmAdvert1_Click(object sender, EventArgs e)
        {
            var subject = new Subject();
            var socMed = new SocMedAdObserver();
            var newsletter = new NewsletterObserver();

            subject.Detach(socMed);
            subject.Detach(newsletter);

            lblAdvert.Text = subject.DisplayDetached() + " :: " + socMed.DisplayDetached();
            lblAdvert2.Text = subject.DisplayDetached() + " :: " + newsletter.DisplayDetached();
            lblAdvert3.Text = "";
        }
    }
}