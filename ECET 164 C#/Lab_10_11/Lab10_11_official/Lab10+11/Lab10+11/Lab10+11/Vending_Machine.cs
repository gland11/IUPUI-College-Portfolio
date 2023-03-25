using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
// George Landis, Austin Kane, Maeve O'Connor
// 4/4/2018
// ECET 164
// Lab 10-11
// Team Gothic Wigglers
namespace Lab10_11
{

    struct CandyBars // Structure
    {
        public string candyname; 
        public int candyleft;
        public double candyprice;
    }
    

    public partial class Vending_machine : Form
    {
        public Vending_machine()
        {
            InitializeComponent();
        }

        CandyBars[] candy_bars = new CandyBars[5]; // Array for CandyBars
        double total_sales = 0;
        private void kitkatPicturebox_Click(object sender, EventArgs e)
        {
            if (candy_bars[0].candyleft < 1) // if = 0 display error code
            {
                MessageBox.Show(candy_bars[0].candyname + " are sold out."); //replace "candy" with candy names

            }
            else
            {
                total_sales = total_sales + candy_bars[0].candyprice; // adds total
                totalsales.Text = total_sales.ToString("n2"); // display total
                candy_bars[0].candyleft--; //candy left decriment 
                kitkatcount.Text = candy_bars[0].candyleft.ToString(); // displaying amount left
            }
        }

       private void exitbutton_Click(object sender, EventArgs e)
        {
            this.Close(); // THIS CLOSES THE PROGRAM 
        }

        private void skittlesPicturebox_Click(object sender, EventArgs e)
        {
            if (candy_bars[1].candyleft < 1) 
            {
                MessageBox.Show(candy_bars[1].candyname + " are sold out."); //replace "candy" with candy names
            }
            else
            {
                total_sales = total_sales + candy_bars[1].candyprice;
                totalsales.Text = total_sales.ToString("n2");
                candy_bars[1].candyleft--;
                skittlesamount.Text = candy_bars[1].candyleft.ToString();
            }
        }

        private void reesesPicturebox_Click(object sender, EventArgs e)
        {
            if (candy_bars[2].candyleft < 1)
            {
                MessageBox.Show(candy_bars[2].candyname + " are sold out."); //replace "candy" with candy names

            }
            else
            {
                total_sales = total_sales + candy_bars[2].candyprice;
                totalsales.Text = total_sales.ToString("n2");
                candy_bars[2].candyleft--;
                reesesamount.Text = candy_bars[2].candyleft.ToString();
            }
        }

        private void mmPicturebox_Click(object sender, EventArgs e)
        {
            if (candy_bars[3].candyleft < 1)
            {
                MessageBox.Show(candy_bars[3].candyname + " are sold out."); //replace "candy" with candy names

            }
            else
            {
                total_sales = total_sales + candy_bars[3].candyprice;
                totalsales.Text = total_sales.ToString("n2");
                candy_bars[3].candyleft--;
                mmamount.Text = candy_bars[3].candyleft.ToString();
            }
        }

        private void snickersPicturebox_Click(object sender, EventArgs e)
        {
            if (candy_bars[4].candyleft < 1)
            {
                MessageBox.Show(candy_bars[4].candyname + " are sold out."); //replace "candy" with candy names

            }
            else
            {
                total_sales = total_sales + candy_bars[4].candyprice;
                totalsales.Text = total_sales.ToString("n2");
                candy_bars[4].candyleft--;
                snickersamount.Text = candy_bars[4].candyleft.ToString();
                
            }
        }

        private void Vending_machine_Load(object sender, EventArgs e) //vend method loads vending machine
        {
            for (int stuff = 0; stuff < candy_bars.Length; stuff++) //counter
            {
                candy_bars[stuff].candyleft = 20;
            }
            candy_bars[0].candyname = "KitKat"; // name of candy
            candy_bars[0].candyprice = 580;// price of candy
            candy_bars[0].candyleft = 20;// int amount of candy
            candy_bars[1].candyname = "Skittles";
            candy_bars[1].candyprice = 460;
            candy_bars[1].candyleft = 20;
            candy_bars[2].candyname = "Reese's";
            candy_bars[2].candyprice = 580;
            candy_bars[2].candyleft = 20;
            candy_bars[3].candyname = "M&M's";
            candy_bars[3].candyprice = 750;
            candy_bars[3].candyleft = 20;
            candy_bars[4].candyname = "Snickers";
            candy_bars[4].candyprice = 160;
            candy_bars[4].candyleft = 20;
        }

        private void selectACandyLabel_Click(object sender, EventArgs e) // other fun stuff
        {
            MessageBox.Show("Please Select A Candy :D");
      
        }

        private void totalSalesLabel_Click(object sender, EventArgs e) // other fun stuff
        {
            MessageBox.Show("This is the Total Sales: " + microBitcoinLabel.Text + " " + totalsales.Text);
        }
    }
}
