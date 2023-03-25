using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

// George Landis
// ECET 164
// Lab_07 Present Value
// 2/21/2018
namespace LandisLab07_164
{
    public partial class CalcPresentValue : Form
    {
        public CalcPresentValue()
        {
            InitializeComponent();
        }

        private double PresentValue(double num1, double num2, double num3)
        {
            double result = 0;
            result = (num1 / (Math.Pow (1+(num2 / 100), num3)));
            return result;
        }

        private void calcBtn_Click(object sender, EventArgs e)
        {
            // Three Var all doubles
            double valueWanted = 0;
            double interestRateWanted = 0;
            double numberYearsWanted = 0;
            double depositToday = 0;

            //Validate user input 
            if(double.TryParse(valueWantedTextBox.Text,out valueWanted))
            {
                if(double.TryParse(rateWantedTextBox.Text,out interestRateWanted))
                {
                    if(double.TryParse(yearsWantedTextBox.Text,out numberYearsWanted))
                    {
                        // Call Method
                        depositToday = PresentValue(valueWanted, interestRateWanted, numberYearsWanted);

                        //Display that deposit
                        OutputLabel.Text = depositToday.ToString("n2");
                    }
                    //else for yearsWanted
                    else
                    {
                        MessageBox.Show("Enter a Positive Number for Number of Years Wanted.");
                        yearsWantedTextBox.Focus();
                    }
                }
                //else for rateWanted
                else
                {
                    MessageBox.Show("Enter a Positive Number for Annual Interest Rate Wanted.");
                    rateWantedTextBox.Focus();
                }
            }
            // Else for ValueWanted
            else
            {
                MessageBox.Show("Enter a Positive Number for the Future Value Wanted");
                valueWantedTextBox.Focus();
            }
        }

        private void clrBtn_Click(object sender, EventArgs e)
        {
            valueWantedTextBox.Text = "";
            rateWantedTextBox.Text = "";
            yearsWantedTextBox.Text = "";
            OutputLabel.Text = "";
        }

        private void extBtn_Click(object sender, EventArgs e)
        {
            // Close Program
            Close();
        }
    }
}
