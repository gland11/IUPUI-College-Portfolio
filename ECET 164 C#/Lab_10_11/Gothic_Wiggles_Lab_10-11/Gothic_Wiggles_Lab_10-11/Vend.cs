using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Gothic_Wiggles_Lab_10_11
{
    public partial class Vend : Form
    {
        public Vend()
        {
            InitializeComponent();
        }
        struct candyBars
        {
            public string candyname;
            public int candyleft;
            public double candyprice;
        }
        double totalsales = 0; 
        private void kitkatPictureBox_Click(object sender, EventArgs e)
        {
            candyBars candybar = new candyBars();
            candybar.candyprice = 0.00058;
            candybar.candyname = "KitKat";
            candybar.candyleft = 20;
            kitkatAmountLeftLabel.Text = candybar.candyleft.ToString();
            if 
        }
    }
}
