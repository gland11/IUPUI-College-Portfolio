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
// Lab_02
// ECET 164 Spring 2018
// 1/17/2018

namespace Landis_Lab02
{
    public partial class ButtonPractice : Form
    {
        public ButtonPractice()
        {
            InitializeComponent();
        }                                                   // I do not know if I did the Cancel and Accept Btns correctly as I looked all around and 
                                                            // only found a couple things.

        private void welcomeBtn_Click(object sender, EventArgs e)   //Having a MessageBox pop up when the Button is clicked to say "Good Afternoon"
        {
            MessageBox.Show("Good Afternoon");

        }

        private void dogNameBtn_Click(object sender, EventArgs e)         //pushing the dogNameBtn to make the dogLabel say "Fido" 
        {
            dogLabel.Text = "Fido";
        }

        private void myNameBtn_Click(object sender, EventArgs e)            //Allows myName "George" to be displayed on the outputLabel to the right
        {
            outputLabel.Text = "George";
        }

        private void clearTextBtn_Click(object sender, EventArgs e)
        {                                                                   //Clear Button gives the outputLabel & dogLabel blank canvis to start 
            outputLabel.Text = "";                                          //again on
            dogLabel.Text = "";
        }

        private void showPicturebtn_Click(object sender, EventArgs e)
        {                                                                   //Shows the Picture from Hiding 
                                                                            //Also I used zoom instead of autosize to make the picture fit into frame
            myPicture.Show();                                                //This is a picture of me opening my arms high in the Swiss Alps

        }

        private void exitBtn_Click(object sender, EventArgs e)
        {                                                                    //This allows the code to shutdown nicely
            Close();
        }

        private void hidePictureBtn_Click(object sender, EventArgs e)
        {                                                                   //Hiding the Picture from view
            myPicture.Hide();
        }
    }
}
