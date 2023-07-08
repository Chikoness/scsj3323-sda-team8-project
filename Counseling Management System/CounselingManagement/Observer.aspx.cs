using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;

namespace CounselingManagement
{
    public partial class Observer : System.Web.UI.Page
    {
        Subject subject;
        SocMedAdObserver socMed;
        NewsletterObserver newsletter;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddAdvert1_Click(object sender, EventArgs e)
        {
            subject = new Subject();
            socMed = new SocMedAdObserver();
            newsletter = new NewsletterObserver();

            subject.Attach(socMed);
            subject.Attach(newsletter);

            var observers = subject.GetObservers();
            lblAdvert.Text += "Advertisement attached: ";

            for (int i = 0; i < observers.Count; i++)
            {
                img1.ImageUrl = "~/images/ad-1.jpg";
                img1.Visible = true;

                if (i == 0)
                {
                    lblAdvert.Text += observers[i].getName();
                }
                else
                {
                    lblAdvert.Text += " ::: " + observers[i].getName();
                }
            }

            lblAdvert2.Text = "Mentally blocked? Need to let it out of your chest? Come and visit our trained psychologists at the UTM Counselling office to help untangle your messy thoughts!";
        }

        protected void btnAddAdvert2_Click(object sender, EventArgs e)
        {
            subject = new Subject();
            socMed = new SocMedAdObserver();
            newsletter = new NewsletterObserver();

            subject.Attach(socMed);
            subject.Attach(newsletter);

            var observers = subject.GetObservers();
            lblAdvert.Text += " Advertisement attached: ";

            for (int i = 0; i < observers.Count; i++)
            {
                img1.ImageUrl = "~/images/ad-2.jpg";
                img1.Visible = true;

                if (i == 0)
                {
                    lblAdvert.Text += observers[i].getName();
                }
                else
                {
                    lblAdvert.Text += " ::: " + observers[i].getName();
                }
            }

            lblAdvert2.Text = "Come talk to our trained psychologists so you can always be mentally and physically at your best!";
        }

        protected void btnRmAdvert1_Click(object sender, EventArgs e)
        {
            subject = new Subject();
            socMed = new SocMedAdObserver();
            newsletter = new NewsletterObserver();

            subject.Detach(socMed);
            subject.Detach(newsletter);

            img1.Visible = false;

            lblAdvert.Text = "All advertisements detached";
            lblAdvert2.Text = "";
        }
    }
}