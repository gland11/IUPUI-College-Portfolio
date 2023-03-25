using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab10_11
{

    struct CandyBars
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

        CandyBars[] candy_bars = new CandyBars[5];
        double total_sales = 0;
        int kitkatamount = 20;
        int reeses_amount = 20;
        int mm_amount = 20;
        int skittles_amount = 20;
        int snickers_amount = 20;
        

        
        private void kitkatPicturebox_Click(object sender, EventArgs e)
        {
            if (kitkatamount < 1)
            {
                MessageBox.Show(candy_bars[0].candyname + " are sold out."); //replace "candy" with candy names

            }
            else
            {
                
                kitkatcount.Text = candy_bars[0].candyleft.ToString();
                total_sales = total_sales + candy_bars[0].candyprice;
                totalsales.Text = total_sales.ToString("n2");
                kitkatamount--;
                kitkatcount.Text = kitkatamount.ToString();
                candy_bars[0].candyleft--;
            }
        }

       private void exitbutton_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void skittlesPicturebox_Click(object sender, EventArgs e)
        {
            if (skittles_amount < 1)
            {
                MessageBox.Show(candy_bars[1].candyname + " are sold out."); //replace "candy" with candy names

            }
            else
            {

                skittlesamount.Text = candy_bars[1].candyleft.ToString();
                total_sales = total_sales + candy_bars[1].candyprice;
                totalsales.Text = total_sales.ToString("n2");
                skittles_amount--;
                skittlesamount.Text = skittles_amount.ToString();
                candy_bars[0].candyleft--;
            }
            /* CandyBars candybar = new CandyBars();
             candybar.candyname = "Skittles";
             candybar.candyprice = 460;//adds to totalsales
             candybar.candyleft = skittles_amount;//amount is displayed when decremented
             if (skittles_amount < 1)
             {
                 MessageBox.Show("Skittles is sold out."); //replace "candy" with candy names

             }
             else
             {

                 skittlesamount.Text = candybar.candyleft.ToString();
                 total_sales = total_sales + candybar.candyprice;
                 totalsales.Text = total_sales.ToString("n2");
                 skittles_amount--;
                 skittlesamount.Text = skittles_amount.ToString(); 
             }*/
        }

        private void reesesPicturebox_Click(object sender, EventArgs e)
        {
            if (reeses_amount < 1)
            {
                MessageBox.Show(candy_bars[2].candyname + " are sold out."); //replace "candy" with candy names

            }
            else
            {

                reesesamount.Text = candy_bars[2].candyleft.ToString();
                total_sales = total_sales + candy_bars[2].candyprice;
                totalsales.Text = total_sales.ToString("n2");
                reeses_amount--;
                reesesamount.Text = reeses_amount.ToString();
                candy_bars[0].candyleft--;
            }
            /*CandyBars candybar = new CandyBars();
            candybar.candyname = "Reeses";
            candybar.candyprice = 580;//adds to totalsales
            candybar.candyleft = reeses_amount;//amount is displayed when decremented
            if (reeses_amount < 1)
            {
                MessageBox.Show("Reeses is sold out."); //replace "candy" with candy names

            }
            else
            {
                
                reesesamount.Text = candybar.candyleft.ToString();
                total_sales = total_sales + candybar.candyprice;
                totalsales.Text = total_sales.ToString("n2");
                reeses_amount--;
                reesesamount.Text = reeses_amount.ToString();
            }*/
        }

        private void mmPicturebox_Click(object sender, EventArgs e)
        {
            if (mm_amount < 1)
            {
                MessageBox.Show(candy_bars[3].candyname + " are sold out."); //replace "candy" with candy names

            }
            else
            {

                mmamount.Text = candy_bars[3].candyleft.ToString();
                total_sales = total_sales + candy_bars[3].candyprice;
                totalsales.Text = total_sales.ToString("n2");
                mm_amount--;
                mmamount.Text = mm_amount.ToString();
                candy_bars[0].candyleft--;
            }
            /*CandyBars candybar = new CandyBars();
            candybar.candyname = "M&M";
            candybar.candyprice = 750;//adds to totalsales
            candybar.candyleft = mm_amount;//amount is displayed when decremented
            if (mm_amount < 1)
            {
                MessageBox.Show("M&M is sold out."); //replace "candy" with candy names

            }
            else
            {
                
                mmamount.Text = candybar.candyleft.ToString();
                total_sales = total_sales + candybar.candyprice;
                totalsales.Text = total_sales.ToString("n2");
                mm_amount--;
                mmamount.Text = mm_amount.ToString();
            }*/
        }

        private void snickersPicturebox_Click(object sender, EventArgs e)
        {
            if (snickers_amount < 1)
            {
                MessageBox.Show(candy_bars[4].candyname + " are sold out."); //replace "candy" with candy names

            }
            else
            {

                snickersamount.Text = candy_bars[4].candyleft.ToString();
                total_sales = total_sales + candy_bars[4].candyprice;
                totalsales.Text = total_sales.ToString("n2");
                snickers_amount--;
                snickersamount.Text = snickers_amount.ToString();
                candy_bars[0].candyleft--;
            }
            /*CandyBars candybar = new CandyBars();
            candybar.candyname = "Snickers";
            candybar.candyprice = 160;//adds to totalsales
            candybar.candyleft = snickers_amount;//amount is displayed when decremented
            if (snickers_amount < 1)
            {
                MessageBox.Show("Snickers is sold out."); //replace "candy" with candy names

            }
            else
            {
                
                snickersamount.Text = candybar.candyleft.ToString();
                total_sales = total_sales + candybar.candyprice;
                totalsales.Text = total_sales.ToString("n2");
                snickers_amount--;
                snickersamount.Text = snickers_amount.ToString();
           }*/
        }

        private void Vending_machine_Load(object sender, EventArgs e)
        {
            for (int stuff = 0; stuff < candy_bars.Length; stuff++)
            {
                candy_bars[stuff].candyleft = 20;
            }

            candy_bars[0].candyname = "KitKat";
            candy_bars[0].candyprice = 580;
            candy_bars[0].candyleft = 20;
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

        private void selectACandyLabel_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Please Select A Candy. :D");
        }

        private void totalSalesLabel_Click(object sender, EventArgs e)
        {
            MessageBox.Show("This is the Total Sales: " + microBitcoinLabel.Text + " " + totalsales.Text);
        }
    }
}
