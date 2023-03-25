using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GeorgeLandis_Lab_04
{
    /* George Landis
      ECET 164
      Lab_04 Ohms Law Calculator
     */
    public partial class ohmsLawCalc : Form
    {
        public ohmsLawCalc()
        {
            InitializeComponent();
        }
        string mathType;
        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            mathType = OhmsLawListBox.SelectedItem.ToString();

            switch (mathType)
            {
                case "Voltage":
                    enter1stLabel.Text = "Enter Current:";
                    enter2ndLabel.Text = "Enter Resistance:";
                    finalLabel.Text = "Voltage is:";
                    signLabel.Text = "*";
                    eqlLabel.Text = "=";
                    break;
                case "Current":
                    enter1stLabel.Text = "Enter Voltage:";
                    enter2ndLabel.Text = "Enter Resistance:";
                    finalLabel.Text = "Current is:";
                    signLabel.Text = "/";
                    eqlLabel.Text = "=";
                    break;
                case "Resistance":
                    enter1stLabel.Text = "Enter Voltage:";
                    enter2ndLabel.Text = "Enter Current:";
                    finalLabel.Text = "Resistance is:";
                    signLabel.Text = "/";
                    eqlLabel.Text = "=";
                    break;
                default:
                    MessageBox.Show("Select an option in the list box");
                    break;
            }
        }

        private void calcBtn_Click(object sender, EventArgs e)
        {
            double firstNum, secondNum;
            if (OhmsLawListBox.SelectedIndex != -1)
            {
                if (double.TryParse(firstNumTextBox.Text, out firstNum))
                {
                    if (double.TryParse(secondNumTextBox.Text, out secondNum))
                    {
                        //Process goes here
                        switch (mathType)
                        {
                            case "Voltage":
                                finalDataLabel.Text = (firstNum * secondNum).ToString("n2");
                                break;
                            case "Current":
                                if (secondNum != 0)
                                {
                                    finalDataLabel.Text = (firstNum / secondNum).ToString("n2");
                                }
                                else
                                {
                                    MessageBox.Show("Cannot divide by zero.");
                                    secondNumTextBox.Focus();
                                }
                                break;
                            case "Resistance":
                                if (secondNum != 0)
                                {
                                    finalDataLabel.Text = (firstNum / secondNum).ToString("n2");
                                }
                                else
                                {
                                    MessageBox.Show("Cannot divide by zero.");
                                    secondNumTextBox.Focus();
                                }
                                break;
                            default:
                                MessageBox.Show("Select an option in the list box");
                                break;
                        }
                    }
                    else // goes with the second if secondNumTextBox
                    {
                        MessageBox.Show("Please input a valid number for the second text box.");
                        secondNumTextBox.Focus();
                    }
                }
                else // goes with the first if firstNumTextBox
                {
                    MessageBox.Show("Please input a valid number for the first text box.");
                    firstNumTextBox.Focus();
                }
            }
            else
            {
                MessageBox.Show("Select an option in the list box");
                OhmsLawListBox.Focus();
            }
        }

        private void exitBtn_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void clrBtn_Click(object sender, EventArgs e)
        {
            // Clear the input and output controls.
            firstNumTextBox.Text = "";
            secondNumTextBox.Text = "";
            finalDataLabel.Text = "";
        }
    }
}
