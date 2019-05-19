﻿using System;
using System.Text.RegularExpressions;

namespace ClientLibs.Core
{
    public static class ValidateUserData
    {

        #region Private Members

        //Regexp for validation
        private static Regex userNameRegex = new Regex(@"^.{3,15}$");
        private static Regex emailRegex = new Regex(@"^\w+[._-]?\w+@\w+.\w+$");
        private static Regex passwordRegex = new Regex(@"^[\w.\-,/]{8,}$");

        #endregion

        #region Public Members

        /// <summary>
        /// 
        /// </summary>
        /// <param name="name">user name to validate</param>
        /// <param name="checkEmptiness">check on emtiness</param>
        /// <returns></returns>
        public static string VilidateUserName(string name, bool checkEmptiness)
        {
            if(checkEmptiness)
                if (name == String.Empty)
                    return "User name field is empty";

            //Check data 
            if (!userNameRegex.IsMatch(name))
                return "User name should be 3-15 symbols";

            return null;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="email">user email to validate</param>
        /// <param name="checkEmptiness">check on emtiness</param>
        /// <returns></returns>
        public static string VilidateEmail(string email, bool checkEmptiness)
        {
            if(checkEmptiness)
                if (email == String.Empty)
                    return "Email field is empty";

            //Check data
            if (!emailRegex.IsMatch(email))
                return "Wrong email";

            return null;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="pass">user passwords to validate</param>
        /// <param name="checkEmptiness">check on emtiness</param>
        /// <returns></returns>
        public static string VilidatePassword(string[] pass, bool checkEmptiness)
        {
            if (checkEmptiness)
            {
                if (pass[0] == String.Empty)
                    return "Password field is empty";
                if (pass[0] == String.Empty)
                    return "Repeat password field is empty";
            }


            //Check data
            if (!passwordRegex.IsMatch(pass[0]))
                return "Password should have at less 8 symbols";


            if (pass[0] != pass[1])
                return "Paswords don't match";

            return null;
        }

        #endregion
    }
}
