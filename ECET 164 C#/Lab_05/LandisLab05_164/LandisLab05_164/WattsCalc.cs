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
// Lab 05
// ECET 164

namespace LandisLab05_164
{
    public partial class WattsCalc : Form
    {
        public WattsCalc()
        {
            InitializeComponent();
        }
        private void calcBtn_Click(object sender, EventArgs e)
        {
            // Local Variables
            double power = 0;
            double seconds = 0; // The Total seconds
            double joules = 0; // the number of joules
            int count = 1; // Loop counter, intialized with 1
            double finalJoules = 0;
            int seconds_Count = 1;
            // String Balance
            if (double.TryParse(joulesTextBox.Text,out joules) && (joules >=0))
            {
                // Get number of seconds
                if (double.TryParse(secondsTextBox.Text,out seconds) && (seconds >=0))
                {   // Loop calcs the Power of Watts
                    while (count <= seconds && seconds_Count <= seconds)
                    {   // Power equation
                        power = mathPower(joules, seconds);
                        // Energy equation
                        finalJoules = mathJoules(power, seconds_Count);

                        // Display the ending Power
                        powerResultLabel.Text = ("The Power result in Watts is " +
                            power.ToString("n3")
                            + "W");

                        // Display the Joules in List Box
                        finalResultListBox.Items.Add("Afer " + count + " second the work done was " +
                            finalJoules.ToString("n3")
                            + " Joules.");

                        count++;
                        seconds_Count++;
                    }   
                    // So I can get it all to work except for the up to 10 and a list part that I do not understand I have gone through
                    // a lot of different areas and tutorials and still am confused. 
                }
                else
                {
                    MessageBox.Show(secondsTextBox.Text + " is an invalid value for seconds.");
                    secondsTextBox.Text = "";
                    secondsTextBox.Focus();
                }
            }
            else
            {
                // Invalid joules entered
                MessageBox.Show(joulesTextBox.Text + " is an invalid value for Joules.");
                joulesTextBox.Text = "";
                joulesTextBox.Focus();
            }
        }

        private void clrBtn_Click(object sender, EventArgs e)
        {
            // Clear all
            joulesTextBox.Text = "";
            secondsTextBox.Text = "";
            powerResultLabel.Text = "";
            finalResultListBox.Items.Clear();
            // Focus Reset.
            joulesTextBox.Focus();
        }

        private void extBtn_Click(object sender, EventArgs e)
        {
            Close();
        }
        private double mathPower(double joules, double seconds)
        {
            return joules / seconds;
        }
        private double mathJoules(double power,double seconds_Count)
        {
            return power * seconds_Count;
        }
    }
}
