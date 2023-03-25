namespace GeorgeLandis_Lab_04
{
    partial class ohmsLawCalc
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
            this.titleLabel = new System.Windows.Forms.Label();
            this.instructionLabel = new System.Windows.Forms.Label();
            this.enter1stLabel = new System.Windows.Forms.Label();
            this.OhmsLawListBox = new System.Windows.Forms.ListBox();
            this.enter2ndLabel = new System.Windows.Forms.Label();
            this.finalLabel = new System.Windows.Forms.Label();
            this.firstNumTextBox = new System.Windows.Forms.TextBox();
            this.secondNumTextBox = new System.Windows.Forms.TextBox();
            this.signLabel = new System.Windows.Forms.Label();
            this.eqlLabel = new System.Windows.Forms.Label();
            this.finalDataLabel = new System.Windows.Forms.Label();
            this.calcBtn = new System.Windows.Forms.Button();
            this.clrBtn = new System.Windows.Forms.Button();
            this.exitBtn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // titleLabel
            // 
            this.titleLabel.AutoSize = true;
            this.titleLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.titleLabel.Location = new System.Drawing.Point(80, 9);
            this.titleLabel.Name = "titleLabel";
            this.titleLabel.Size = new System.Drawing.Size(260, 29);
            this.titleLabel.TabIndex = 0;
            this.titleLabel.Text = "Ohms Law Calculator";
            this.titleLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // instructionLabel
            // 
            this.instructionLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.instructionLabel.Location = new System.Drawing.Point(70, 38);
            this.instructionLabel.Name = "instructionLabel";
            this.instructionLabel.Size = new System.Drawing.Size(294, 45);
            this.instructionLabel.TabIndex = 1;
            this.instructionLabel.Text = "Please Make a selection on the of which item needed to calculate";
            this.instructionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // enter1stLabel
            // 
            this.enter1stLabel.AutoSize = true;
            this.enter1stLabel.Location = new System.Drawing.Point(12, 155);
            this.enter1stLabel.Name = "enter1stLabel";
            this.enter1stLabel.Size = new System.Drawing.Size(94, 17);
            this.enter1stLabel.TabIndex = 3;
            this.enter1stLabel.Text = "Enter______:";
            // 
            // OhmsLawListBox
            // 
            this.OhmsLawListBox.FormattingEnabled = true;
            this.OhmsLawListBox.ItemHeight = 16;
            this.OhmsLawListBox.Items.AddRange(new object[] {
            "Voltage",
            "Resistance",
            "Current"});
            this.OhmsLawListBox.Location = new System.Drawing.Point(161, 91);
            this.OhmsLawListBox.Name = "OhmsLawListBox";
            this.OhmsLawListBox.Size = new System.Drawing.Size(120, 52);
            this.OhmsLawListBox.TabIndex = 2;
            this.OhmsLawListBox.SelectedIndexChanged += new System.EventHandler(this.listBox1_SelectedIndexChanged);
            // 
            // enter2ndLabel
            // 
            this.enter2ndLabel.AutoSize = true;
            this.enter2ndLabel.Location = new System.Drawing.Point(149, 155);
            this.enter2ndLabel.Name = "enter2ndLabel";
            this.enter2ndLabel.Size = new System.Drawing.Size(118, 17);
            this.enter2ndLabel.TabIndex = 4;
            this.enter2ndLabel.Text = "Enter_________:";
            // 
            // finalLabel
            // 
            this.finalLabel.AutoSize = true;
            this.finalLabel.Location = new System.Drawing.Point(315, 155);
            this.finalLabel.Name = "finalLabel";
            this.finalLabel.Size = new System.Drawing.Size(74, 17);
            this.finalLabel.TabIndex = 5;
            this.finalLabel.Text = "______ is:";
            // 
            // firstNumTextBox
            // 
            this.firstNumTextBox.Location = new System.Drawing.Point(12, 185);
            this.firstNumTextBox.Name = "firstNumTextBox";
            this.firstNumTextBox.Size = new System.Drawing.Size(100, 22);
            this.firstNumTextBox.TabIndex = 6;
            // 
            // secondNumTextBox
            // 
            this.secondNumTextBox.Location = new System.Drawing.Point(156, 185);
            this.secondNumTextBox.Name = "secondNumTextBox";
            this.secondNumTextBox.Size = new System.Drawing.Size(100, 22);
            this.secondNumTextBox.TabIndex = 8;
            // 
            // signLabel
            // 
            this.signLabel.AutoSize = true;
            this.signLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.signLabel.Location = new System.Drawing.Point(118, 183);
            this.signLabel.Name = "signLabel";
            this.signLabel.Size = new System.Drawing.Size(0, 25);
            this.signLabel.TabIndex = 7;
            // 
            // eqlLabel
            // 
            this.eqlLabel.AutoSize = true;
            this.eqlLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.eqlLabel.Location = new System.Drawing.Point(262, 190);
            this.eqlLabel.Name = "eqlLabel";
            this.eqlLabel.Size = new System.Drawing.Size(0, 20);
            this.eqlLabel.TabIndex = 9;
            // 
            // finalDataLabel
            // 
            this.finalDataLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.finalDataLabel.Location = new System.Drawing.Point(300, 187);
            this.finalDataLabel.Name = "finalDataLabel";
            this.finalDataLabel.Size = new System.Drawing.Size(100, 23);
            this.finalDataLabel.TabIndex = 10;
            this.finalDataLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // calcBtn
            // 
            this.calcBtn.Location = new System.Drawing.Point(12, 224);
            this.calcBtn.Name = "calcBtn";
            this.calcBtn.Size = new System.Drawing.Size(106, 49);
            this.calcBtn.TabIndex = 11;
            this.calcBtn.Text = "Calculate";
            this.calcBtn.UseVisualStyleBackColor = true;
            this.calcBtn.Click += new System.EventHandler(this.calcBtn_Click);
            // 
            // clrBtn
            // 
            this.clrBtn.Location = new System.Drawing.Point(156, 224);
            this.clrBtn.Name = "clrBtn";
            this.clrBtn.Size = new System.Drawing.Size(106, 49);
            this.clrBtn.TabIndex = 12;
            this.clrBtn.Text = "Clear";
            this.clrBtn.UseVisualStyleBackColor = true;
            this.clrBtn.Click += new System.EventHandler(this.clrBtn_Click);
            // 
            // exitBtn
            // 
            this.exitBtn.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.exitBtn.Location = new System.Drawing.Point(294, 224);
            this.exitBtn.Name = "exitBtn";
            this.exitBtn.Size = new System.Drawing.Size(106, 49);
            this.exitBtn.TabIndex = 13;
            this.exitBtn.Text = "Exit";
            this.exitBtn.UseVisualStyleBackColor = true;
            this.exitBtn.Click += new System.EventHandler(this.exitBtn_Click);
            // 
            // ohmsLawCalc
            // 
            this.AcceptButton = this.calcBtn;
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.exitBtn;
            this.ClientSize = new System.Drawing.Size(416, 285);
            this.Controls.Add(this.exitBtn);
            this.Controls.Add(this.clrBtn);
            this.Controls.Add(this.calcBtn);
            this.Controls.Add(this.finalDataLabel);
            this.Controls.Add(this.eqlLabel);
            this.Controls.Add(this.signLabel);
            this.Controls.Add(this.secondNumTextBox);
            this.Controls.Add(this.firstNumTextBox);
            this.Controls.Add(this.finalLabel);
            this.Controls.Add(this.enter2ndLabel);
            this.Controls.Add(this.OhmsLawListBox);
            this.Controls.Add(this.enter1stLabel);
            this.Controls.Add(this.instructionLabel);
            this.Controls.Add(this.titleLabel);
            this.Name = "ohmsLawCalc";
            this.Text = "Ohms Law Calculator";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label titleLabel;
        private System.Windows.Forms.Label instructionLabel;
        private System.Windows.Forms.Label enter1stLabel;
        private System.Windows.Forms.ListBox OhmsLawListBox;
        private System.Windows.Forms.Label enter2ndLabel;
        private System.Windows.Forms.Label finalLabel;
        private System.Windows.Forms.TextBox firstNumTextBox;
        private System.Windows.Forms.TextBox secondNumTextBox;
        private System.Windows.Forms.Label signLabel;
        private System.Windows.Forms.Label eqlLabel;
        private System.Windows.Forms.Label finalDataLabel;
        private System.Windows.Forms.Button calcBtn;
        private System.Windows.Forms.Button clrBtn;
        private System.Windows.Forms.Button exitBtn;
    }
}

