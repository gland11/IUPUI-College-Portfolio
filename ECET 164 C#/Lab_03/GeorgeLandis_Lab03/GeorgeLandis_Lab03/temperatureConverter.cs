﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

//George Landis
//ECET 164
//Lab_03
// 24 January 2018

namespace GeorgeLandis_Lab03
{
    public partial class temperatureConverter : Form
    {
        public temperatureConverter()
        {
            InitializeComponent();
        }
        double degreeWantedConversion;
        double convertedNumber;
        private void convertToFahrBtn_Click(object sender, EventArgs e)
        {

            if(double.TryParse(operatorDegreesTextBox.Text, out degreeWantedConversion))
            {
                // Get the degrees needed to convert
                degreeWantedConversion = double.Parse(operatorDegreesTextBox.Text);
                // Calculate the conversion to Fahrenheit
                convertedNumber = ((double)9 / (double)5) * degreeWantedConversion + 32.0;
                //Display the Conversion rounded to 2 decimal points
                operatorDegreesLabel.Text = "Temperature " + operatorDegreesTextBox.Text
                     + " C converted to degrees Fahrenheit is: " + convertedNumber.ToString("n2") + " F";
            }
            else
            {
                MessageBox.Show("Please enter a Number.");
              
            }
            /*try
            {
                // Get the degrees needed to convert
                degreeWantedConversion = double.Parse(operatorDegreesTextBox.Text);
                // Calculate the conversion to Fahrenheit
                convertedNumber = ((double)9 / (double)5) * degreeWantedConversion + 32.0;
                //Display the Conversion rounded to 2 decimal points
               operatorDegreesLabel.Text  = "Temperature " + operatorDegreesTextBox.Text 
                    + " C converted to degrees Fahrenheit is: " + convertedNumber.ToString("n2") + " F";
            }
            catch (Exception ex)
            {
                //Display the default error message.
                MessageBox.Show(ex.Message);
            }
            */
        }

        private void convertToCelsBtn_Click(object sender, EventArgs e)
        {
           try
            {
                degreeWantedConversion = double.Parse(operatorDegreesTextBox.Text);
                convertedNumber = ((double)5 / (double)9) * (degreeWantedConversion - 32.0);
                operatorDegreesLabel.Text = "Temperature " + operatorDegreesTextBox.Text
                    + " F converted to degrees Celcius is: " + convertedNumber.ToString("n2") + " C";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void clrBtn_Click(object sender, EventArgs e)
        {
            //Clear the input and output controls.
            operatorDegreesTextBox.Text = "";
            operatorDegreesLabel.Text = "";
        }

        private void extBtn_Click(object sender, EventArgs e)
        {
            //close form
            Close();
        }
    }
}