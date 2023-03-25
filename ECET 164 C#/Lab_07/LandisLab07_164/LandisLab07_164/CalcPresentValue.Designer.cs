namespace LandisLab07_164
{
    partial class CalcPresentValue
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
            this.futureValueWantedLabel = new System.Windows.Forms.Label();
            this.valueWantedTextBox = new System.Windows.Forms.TextBox();
            this.rateWantedLabel = new System.Windows.Forms.Label();
            this.rateWantedTextBox = new System.Windows.Forms.TextBox();
            this.yearsWantedLabel = new System.Windows.Forms.Label();
            this.yearsWantedTextBox = new System.Windows.Forms.TextBox();
            this.depositTodayLabel = new System.Windows.Forms.Label();
            this.calcBtn = new System.Windows.Forms.Button();
            this.OutputLabel = new System.Windows.Forms.Label();
            this.clrBtn = new System.Windows.Forms.Button();
            this.extBtn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // futureValueWantedLabel
            // 
            this.futureValueWantedLabel.AutoSize = true;
            this.futureValueWantedLabel.Location = new System.Drawing.Point(96, 40);
            this.futureValueWantedLabel.Name = "futureValueWantedLabel";
            this.futureValueWantedLabel.Size = new System.Drawing.Size(146, 17);
            this.futureValueWantedLabel.TabIndex = 0;
            this.futureValueWantedLabel.Text = "Future Value Wanted:";
            // 
            // valueWantedTextBox
            // 
            this.valueWantedTextBox.Location = new System.Drawing.Point(248, 37);
            this.valueWantedTextBox.Name = "valueWantedTextBox";
            this.valueWantedTextBox.Size = new System.Drawing.Size(100, 22);
            this.valueWantedTextBox.TabIndex = 1;
            // 
            // rateWantedLabel
            // 
            this.rateWantedLabel.AutoSize = true;
            this.rateWantedLabel.Location = new System.Drawing.Point(22, 73);
            this.rateWantedLabel.Name = "rateWantedLabel";
            this.rateWantedLabel.Size = new System.Drawing.Size(220, 17);
            this.rateWantedLabel.TabIndex = 2;
            this.rateWantedLabel.Text = "Annual Interest Rate Wanted (%):";
            // 
            // rateWantedTextBox
            // 
            this.rateWantedTextBox.Location = new System.Drawing.Point(248, 70);
            this.rateWantedTextBox.Name = "rateWantedTextBox";
            this.rateWantedTextBox.Size = new System.Drawing.Size(100, 22);
            this.rateWantedTextBox.TabIndex = 3;
            // 
            // yearsWantedLabel
            // 
            this.yearsWantedLabel.AutoSize = true;
            this.yearsWantedLabel.Location = new System.Drawing.Point(63, 106);
            this.yearsWantedLabel.Name = "yearsWantedLabel";
            this.yearsWantedLabel.Size = new System.Drawing.Size(179, 17);
            this.yearsWantedLabel.TabIndex = 4;
            this.yearsWantedLabel.Text = "Numbers of Years Wanted:";
            // 
            // yearsWantedTextBox
            // 
            this.yearsWantedTextBox.Location = new System.Drawing.Point(248, 103);
            this.yearsWantedTextBox.Name = "yearsWantedTextBox";
            this.yearsWantedTextBox.Size = new System.Drawing.Size(100, 22);
            this.yearsWantedTextBox.TabIndex = 5;
            // 
            // depositTodayLabel
            // 
            this.depositTodayLabel.AutoSize = true;
            this.depositTodayLabel.Location = new System.Drawing.Point(3, 175);
            this.depositTodayLabel.Name = "depositTodayLabel";
            this.depositTodayLabel.Size = new System.Drawing.Size(239, 17);
            this.depositTodayLabel.TabIndex = 6;
            this.depositTodayLabel.Text = "Amount You Need to Deposit Today:";
            // 
            // calcBtn
            // 
            this.calcBtn.Location = new System.Drawing.Point(12, 238);
            this.calcBtn.Name = "calcBtn";
            this.calcBtn.Size = new System.Drawing.Size(104, 37);
            this.calcBtn.TabIndex = 8;
            this.calcBtn.Text = "Calculate";
            this.calcBtn.UseVisualStyleBackColor = true;
            this.calcBtn.Click += new System.EventHandler(this.calcBtn_Click);
            // 
            // OutputLabel
            // 
            this.OutputLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.OutputLabel.Location = new System.Drawing.Point(248, 175);
            this.OutputLabel.Name = "OutputLabel";
            this.OutputLabel.Size = new System.Drawing.Size(100, 23);
            this.OutputLabel.TabIndex = 9;
            // 
            // clrBtn
            // 
            this.clrBtn.Location = new System.Drawing.Point(122, 238);
            this.clrBtn.Name = "clrBtn";
            this.clrBtn.Size = new System.Drawing.Size(104, 37);
            this.clrBtn.TabIndex = 10;
            this.clrBtn.Text = "Clear";
            this.clrBtn.UseVisualStyleBackColor = true;
            this.clrBtn.Click += new System.EventHandler(this.clrBtn_Click);
            // 
            // extBtn
            // 
            this.extBtn.Location = new System.Drawing.Point(232, 238);
            this.extBtn.Name = "extBtn";
            this.extBtn.Size = new System.Drawing.Size(104, 37);
            this.extBtn.TabIndex = 11;
            this.extBtn.Text = "Exit";
            this.extBtn.UseVisualStyleBackColor = true;
            this.extBtn.Click += new System.EventHandler(this.extBtn_Click);
            // 
            // CalcPresentValue
            // 
            this.AcceptButton = this.calcBtn;
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.extBtn;
            this.ClientSize = new System.Drawing.Size(358, 283);
            this.Controls.Add(this.extBtn);
            this.Controls.Add(this.clrBtn);
            this.Controls.Add(this.OutputLabel);
            this.Controls.Add(this.calcBtn);
            this.Controls.Add(this.depositTodayLabel);
            this.Controls.Add(this.yearsWantedTextBox);
            this.Controls.Add(this.yearsWantedLabel);
            this.Controls.Add(this.rateWantedTextBox);
            this.Controls.Add(this.rateWantedLabel);
            this.Controls.Add(this.valueWantedTextBox);
            this.Controls.Add(this.futureValueWantedLabel);
            this.Name = "CalcPresentValue";
            this.Text = "Present Value Calculator";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label futureValueWantedLabel;
        private System.Windows.Forms.TextBox valueWantedTextBox;
        private System.Windows.Forms.Label rateWantedLabel;
        private System.Windows.Forms.TextBox rateWantedTextBox;
        private System.Windows.Forms.Label yearsWantedLabel;
        private System.Windows.Forms.TextBox yearsWantedTextBox;
        private System.Windows.Forms.Label depositTodayLabel;
        private System.Windows.Forms.Button calcBtn;
        private System.Windows.Forms.Label OutputLabel;
        private System.Windows.Forms.Button clrBtn;
        private System.Windows.Forms.Button extBtn;
    }
}

