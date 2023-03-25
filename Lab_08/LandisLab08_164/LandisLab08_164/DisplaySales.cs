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


namespace LandisLab08_164
{
    public partial class DisplaySales : Form
    {
        public DisplaySales()
        {
            InitializeComponent();
        }
        //method lowest
        private double GetLowest(double[] lArray)
        {
            double low = lArray[0];
           
            for(int index = 1; index<lArray.Length; index++)
            {
                if(lArray[index]< low)
                {
                    low = lArray[index];
                }
            }
             
            return low;
        }
        //method Highest 
        private double GetHighest(double[] hArray)
        {
            double high = 0;
           
            for(int index = 1; index<hArray.Length; index++)
            {
                if(hArray[index]> high)
                {
                    high = hArray[index];
                }
            }
            
            return high;
        }
        // method GetAverage
        private double GetAverage(double[] avegArray)
        {
            double total = 0;
            double myAverage = 0;
            for(int count = 0; count<avegArray.Length; count++)
            {
                total += avegArray[count];
            }
            myAverage = total / avegArray.Length;
            return myAverage;
        }
        private void ProcessSalesFile()
        {
            //Declare some variables
            StreamReader inputFile;
            const int SIZE = 7;
            double[] myArray = new double [SIZE];
            try
            {
                // Var
                // 3 more variables 
                // Average, Highest, and lowest
                 double average = 0;
                 double highest = 0;
                 double lowest = 0;

                //part 2
                double sum = 0;
                int index = 0;
                //open the file and get a streamReader object
                inputFile = File.OpenText("Sales.txt");
                // Clear listbox
                salesListBox.Items.Clear();

                // Read the file's contents
                while (!inputFile.EndOfStream && index < myArray.Length)
                {
                    myArray[index] = double.Parse(inputFile.ReadLine());
                    //sum all Numbers
                    sum += myArray[index];
                    
                    //Add the number to ListBox
                    salesListBox.Items.Add(myArray[index].ToString("c"));
                    index++;
                }
                // Close file
                inputFile.Close();

                // Display
                totalLabel.Text = sum.ToString("c");

                average = GetAverage(myArray);

                avegLabel.Text = average.ToString("c");

                highest = GetHighest(myArray);

                highestLabel.Text = highest.ToString("c");

                lowest = GetLowest(myArray);

                lowLabel.Text = lowest.ToString("c");


            }
            catch (Exception ex)
            {
                //Message to user
                MessageBox.Show(ex.Message);
            }
        }
        private void extBtn_Click(object sender, EventArgs e)
        {
            Close();
        }
        
        private void writeTxtBtn_Click(object sender, EventArgs e)
        {
            ProcessSalesFile(); 
        }

        private void clrBtn_Click(object sender, EventArgs e)
        {
            salesListBox.Items.Clear();
            totalLabel.Text = "";
            avegLabel.Text = "";
            highestLabel.Text = "";
            lowLabel.Text = "";
        }
    }
}
