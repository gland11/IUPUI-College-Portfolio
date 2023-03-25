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
// ECET 164
// Group Project
// Gothic Wigglers
// 4/25/2018
namespace Group_Project
{
    public partial class MainForm : Form
    {
        Answers answersForm = new Answers();    //answers form
        int[] firstOperandArray = new int[4];   //first number for each equation
        int[] secondOperandArray = new int [4]; //second number for each quation
        double[] userAnswerArray = new double [4];  //user input answers
        double[] correctAnswerArray = new double [4];   //correct answers
        string[] firstOperandUnit = new string[] {"Amps","Ohms","Volts"};   //first numbers units
        string[] secondOperandUnit = new string[] { "Amps", "Ohms", "Volts"};   //second numbers units
        string[] CorrectAnswerUnit = new string[] { "Amps", "Ohms", "Volts" };  //units for correct answers
        string first, second, math;
        string[] MathArray = new string[] { "*", "/" }; //changes based on radio button
        string[] checkArray = new string[] { "Correct", "X" };  //changes based on user input
        private void GenerateRandomArrays() //gets random numbers for first and second numbers
        {
            Random rand1 = new Random();
            for (int index =0; index < firstOperandArray.Length; index++)
            {
                firstOperandArray[index] = rand1.Next(1, 11);
            }
            Random rand2 = new Random();
            for (int index = 0; index < secondOperandArray.Length; index++)
            {
                secondOperandArray[index] = rand1.Next(1, 11);
            }
        }
        private void INTequation()  //loads the equation for voltage. This is a method bc this exact code is used later in the code
        {
            first = firstOperandUnit[0].ToString();
            second = secondOperandUnit[1].ToString();
            math = MathArray[0].ToString();
            Eq1Unit.Text = CorrectAnswerUnit[2].ToString();
            Eq2Unit.Text = CorrectAnswerUnit[2].ToString();
            Eq3Unit.Text = CorrectAnswerUnit[2].ToString();
            Eq4Unit.Text = CorrectAnswerUnit[2].ToString();
            textBox.Text =  "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
        }
        private void radioBTN()
        {
            MainForm_listBox.Items.Clear();
            if (Voltage_RadioButton.Checked)
            {
                INTequation();
            }
            else if (Current_RadioButton.Checked)
            {
                first = firstOperandUnit[2].ToString(); //loads the equation for current
                second = secondOperandUnit[1].ToString();
                math = MathArray[1].ToString();
                Eq1Unit.Text = CorrectAnswerUnit[0].ToString();
                Eq2Unit.Text = CorrectAnswerUnit[0].ToString();
                Eq3Unit.Text = CorrectAnswerUnit[0].ToString();
                Eq4Unit.Text = CorrectAnswerUnit[0].ToString();
            }
            else if (Resistance_RadioButton.Checked)    
            {
                first =  firstOperandUnit[2].ToString();    //;oads the equatio for current
                second =  secondOperandUnit[0].ToString();
                math =  MathArray[1].ToString();
                Eq1Unit.Text = CorrectAnswerUnit[1].ToString();
                Eq2Unit.Text = CorrectAnswerUnit[1].ToString();
                Eq3Unit.Text = CorrectAnswerUnit[1].ToString();
                Eq4Unit.Text = CorrectAnswerUnit[1].ToString();
            }
        }
        private void DisplayEquations()     //displays equations in the listbox
        {
            MainForm_listBox.Items.Add(firstOperandArray[0] + " " + first + " " +
                                        math + " " + secondOperandArray[0] + " " + second + " =");
            MainForm_listBox.Items.Add("\n");
            MainForm_listBox.Items.Add(firstOperandArray[1] + " " + first + " " +
                                        math + " " + secondOperandArray[1] + " " + second + " =");
            MainForm_listBox.Items.Add("\n");
            MainForm_listBox.Items.Add(firstOperandArray[2] + " " + first + " " +
                                        math + " " + secondOperandArray[2] + " " + second + " =");
            MainForm_listBox.Items.Add("\n");
            MainForm_listBox.Items.Add(firstOperandArray[3] + " " + first + " " +
                                        math + " " + secondOperandArray[3] + " " + second + " =");
            MainForm_listBox.Items.Add("\n");
        }
        public MainForm()
        {
            InitializeComponent();
            GenerateRandomArrays();
            INTequation();
        }
        private void GetAnswers2()
        {
            answersForm.Answers_listBox.Items.Clear();
            GetAnswers();
            answersForm.ShowDialog();
        }
        private void GetAnswerss_Button_Click(object sender, EventArgs e)
        {
            GetAnswers2();
        }
        private void GetAnswers() //makes sure the inputs are allowed and then shows the correct answers
        {
          //  Answers answersForm = new Answers();
            if(double.TryParse(textBox.Text, out userAnswerArray[0]))
            {
                answersForm.answer1.Text = userAnswerArray[0].ToString("n2");
                if (double.TryParse(textBox2.Text, out userAnswerArray[1]))
                {
                    answersForm.answer2.Text = userAnswerArray[1].ToString("n2");
                    if (double.TryParse(textBox3.Text, out userAnswerArray[2]))
                    {
                        answersForm.answer3.Text = userAnswerArray[2].ToString("n2");
                        if (double.TryParse(textBox4.Text, out userAnswerArray[3]))
                        {
                            answersForm.answer4.Text = userAnswerArray[3].ToString("n2");
                            if (math == "*")
                            {
                                correctAnswerArray[0] = firstOperandArray[0] * secondOperandArray[0];
                                correctAnswerArray[1] = firstOperandArray[1] * secondOperandArray[1];
                                correctAnswerArray[2] = firstOperandArray[2] * secondOperandArray[2];
                                correctAnswerArray[3] = firstOperandArray[3] * secondOperandArray[3];
                            }
                            else
                            {
                                correctAnswerArray[0] = (double) firstOperandArray[0] 
                                                        / (double) secondOperandArray[0];
                                correctAnswerArray[1] = (double) firstOperandArray[1] 
                                                        / (double) secondOperandArray[1];
                                correctAnswerArray[2] = (double) firstOperandArray[2] 
                                                        / (double) secondOperandArray[2];
                                correctAnswerArray[3] = (double) firstOperandArray[3] 
                                                        / (double) secondOperandArray[3];
                            }
                                answersForm.Answers_listBox.Items.Add(firstOperandArray[0] + " " + first + " " +
                                                            math + " " + secondOperandArray[0] + " " + second + " =  " + correctAnswerArray[0].ToString("n2"));
                                answersForm.Answers_listBox.Items.Add("\n");
                                answersForm.Answers_listBox.Items.Add(firstOperandArray[1] + " " + first + " " +
                                                            math + " " + secondOperandArray[1] + " " + second + " =  " + correctAnswerArray[1].ToString("n2"));
                                answersForm.Answers_listBox.Items.Add("\n");
                                answersForm.Answers_listBox.Items.Add(firstOperandArray[2] + " " + first + " " +
                                                            math + " " + secondOperandArray[2] + " " + second + " =  " + correctAnswerArray[2].ToString("n2"));
                                answersForm.Answers_listBox.Items.Add("\n");
                                answersForm.Answers_listBox.Items.Add(firstOperandArray[3] + " " + first + " " +
                                                            math + " " + secondOperandArray[3] + " " + second + " =  " + correctAnswerArray[3].ToString("n2"));
                                answersForm.Answers_listBox.Items.Add("\n");
                            if (correctAnswerArray[0].ToString("n2") != userAnswerArray[0].ToString("n2"))
                            {
                                answersForm.check1.Text = checkArray[1];
                            }
                            else
                            {
                                answersForm.check1.Text = checkArray[0];
                            }
                            if (correctAnswerArray[1].ToString("n2") != userAnswerArray[1].ToString("n2"))
                            {
                                answersForm.check2.Text = checkArray[1];
                            }
                            else
                            {
                                answersForm.check2.Text = checkArray[0];
                            }
                            if (correctAnswerArray[2].ToString("n2") != userAnswerArray[2].ToString("n2"))
                            {
                                answersForm.check3.Text = checkArray[1];
                            }
                            else
                            {
                                answersForm.check3.Text = checkArray[0];
                            }
                            if (correctAnswerArray[3].ToString("n2") != userAnswerArray[3].ToString("n2"))
                            {
                                answersForm.check4.Text = checkArray[1];
                            }
                            else
                            {
                                answersForm.check4.Text = checkArray[0];
                            }
                            
                    }
                        else
                        {
                            MessageBox.Show("Please put in a number for the last equation!");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Please put in a number for the third equation!");
                    }
                }
                else
                {
                    MessageBox.Show("Please put in a number for the second equation!");
                }
            }
            else
            {
                MessageBox.Show("Please put in a number for the first equation!");
            }
            //display
           // answersForm.ShowDialog();
        }
        private void getStatistics()    //calculates and displays the stats
        {
            int percentage = 100;
            GetAnswers();
            Stats statsForm = new Stats();
            for (int index = 0; index < correctAnswerArray.Length; index++)
            {
                if (correctAnswerArray[index].ToString("n2") != userAnswerArray[index].ToString("n2"))
                {
                    percentage = percentage - 25;
                }
            }
            if (percentage == 100)
            {
                statsForm.Stats_Label.Text = "Your percentage is " + percentage.ToString() + "%" +
                                               "\n" + "You got a 4/4" + "\n" + "Your letter grade is an A";
                statsForm.BackColor = Color.Green;
            }
            else if (percentage == 75)
            {
                statsForm.Stats_Label.Text = "Your percentage is " + percentage.ToString() + "%" +
                                               "\n" + "You got a 3/4" + "\n" + "Your letter grade is an C";
                statsForm.BackColor = Color.Yellow;
            }
            else if (percentage == 50)
            {
                statsForm.Stats_Label.Text = "Your percentage is " + percentage.ToString() + "%" +
                                               "\n" + "You got a 2/4" + "\n" + "Your letter grade is an F";
                statsForm.BackColor = Color.OrangeRed;
            }
            else if (percentage == 25)
            {
                statsForm.Stats_Label.Text = "Your percentage is " + percentage.ToString() + "%" +
                                               "\n" + "You got a 1/4" + "\n" + "Your letter grade is an F";
                statsForm.BackColor = Color.Red;
            }
            else
            {
                statsForm.Stats_Label.Text = "Your percentage is " + percentage.ToString() + "%" +
                                               "\n" + "You got a 0/4" + "\n" + "Your letter grade is an F";
                statsForm.BackColor = Color.Plum;
            }
            statsForm.ShowDialog();
        }
        private void Exit_Button_Click(object sender, EventArgs e)
        {
            Close();
        }
        private void GetStats_Button_Click(object sender, EventArgs e)
        {
            getStatistics();
        }

        private void StartOver_Button_Click(object sender, EventArgs e)
        {
            INTequation();
        }

        

        private void Current_RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            GenerateRandomArrays();
            radioBTN();
            DisplayEquations();
        }
        private void Voltage_RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            GenerateRandomArrays();
            radioBTN();
            DisplayEquations();
        }
    }
}
