namespace Landis_Lab06
{
    partial class DisCalc
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
            this.speedLabel = new System.Windows.Forms.Label();
            this.hoursLabel = new System.Windows.Forms.Label();
            this.mphTextbox = new System.Windows.Forms.TextBox();
            this.hoursTextbox = new System.Windows.Forms.TextBox();
            this.outputListBox = new System.Windows.Forms.ListBox();
            this.calcBtn = new System.Windows.Forms.Button();
            this.clrBtn = new System.Windows.Forms.Button();
            this.extBtn = new System.Windows.Forms.Button();
            this.writeBtn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // speedLabel
            // 
            this.speedLabel.AutoSize = true;
            this.speedLabel.Location = new System.Drawing.Point(48, 26);
            this.speedLabel.Name = "speedLabel";
            this.speedLabel.Size = new System.Drawing.Size(152, 17);
            this.speedLabel.TabIndex = 0;
            this.speedLabel.Text = "Vehicle Speed in MPH:";
            // 
            // hoursLabel
            // 
            this.hoursLabel.AutoSize = true;
            this.hoursLabel.Location = new System.Drawing.Point(90, 61);
            this.hoursLabel.Name = "hoursLabel";
            this.hoursLabel.Size = new System.Drawing.Size(110, 17);
            this.hoursLabel.TabIndex = 1;
            this.hoursLabel.Text = "Hours Traveled:";
            // 
            // mphTextbox
            // 
            this.mphTextbox.Location = new System.Drawing.Point(206, 23);
            this.mphTextbox.Name = "mphTextbox";
            this.mphTextbox.Size = new System.Drawing.Size(165, 22);
            this.mphTextbox.TabIndex = 2;
            this.mphTextbox.Text = "Enter MPH";
            // 
            // hoursTextbox
            // 
            this.hoursTextbox.Location = new System.Drawing.Point(206, 58);
            this.hoursTextbox.Name = "hoursTextbox";
            this.hoursTextbox.Size = new System.Drawing.Size(165, 22);
            this.hoursTextbox.TabIndex = 3;
            this.hoursTextbox.Text = "Enter Hours";
            // 
            // outputListBox
            // 
            this.outputListBox.FormattingEnabled = true;
            this.outputListBox.ItemHeight = 16;
            this.outputListBox.Location = new System.Drawing.Point(12, 94);
            this.outputListBox.Name = "outputListBox";
            this.outputListBox.Size = new System.Drawing.Size(428, 164);
            this.outputListBox.TabIndex = 4;
            // 
            // calcBtn
            // 
            this.calcBtn.Location = new System.Drawing.Point(12, 264);
            this.calcBtn.Name = "calcBtn";
            this.calcBtn.Size = new System.Drawing.Size(90, 23);
            this.calcBtn.TabIndex = 5;
            this.calcBtn.Text = "Calculate";
            this.calcBtn.UseVisualStyleBackColor = true;
            this.calcBtn.Click += new System.EventHandler(this.calcBtn_Click);
            // 
            // clrBtn
            // 
            this.clrBtn.Location = new System.Drawing.Point(108, 264);
            this.clrBtn.Name = "clrBtn";
            this.clrBtn.Size = new System.Drawing.Size(90, 23);
            this.clrBtn.TabIndex = 6;
            this.clrBtn.Text = "Clear";
            this.clrBtn.UseVisualStyleBackColor = true;
            this.clrBtn.Click += new System.EventHandler(this.clrBtn_Click);
            // 
            // extBtn
            // 
            this.extBtn.Location = new System.Drawing.Point(204, 264);
            this.extBtn.Name = "extBtn";
            this.extBtn.Size = new System.Drawing.Size(90, 23);
            this.extBtn.TabIndex = 7;
            this.extBtn.Text = "Exit";
            this.extBtn.UseVisualStyleBackColor = true;
            this.extBtn.Click += new System.EventHandler(this.extBtn_Click);
            // 
            // writeBtn
            // 
            this.writeBtn.Location = new System.Drawing.Point(300, 264);
            this.writeBtn.Name = "writeBtn";
            this.writeBtn.Size = new System.Drawing.Size(140, 23);
            this.writeBtn.TabIndex = 8;
            this.writeBtn.Text = "Write Data to File";
            this.writeBtn.UseVisualStyleBackColor = true;
            this.writeBtn.Click += new System.EventHandler(this.writeBtn_Click);
            // 
            // DistanceCalc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(452, 299);
            this.Controls.Add(this.writeBtn);
            this.Controls.Add(this.extBtn);
            this.Controls.Add(this.clrBtn);
            this.Controls.Add(this.calcBtn);
            this.Controls.Add(this.outputListBox);
            this.Controls.Add(this.hoursTextbox);
            this.Controls.Add(this.mphTextbox);
            this.Controls.Add(this.hoursLabel);
            this.Controls.Add(this.speedLabel);
            this.Name = "DistanceCalc";
            this.Text = "Distance Calculator";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label speedLabel;
        private System.Windows.Forms.Label hoursLabel;
        private System.Windows.Forms.TextBox mphTextbox;
        private System.Windows.Forms.TextBox hoursTextbox;
        private System.Windows.Forms.ListBox outputListBox;
        private System.Windows.Forms.Button calcBtn;
        private System.Windows.Forms.Button clrBtn;
        private System.Windows.Forms.Button extBtn;
        private System.Windows.Forms.Button writeBtn;
    }
}

