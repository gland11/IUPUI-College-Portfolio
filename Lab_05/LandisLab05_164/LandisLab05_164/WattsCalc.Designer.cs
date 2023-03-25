namespace LandisLab05_164
{
    partial class WattsCalc
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
            this.joulesInsertLabel = new System.Windows.Forms.Label();
            this.joulesLabel = new System.Windows.Forms.Label();
            this.secondsTotalLabel = new System.Windows.Forms.Label();
            this.secondsLabel = new System.Windows.Forms.Label();
            this.joulesTextBox = new System.Windows.Forms.TextBox();
            this.secondsTextBox = new System.Windows.Forms.TextBox();
            this.powerResultLabel = new System.Windows.Forms.Label();
            this.calcBtn = new System.Windows.Forms.Button();
            this.clrBtn = new System.Windows.Forms.Button();
            this.extBtn = new System.Windows.Forms.Button();
            this.finalResultListBox = new System.Windows.Forms.ListBox();
            this.SuspendLayout();
            // 
            // joulesInsertLabel
            // 
            this.joulesInsertLabel.AutoSize = true;
            this.joulesInsertLabel.Location = new System.Drawing.Point(23, 24);
            this.joulesInsertLabel.Name = "joulesInsertLabel";
            this.joulesInsertLabel.Size = new System.Drawing.Size(169, 17);
            this.joulesInsertLabel.TabIndex = 0;
            this.joulesInsertLabel.Text = "Insert Total Energy Used:";
            // 
            // joulesLabel
            // 
            this.joulesLabel.AutoSize = true;
            this.joulesLabel.Location = new System.Drawing.Point(143, 58);
            this.joulesLabel.Name = "joulesLabel";
            this.joulesLabel.Size = new System.Drawing.Size(49, 17);
            this.joulesLabel.TabIndex = 2;
            this.joulesLabel.Text = "Joules";
            // 
            // secondsTotalLabel
            // 
            this.secondsTotalLabel.AutoSize = true;
            this.secondsTotalLabel.Location = new System.Drawing.Point(211, 24);
            this.secondsTotalLabel.Name = "secondsTotalLabel";
            this.secondsTotalLabel.Size = new System.Drawing.Size(212, 17);
            this.secondsTotalLabel.TabIndex = 3;
            this.secondsTotalLabel.Text = "Insert Total Number of Seconds:";
            // 
            // secondsLabel
            // 
            this.secondsLabel.AutoSize = true;
            this.secondsLabel.Location = new System.Drawing.Point(362, 58);
            this.secondsLabel.Name = "secondsLabel";
            this.secondsLabel.Size = new System.Drawing.Size(61, 17);
            this.secondsLabel.TabIndex = 5;
            this.secondsLabel.Text = "seconds";
            // 
            // joulesTextBox
            // 
            this.joulesTextBox.Location = new System.Drawing.Point(37, 58);
            this.joulesTextBox.Name = "joulesTextBox";
            this.joulesTextBox.Size = new System.Drawing.Size(100, 22);
            this.joulesTextBox.TabIndex = 1;
            // 
            // secondsTextBox
            // 
            this.secondsTextBox.Location = new System.Drawing.Point(256, 58);
            this.secondsTextBox.Name = "secondsTextBox";
            this.secondsTextBox.Size = new System.Drawing.Size(100, 22);
            this.secondsTextBox.TabIndex = 4;
            // 
            // powerResultLabel
            // 
            this.powerResultLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.powerResultLabel.Location = new System.Drawing.Point(37, 112);
            this.powerResultLabel.Name = "powerResultLabel";
            this.powerResultLabel.Size = new System.Drawing.Size(386, 23);
            this.powerResultLabel.TabIndex = 6;
            // 
            // calcBtn
            // 
            this.calcBtn.Location = new System.Drawing.Point(37, 425);
            this.calcBtn.Name = "calcBtn";
            this.calcBtn.Size = new System.Drawing.Size(124, 54);
            this.calcBtn.TabIndex = 8;
            this.calcBtn.Text = "Calculate";
            this.calcBtn.UseVisualStyleBackColor = true;
            this.calcBtn.Click += new System.EventHandler(this.calcBtn_Click);
            // 
            // clrBtn
            // 
            this.clrBtn.Location = new System.Drawing.Point(176, 425);
            this.clrBtn.Name = "clrBtn";
            this.clrBtn.Size = new System.Drawing.Size(124, 54);
            this.clrBtn.TabIndex = 9;
            this.clrBtn.Text = "Clear";
            this.clrBtn.UseVisualStyleBackColor = true;
            this.clrBtn.Click += new System.EventHandler(this.clrBtn_Click);
            // 
            // extBtn
            // 
            this.extBtn.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.extBtn.Location = new System.Drawing.Point(320, 425);
            this.extBtn.Name = "extBtn";
            this.extBtn.Size = new System.Drawing.Size(124, 54);
            this.extBtn.TabIndex = 10;
            this.extBtn.Text = "Exit";
            this.extBtn.UseVisualStyleBackColor = true;
            this.extBtn.Click += new System.EventHandler(this.extBtn_Click);
            // 
            // finalResultListBox
            // 
            this.finalResultListBox.FormattingEnabled = true;
            this.finalResultListBox.ItemHeight = 16;
            this.finalResultListBox.Location = new System.Drawing.Point(37, 161);
            this.finalResultListBox.Name = "finalResultListBox";
            this.finalResultListBox.Size = new System.Drawing.Size(407, 244);
            this.finalResultListBox.TabIndex = 7;
            // 
            // WattsCalc
            // 
            this.AcceptButton = this.calcBtn;
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.extBtn;
            this.ClientSize = new System.Drawing.Size(478, 492);
            this.Controls.Add(this.finalResultListBox);
            this.Controls.Add(this.extBtn);
            this.Controls.Add(this.clrBtn);
            this.Controls.Add(this.calcBtn);
            this.Controls.Add(this.powerResultLabel);
            this.Controls.Add(this.secondsTextBox);
            this.Controls.Add(this.joulesTextBox);
            this.Controls.Add(this.secondsLabel);
            this.Controls.Add(this.secondsTotalLabel);
            this.Controls.Add(this.joulesLabel);
            this.Controls.Add(this.joulesInsertLabel);
            this.Name = "WattsCalc";
            this.Text = "Power Calculator";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label joulesInsertLabel;
        private System.Windows.Forms.Label joulesLabel;
        private System.Windows.Forms.Label secondsTotalLabel;
        private System.Windows.Forms.Label secondsLabel;
        private System.Windows.Forms.TextBox joulesTextBox;
        private System.Windows.Forms.TextBox secondsTextBox;
        private System.Windows.Forms.Label powerResultLabel;
        private System.Windows.Forms.Button calcBtn;
        private System.Windows.Forms.Button clrBtn;
        private System.Windows.Forms.Button extBtn;
        private System.Windows.Forms.ListBox finalResultListBox;
    }
}

