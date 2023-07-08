using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Diagnostics;

namespace CounselingManagement
{
    public interface IObserver
    {
        string getName();
        string Update(ISubject subject);
    }

    public interface ISubject
    {
        void Attach(IObserver observer);
        void Detach(IObserver observer);
        List<IObserver> GetObservers();
    }

    public class Subject : ISubject
    {
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
        public List<IObserver> GetObservers()
        {
            foreach (var observer in _observers)
            {
                observer.Update(this);
            }

            return _observers;
        }

        public string AdvertLogic(IObserver observer)
        {
            if (observer.getName() == "Social Media Advertisement")
            {
                return "ad-1";
            } else
            {
                return "ad-2";
            }
        }
    }

    class SocMedAdObserver : IObserver
    {
        public string getName()
        {
            return "Social Media Advertisement";
        }
        public string Update(ISubject subject)
        {
            return "SocMedAdObserver: Airing the Advert";
        }
    }

    class NewsletterObserver : IObserver
    {
        public string getName()
        {
            return "Newsletter";
        }
        public string Update(ISubject subject)
        {
             return "NewsletterObserver: Airing the Advert";
        }
    }
}