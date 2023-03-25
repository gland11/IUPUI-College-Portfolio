namespace Group_Project
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.Voltage_RadioButton = new System.Windows.Forms.RadioButton();
            this.Current_RadioButton = new System.Windows.Forms.RadioButton();
            this.Resistance_RadioButton = new System.Windows.Forms.RadioButton();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.textBox = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.MainForm_listBox = new System.Windows.Forms.ListBox();
            this.Exit_Button = new System.Windows.Forms.Button();
            this.Answer_Unit = new System.Windows.Forms.Label();
            this.Eq1Unit = new System.Windows.Forms.Label();
            this.Eq2Unit = new System.Windows.Forms.Label();
            this.Eq3Unit = new System.Windows.Forms.Label();
            this.Eq4Unit = new System.Windows.Forms.Label();
            this.StartOver_Button = new System.Windows.Forms.Button();
            this.GetStats_Button = new System.Windows.Forms.Button();
            this.GetAnswerss_Button = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(114, 37);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(397, 32);
            this.label1.TabIndex = 0;
            this.label1.Text = "Choose a variable to solve for:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(598, 260);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(160, 32);
            this.label2.TabIndex = 1;
            this.label2.Text = "Equation 1:";
            // 
            // Voltage_RadioButton
            // 
            this.Voltage_RadioButton.AutoSize = true;
            this.Voltage_RadioButton.Location = new System.Drawing.Point(18, 116);
            this.Voltage_RadioButton.Margin = new System.Windows.Forms.Padding(4);
            this.Voltage_RadioButton.Name = "Voltage_RadioButton";
            this.Voltage_RadioButton.Size = new System.Drawing.Size(150, 36);
            this.Voltage_RadioButton.TabIndex = 2;
            this.Voltage_RadioButton.TabStop = true;
            this.Voltage_RadioButton.Text = "Voltage";
            this.Voltage_RadioButton.UseVisualStyleBackColor = true;
            this.Voltage_RadioButton.CheckedChanged += new System.EventHandler(this.Voltage_RadioButton_CheckedChanged);
            // 
            // Current_RadioButton
            // 
            this.Current_RadioButton.AutoSize = true;
            this.Current_RadioButton.Location = new System.Drawing.Point(220, 116);
            this.Current_RadioButton.Margin = new System.Windows.Forms.Padding(4);
            this.Current_RadioButton.Name = "Current_RadioButton";
            this.Current_RadioButton.Size = new System.Drawing.Size(146, 36);
            this.Current_RadioButton.TabIndex = 3;
            this.Current_RadioButton.TabStop = true;
            this.Current_RadioButton.Text = "Current";
            this.Current_RadioButton.UseVisualStyleBackColor = true;
            this.Current_RadioButton.CheckedChanged += new System.EventHandler(this.Current_RadioButton_CheckedChanged);
            // 
            // Resistance_RadioButton
            // 
            this.Resistance_RadioButton.AutoSize = true;
            this.Resistance_RadioButton.Location = new System.Drawing.Point(416, 116);
            this.Resistance_RadioButton.Margin = new System.Windows.Forms.Padding(4);
            this.Resistance_RadioButton.Name = "Resistance_RadioButton";
            this.Resistance_RadioButton.Size = new System.Drawing.Size(193, 36);
            this.Resistance_RadioButton.TabIndex = 4;
            this.Resistance_RadioButton.TabStop = true;
            this.Resistance_RadioButton.Text = "Resistance";
            this.Resistance_RadioButton.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(598, 337);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(160, 32);
            this.label3.TabIndex = 5;
            this.label3.Text = "Equation 2:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(598, 422);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(160, 32);
            this.label4.TabIndex = 6;
            this.label4.Text = "Equation 3:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(598, 510);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(160, 32);
            this.label5.TabIndex = 7;
            this.label5.Text = "Equation 4:";
            // 
            // textBox
            // 
            this.textBox.Location = new System.Drawing.Point(784, 256);
            this.textBox.Margin = new System.Windows.Forms.Padding(4);
            this.textBox.Name = "textBox";
            this.textBox.Size = new System.Drawing.Size(200, 38);
            this.textBox.TabIndex = 36;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(784, 337);
            this.textBox2.Margin = new System.Windows.Forms.Padding(4);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(200, 38);
            this.textBox2.TabIndex = 37;
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(784, 422);
            this.textBox3.Margin = new System.Windows.Forms.Padding(4);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(200, 38);
            this.textBox3.TabIndex = 38;
            // 
            // textBox4
            // 
            this.textBox4.Location = new System.Drawing.Point(784, 510);
            this.textBox4.Margin = new System.Windows.Forms.Padding(4);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(200, 38);
            this.textBox4.TabIndex = 39;
            // 
            // MainForm_listBox
            // 
            this.MainForm_listBox.FormattingEnabled = true;
            this.MainForm_listBox.ItemHeight = 31;
            this.MainForm_listBox.Location = new System.Drawing.Point(12, 260);
            this.MainForm_listBox.Margin = new System.Windows.Forms.Padding(4);
            this.MainForm_listBox.Name = "MainForm_listBox";
            this.MainForm_listBox.Size = new System.Drawing.Size(564, 345);
            this.MainForm_listBox.TabIndex = 40;
            // 
            // Exit_Button
            // 
            this.Exit_Button.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.Exit_Button.Location = new System.Drawing.Point(946, 727);
            this.Exit_Button.Margin = new System.Windows.Forms.Padding(4);
            this.Exit_Button.Name = "Exit_Button";
            this.Exit_Button.Size = new System.Drawing.Size(180, 56);
            this.Exit_Button.TabIndex = 41;
            this.Exit_Button.Text = "Exit";
            this.Exit_Button.UseVisualStyleBackColor = true;
            this.Exit_Button.Click += new System.EventHandler(this.Exit_Button_Click);
            // 
            // Answer_Unit
            // 
            this.Answer_Unit.AutoSize = true;
            this.Answer_Unit.Location = new System.Drawing.Point(804, 194);
            this.Answer_Unit.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Answer_Unit.Name = "Answer_Unit";
            this.Answer_Unit.Size = new System.Drawing.Size(0, 32);
            this.Answer_Unit.TabIndex = 42;
            // 
            // Eq1Unit
            // 
            this.Eq1Unit.AutoSize = true;
            this.Eq1Unit.Location = new System.Drawing.Point(1012, 262);
            this.Eq1Unit.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Eq1Unit.Name = "Eq1Unit";
            this.Eq1Unit.Size = new System.Drawing.Size(0, 32);
            this.Eq1Unit.TabIndex = 43;
            // 
            // Eq2Unit
            // 
            this.Eq2Unit.AutoSize = true;
            this.Eq2Unit.Location = new System.Drawing.Point(1024, 353);
            this.Eq2Unit.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Eq2Unit.Name = "Eq2Unit";
            this.Eq2Unit.Size = new System.Drawing.Size(0, 32);
            this.Eq2Unit.TabIndex = 44;
            // 
            // Eq3Unit
            // 
            this.Eq3Unit.AutoSize = true;
            this.Eq3Unit.Location = new System.Drawing.Point(1028, 436);
            this.Eq3Unit.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Eq3Unit.Name = "Eq3Unit";
            this.Eq3Unit.Size = new System.Drawing.Size(0, 32);
            this.Eq3Unit.TabIndex = 45;
            // 
            // Eq4Unit
            // 
            this.Eq4Unit.AutoSize = true;
            this.Eq4Unit.Location = new System.Drawing.Point(1020, 523);
            this.Eq4Unit.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Eq4Unit.Name = "Eq4Unit";
            this.Eq4Unit.Size = new System.Drawing.Size(0, 32);
            this.Eq4Unit.TabIndex = 46;
            // 
            // StartOver_Button
            // 
            this.StartOver_Button.Location = new System.Drawing.Point(40, 725);
            this.StartOver_Button.Margin = new System.Windows.Forms.Padding(4);
            this.StartOver_Button.Name = "StartOver_Button";
            this.StartOver_Button.Size = new System.Drawing.Size(236, 64);
            this.StartOver_Button.TabIndex = 48;
            this.StartOver_Button.Text = "Start Over";
            this.StartOver_Button.UseVisualStyleBackColor = true;
            this.StartOver_Button.Click += new System.EventHandler(this.StartOver_Button_Click);
            // 
            // GetStats_Button
            // 
            this.GetStats_Button.Location = new System.Drawing.Point(360, 723);
            this.GetStats_Button.Margin = new System.Windows.Forms.Padding(4);
            this.GetStats_Button.Name = "GetStats_Button";
            this.GetStats_Button.Size = new System.Drawing.Size(236, 70);
            this.GetStats_Button.TabIndex = 49;
            this.GetStats_Button.Text = "Get Stats";
            this.GetStats_Button.UseVisualStyleBackColor = true;
            this.GetStats_Button.Click += new System.EventHandler(this.GetStats_Button_Click);
            // 
            // GetAnswerss_Button
            // 
            this.GetAnswerss_Button.Location = new System.Drawing.Point(638, 723);
            this.GetAnswerss_Button.Margin = new System.Windows.Forms.Padding(4);
            this.GetAnswerss_Button.Name = "GetAnswerss_Button";
            this.GetAnswerss_Button.Size = new System.Drawing.Size(254, 60);
            this.GetAnswerss_Button.TabIndex = 50;
            this.GetAnswerss_Button.Text = "Get Answers";
            this.GetAnswerss_Button.UseVisualStyleBackColor = true;
            this.GetAnswerss_Button.Click += new System.EventHandler(this.GetAnswerss_Button_Click);
            // 
            // MainForm
            // 
            this.AcceptButton = this.GetAnswerss_Button;
            this.AutoScaleDimensions = new System.Drawing.SizeF(16F, 31F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.Exit_Button;
            this.ClientSize = new System.Drawing.Size(1210, 882);
            this.Controls.Add(this.GetAnswerss_Button);
            this.Controls.Add(this.GetStats_Button);
            this.Controls.Add(this.StartOver_Button);
            this.Controls.Add(this.Eq4Unit);
            this.Controls.Add(this.Eq3Unit);
            this.Controls.Add(this.Eq2Unit);
            this.Controls.Add(this.Eq1Unit);
            this.Controls.Add(this.Answer_Unit);
            this.Controls.Add(this.Exit_Button);
            this.Controls.Add(this.MainForm_listBox);
            this.Controls.Add(this.textBox4);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.Resistance_RadioButton);
            this.Controls.Add(this.Current_RadioButton);
            this.Controls.Add(this.Voltage_RadioButton);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "MainForm";
            this.Text = "Main Form";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.RadioButton Voltage_RadioButton;
        private System.Windows.Forms.RadioButton Current_RadioButton;
        private System.Windows.Forms.RadioButton Resistance_RadioButton;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBox;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.ListBox MainForm_listBox;
        private System.Windows.Forms.Button Exit_Button;
        private System.Windows.Forms.Label Answer_Unit;
        private System.Windows.Forms.Label Eq1Unit;
        private System.Windows.Forms.Label Eq2Unit;
        private System.Windows.Forms.Label Eq3Unit;
        private System.Windows.Forms.Label Eq4Unit;
        private System.Windows.Forms.Button StartOver_Button;
        private System.Windows.Forms.Button GetStats_Button;
        private System.Windows.Forms.Button GetAnswerss_Button;
    }
}

