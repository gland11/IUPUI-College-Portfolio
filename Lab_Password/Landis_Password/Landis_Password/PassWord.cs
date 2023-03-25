using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
//George Landis
//3/21/2018
//ECET 164
//Lab 09
// Password
namespace Landis_Password
{
    

    public partial class PassWord : Form
    {
        public char PasswordChar { get; set; }
        
        public PassWord()
        {
            InitializeComponent();
        }

        private void checkPasswordButton_Click(object sender, EventArgs e)
        {
            passwordTextBox.PasswordChar = '*';
            GetStuff();  //call the method
        }

        private void GetStuff()
        {
            // const
            const int MIN_LENGTH = 9; // password min len

            // get pass from TB
            string password = passwordTextBox.Text;
            
            // Validate pass
            if (password.Length >= MIN_LENGTH &&
                NumberUpperCase(password) >= 2 &&
                NumberLowerCase(password) >= 1 &&
                NumberDigits(password) >= 1 &&
                NumberWhiteSpace(password) >= 1 &&
                NumberPunctuation(password) >= 1 &&
                NumberSeparator(password) >= 1)
            {
                MessageBox.Show("The password is valid :D");
            }
            else
            {
                MessageBox.Show("The passord does not meet " + 
                    "the requirements.");
            }
        }
        private int NumberUpperCase(string myString)
        {
            int countUpper = 0; // the nu of uppercase letter

            for(int count = 0; count < myString.Length; count++)
            {
                if(char.IsUpper(myString[count]))
                {
                    countUpper++; //upperCase += 1;
                }
            }
            // return the num of upper case char
            return countUpper;
        }
        private int NumberLowerCase(string myString)
        {
            int countLower = 0; // the nu of lowercase letter

            for (int count = 0; count < myString.Length; count++)
            {
                if (char.IsLower(myString[count]))
                {
                    countLower++; //lowerCase += 1;
                }
            }
            // return the num of lower case char
            return countLower;
        }
        private int NumberDigits(string myString)
        {
            int digits = 0;
            for (int count = 0; count < myString.Length; count ++)
            {
                if(char.IsDigit(myString[count]))
                {
                    digits++;
                }
            }
            return digits;
        }
        private int NumberWhiteSpace(string myString)
        {
            int countWhiteSpace = 0; // the nu of case letter

            for (int count = 0; count < myString.Length; count++)
            {
                if (char.IsWhiteSpace(myString[count]))
                {
                    countWhiteSpace++; //upperCase += 1;
                }
            }
            // return the num of upper case char
            return countWhiteSpace;
        }

        private int NumberPunctuation(string myString)
        {
            int countPunctuation = 0;

            for (int count = 0; count < myString.Length; count++)
            {
                if (char.IsPunctuation(myString[count]))
                    {
                    countPunctuation++;
                }
            }
            return countPunctuation;
        }

        private int NumberSeparator(string myString)
        {
            int countSeparator = 0;

            for (int count = 0; count < myString.Length; count++)
            {
                if (char.IsSeparator(myString[count]))
                {
                    countSeparator++;
                }
            }
            return countSeparator;
        }
        private void exitButton_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}