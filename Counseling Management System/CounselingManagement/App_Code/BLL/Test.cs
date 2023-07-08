using System;
using System.Collections.Generic;
using System.Linq;

namespace CounselingManagement
{
    public class Test
    {
        int score;
        string category;

        public Test() {}
        public Test(int s, string c)
        {
            this.score = s;
            this.category = c;
        }

        public string getTestScoreResult()
        {
            var res = "";

            switch (score)
            {
                case >= 80:
                    res = "Good";
                    break;
                case >= 50:
                    res = "Average";
                    break;
                default:
                    res = "Bad";
                    break;
            }

            return res;
        }
    }
}