using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading;
using System.Diagnostics;

namespace CounselingManagement
{
    public interface IObserver
    {
        string Update(ISubject subject);
        string Display();
        string DisplayDetached();
    }

    public interface ISubject
    {
        void Attach(IObserver observer);
        void Detach(IObserver observer);
        string Notify();
    }

    public class Subject : ISubject
    {
        public int State { get; set; } = -0;
        private List<IObserver> _observers = new List<IObserver>();
        public void Attach(IObserver observer)
        {
            Debug.WriteLine("Subject: Attached an advert");
            this._observers.Add(observer);
        }

        public void Detach(IObserver observer)
        {
            Debug.WriteLine("Subject: Detached an advert");
            this._observers.Remove(observer);
        }
        public string Notify()
        {
            Debug.WriteLine("Subject: Notifying all advert displayers...");

            foreach (var observer in _observers)
            {
                observer.Update(this);
            }

            return "Subject: Notifying all advert displayers...";
        }

        public string Display()
        {
            Debug.WriteLine("Subject: Notifying all advert displayers...");
            return "Subject: Attached new advert";
        }

        public string DisplayDetached()
        {
            return "Subject: Detached an advert";
        }

        public string AdvertLogic()
        {
            Debug.WriteLine("\nSubject: Transferred Advert to Observers.");
            this.State = new Random().Next(0, 30);

            Thread.Sleep(5);

            Debug.WriteLine("Subject: Advert getting ready to be aired in: " + this.State + " minutes");
            this.Notify();

            return "Subject: Transferred Advert to Observers.";
        }
    }

    class SocMedAdObserver : IObserver
    {
        public string Display()
        {
            return "Advert sent to Social Media";
        }
        public string DisplayDetached()
        {
            return "Advert taken off Social Media";
        }
        public string Update(ISubject subject)
        {
            if ((subject as Subject).State < 3)
            {
                Debug.WriteLine("SocMedAdObserver: Airing the Advert");
                return "SocMedAdObserver: Airing the Advert";
            }

            return "";
        }
    }

    class NewsletterObserver : IObserver
    {
        public string Display()
        {
            return "Advert sent to Newsletter";
        }
        public string DisplayDetached()
        {
            return "Advert taken off Newsletter";
        }
        public string Update(ISubject subject)
        {
            if ((subject as Subject).State == 0 || (subject as Subject).State >= 2)
            {
                Debug.WriteLine("NewsletterObserver: Airing the Advert");
                return "NewsletterObserver: Airing the Advert";
            }

            return "";
        }
    }
}