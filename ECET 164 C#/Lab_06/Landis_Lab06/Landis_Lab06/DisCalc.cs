using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
    // George Landis
    // ECET 164
    // Lab_06
    // Distance Calc 
    //2/14/2018

namespace Landis_Lab06
{
    public partial class DisCalc : Form
    {
        public DisCalc()
        {
            InitializeComponent();
            writeBtn.Enabled = false;
        }

        private void calcBtn_Click(object sender, EventArgs e)
        {
            //Variable
            int count = 0;
            int Distance = 0;
            int Speed; // MPH traveled
            int Time; // Time in hours
            int Time_Count = 1;
            // get the speed
            if (int.TryParse(mphTextbox.Text, out Speed))
            {
                //get the time
                if (int.TryParse(hoursTextbox.Text, out Time))
                {
                    writeBtn.Enabled = true;
                    while (count < Time)
                    {
                        // Calculation
                        Distance = Speed * Time_Count;

                        // Display ending
                        outputListBox.Items.Add("After hour " + Time_Count + " the distance is " + Distance + " miles.");

                        count++;
                        Time_Count++;
                    }
                }
                else
                {
                    // invalid hours
                    MessageBox.Show("Invalid Entries for Hours");
                    hoursTextbox.Focus();
                }
            }
            else
            {
                //invalid mph
                MessageBox.Show("Invalid Entries for MPH");
                mphTextbox.Focus();
            }
        }
    

        private void clrBtn_Click(object sender, EventArgs e)
        {
            // Clear the TextBoxes
            mphTextbox.Text = "";
            hoursTextbox.Text = "";
            outputListBox.Items.Clear();
            mphTextbox.Focus();
        }

        private void extBtn_Click(object sender, EventArgs e)
        {
            //Close Program
            Close();
        }

        private void writeBtn_Click(object sender, EventArgs e)
        {
            StreamWriter distanceFile;
            //Variable
            int count = 0;
            int Distance = 0;
            int Speed; // MPH traveled
            int Time; // Time in hours
            int Time_Count = 1;
            // get the speed
            if (int.TryParse(mphTextbox.Text, out Speed))
            {
                //get the time
                if (int.TryParse(hoursTextbox.Text, out Time))
                {
                    distanceFile = File.CreateText("DistanceTraveled.txt");
                    while (count < Time)
                    {
                        Distance = Speed * Time_Count;
                        distanceFile.WriteLine("After hour " + Time_Count + " the distance is " + Distance + " miles.");
                        // Calculation
                        count = count + 1;
                        Time_Count = Time_Count + 1;
                    }
                    distanceFile.Close();
                    // Message box there
                    MessageBox.Show("The Distance have been written.");
                }
                // else statement
                else
                {
                    MessageBox.Show("Invalid Entries for Hours");
                    hoursTextbox.Focus();
                }
            }
            // Else statement
            else
            {
                MessageBox.Show("Invalid Entries for MPH");
                mphTextbox.Focus();
            }
        }
    }
}
