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
    public partial class nutritionForm : Form
    {
        public nutritionForm()
        {
            InitializeComponent();
        }

        private void closeButton_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
