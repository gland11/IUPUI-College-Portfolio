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
// 3/21/2018
//mainForm.cs
//

namespace Landis_MultiFormPractice
{
    public partial class mainForm : Form
    {
        public mainForm()
        {
            InitializeComponent();
        }

        private void displayButton_Click(object sender, EventArgs e)
        {
            GetFoodChoice(); // calling method
        }
        private void GetFoodChoice()
        {
            // create an instance of the nutr form class
            nutritionForm nutriForm = new nutritionForm();

            //find the selected rad btn
            if (bananaRadioButton.Checked)
            {
                nutriForm.foodLabel.Text = "1 banana";
                nutriForm.calorieLabel.Text = "100";
                nutriForm.fatLabel.Text = "0.4";
                nutriForm.carbLabel.Text = "27";
            }
            else if (popcornRadioButton.Checked)
            {
                nutriForm.foodLabel.Text = "1 cup air-popped popcorn";
                nutriForm.calorieLabel.Text = "31";
                nutriForm.fatLabel.Text = "0.4";
                nutriForm.carbLabel.Text = "6";
            }
            else if (muffinRadioButton.Checked)
            {
                nutriForm.foodLabel.Text = "1 large blueberry muffin";
                nutriForm.calorieLabel.Text = "385";
                nutriForm.fatLabel.Text = "9";
                nutriForm.carbLabel.Text = "67";
            }
            //https://www.randomlists.com/food
            //used a random food generator and then looked up info on google
            //https://www.google.com/search?ei=2vuyWo-4IcHTjgTY5bioDA&q=1+cup+of+mayonnaise+carbs&oq=1+cup+of+mayonnaise+carbs&gs_l=psy-ab.3..0i22i30k1.9056.11573.0.11970.8.8.0.0.0.0.96.575.8.8.0....0...1.1.64.psy-ab..0.8.572...0j33i22i29i30k1j35i39k1.0.YRp9pTY2N3o
            //https://www.google.com/search?ei=R_uyWvPYC86QtQWixJGYBw&q=1+cup+of+mayonnaise+fat&oq=1+cup+of+mayonnaise+fat&gs_l=psy-ab.3...144977.145803.0.146266.6.6.0.0.0.0.81.446.6.6.0....0...1.1.64.psy-ab..0.5.372...0j0i22i30k1j35i39k1j33i22i29i30k1.0.BaYIjM8S-T8
            //https://www.google.com/search?q=1+cup+of+mayonnaise+calories&oq=1+cup+of+mayon&aqs=chrome.4.69i57j0l5.9017j0j7&sourceid=chrome&ie=UTF-8

            else if (mayonnaiseRadioButton.Checked)
            {
                nutriForm.foodLabel.Text = "1 cup of mayonnaise";
                nutriForm.calorieLabel.Text = "1,495";
                nutriForm.fatLabel.Text = "165";
                nutriForm.carbLabel.Text = "1.3";
            }

            //https://www.google.com/search?ei=kfyyWojHNMHJjwTU54PwAw&q=calories+in+1+cantaloupe&oq=cal+in+1+cantaloupe&gs_l=psy-ab.3.0.0i7i30k1l2j0i8i7i30k1l8.9460.9866.0.11363.3.3.0.0.0.0.190.368.0j2.2.0....0...1.1.64.psy-ab..1.2.368....0.nGXvJFTyz5I
            //https://www.google.com/search?ei=DfyyWuvkOufdjwSs-qeADw&q=fat+in+1+cantaloupe&oq=fat+in+1+cantaloupe&gs_l=psy-ab.3...128939.130673.0.130884.8.8.0.0.0.0.123.538.5j1.6.0....0...1.1.64.psy-ab..2.4.394...0i7i30k1j0i8i7i30k1j0i8i30k1.0.CDO7Z7EVpn0
            //https://www.google.com/search?ei=DfyyWuvkOufdjwSs-qeADw&q=fat+in+1+cantaloupe&oq=fat+in+1+cantaloupe&gs_l=psy-ab.3...128939.130673.0.130884.8.8.0.0.0.0.123.538.5j1.6.0....0...1.1.64.psy-ab..2.4.394...0i7i30k1j0i8i7i30k1j0i8i30k1.0.CDO7Z7EVpn0

            else if (cantaloupeRadioButton.Checked)
            {
                nutriForm.foodLabel.Text = "1 medium (about 5in dia)(552g) cantaloupe";
                nutriForm.calorieLabel.Text = "186";
                nutriForm.fatLabel.Text = "1";
                nutriForm.carbLabel.Text = "45";
            }
            //Display
            nutriForm.ShowDialog();
        }
        private void exitButton_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
