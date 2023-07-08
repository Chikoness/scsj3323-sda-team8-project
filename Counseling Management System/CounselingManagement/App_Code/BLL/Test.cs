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
            if (score >= 80)
            {
                return "Good";
            } else if (score >= 50)
            {
                return "Average";
            } else
            {
                return "Bad";
            }
        }

        public string getCategory()
        {
            return this.category;
        }

        public int displayRescheduleTest()
        {
            string testScore = getTestScoreResult();
            switch (testScore)
            {
                case "Good":
                    return category == "normal" ? 0 : 0;
                case "Average":
                    return category == "normal" ? 1 : 1;
                case "Bad":
                    return category == "normal" ? 2 : 3;
                default:
                    return 0;
            }
        }

        public int displayFollowUp()
        {
            string testScore = getTestScoreResult();
            switch (testScore)
            {
                case "Good":
                    return category == "normal" ? 0 : 0;
                case "Average":
                    return category == "normal" ? 0 : 1;
                case "Bad":
                    return category == "normal" ? 1 : 2;
                default:
                    return 0;
            }
        }
    }
}