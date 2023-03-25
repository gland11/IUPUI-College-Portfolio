namespace LandisLab08_164
{
    partial class DisplaySales
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
            this.salesListBox = new System.Windows.Forms.ListBox();
            this.extBtn = new System.Windows.Forms.Button();
            this.clrBtn = new System.Windows.Forms.Button();
            this.writeTxtBtn = new System.Windows.Forms.Button();
            this.sumLabel = new System.Windows.Forms.Label();
            this.totalLabel = new System.Windows.Forms.Label();
            this.avegLabel = new System.Windows.Forms.Label();
            this.averageLabel = new System.Windows.Forms.Label();
            this.highestLabel = new System.Windows.Forms.Label();
            this.hLabel = new System.Windows.Forms.Label();
            this.lowLabel = new System.Windows.Forms.Label();
            this.lowestLabel = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // salesListBox
            // 
            this.salesListBox.FormattingEnabled = true;
            this.salesListBox.ItemHeight = 16;
            this.salesListBox.Location = new System.Drawing.Point(12, 12);
            this.salesListBox.Name = "salesListBox";
            this.salesListBox.Size = new System.Drawing.Size(155, 148);
            this.salesListBox.TabIndex = 0;
            // 
            // extBtn
            // 
            this.extBtn.Location = new System.Drawing.Point(297, 220);
            this.extBtn.Name = "extBtn";
            this.extBtn.Size = new System.Drawing.Size(89, 46);
            this.extBtn.TabIndex = 1;
            this.extBtn.Text = "Exit";
            this.extBtn.UseVisualStyleBackColor = true;
            this.extBtn.Click += new System.EventHandler(this.extBtn_Click);
            // 
            // clrBtn
            // 
            this.clrBtn.Location = new System.Drawing.Point(202, 220);
            this.clrBtn.Name = "clrBtn";
            this.clrBtn.Size = new System.Drawing.Size(89, 46);
            this.clrBtn.TabIndex = 2;
            this.clrBtn.Text = "Clear";
            this.clrBtn.UseVisualStyleBackColor = true;
            this.clrBtn.Click += new System.EventHandler(this.clrBtn_Click);
            // 
            // writeTxtBtn
            // 
            this.writeTxtBtn.Location = new System.Drawing.Point(107, 220);
            this.writeTxtBtn.Name = "writeTxtBtn";
            this.writeTxtBtn.Size = new System.Drawing.Size(89, 46);
            this.writeTxtBtn.TabIndex = 4;
            this.writeTxtBtn.Text = "Get the Sales";
            this.writeTxtBtn.UseVisualStyleBackColor = true;
            this.writeTxtBtn.Click += new System.EventHandler(this.writeTxtBtn_Click);
            // 
            // sumLabel
            // 
            this.sumLabel.AutoSize = true;
            this.sumLabel.Location = new System.Drawing.Point(12, 184);
            this.sumLabel.Name = "sumLabel";
            this.sumLabel.Size = new System.Drawing.Size(198, 17);
            this.sumLabel.TabIndex = 5;
            this.sumLabel.Text = "The sum of all the numbers is:";
            // 
            // totalLabel
            // 
            this.totalLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.totalLabel.Location = new System.Drawing.Point(216, 184);
            this.totalLabel.Name = "totalLabel";
            this.totalLabel.Size = new System.Drawing.Size(170, 23);
            this.totalLabel.TabIndex = 6;
            // 
            // avegLabel
            // 
            this.avegLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.avegLabel.Location = new System.Drawing.Point(286, 25);
            this.avegLabel.Name = "avegLabel";
            this.avegLabel.Size = new System.Drawing.Size(100, 23);
            this.avegLabel.TabIndex = 7;
            // 
            // averageLabel
            // 
            this.averageLabel.AutoSize = true;
            this.averageLabel.Location = new System.Drawing.Point(213, 31);
            this.averageLabel.Name = "averageLabel";
            this.averageLabel.Size = new System.Drawing.Size(65, 17);
            this.averageLabel.TabIndex = 8;
            this.averageLabel.Text = "Average:";
            // 
            // highestLabel
            // 
            this.highestLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.highestLabel.Location = new System.Drawing.Point(286, 64);
            this.highestLabel.Name = "highestLabel";
            this.highestLabel.Size = new System.Drawing.Size(100, 23);
            this.highestLabel.TabIndex = 9;
            // 
            // hLabel
            // 
            this.hLabel.AutoSize = true;
            this.hLabel.Location = new System.Drawing.Point(218, 64);
            this.hLabel.Name = "hLabel";
            this.hLabel.Size = new System.Drawing.Size(60, 17);
            this.hLabel.TabIndex = 10;
            this.hLabel.Text = "Highest:";
            // 
            // lowLabel
            // 
            this.lowLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lowLabel.Location = new System.Drawing.Point(286, 104);
            this.lowLabel.Name = "lowLabel";
            this.lowLabel.Size = new System.Drawing.Size(100, 23);
            this.lowLabel.TabIndex = 11;
            // 
            // lowestLabel
            // 
            this.lowestLabel.AutoSize = true;
            this.lowestLabel.Location = new System.Drawing.Point(227, 105);
            this.lowestLabel.Name = "lowestLabel";
            this.lowestLabel.Size = new System.Drawing.Size(56, 17);
            this.lowestLabel.TabIndex = 12;
            this.lowestLabel.Text = "Lowest:";
            // 
            // DisplaySales
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(398, 277);
            this.Controls.Add(this.lowestLabel);
            this.Controls.Add(this.lowLabel);
            this.Controls.Add(this.hLabel);
            this.Controls.Add(this.highestLabel);
            this.Controls.Add(this.averageLabel);
            this.Controls.Add(this.avegLabel);
            this.Controls.Add(this.totalLabel);
            this.Controls.Add(this.sumLabel);
            this.Controls.Add(this.writeTxtBtn);
            this.Controls.Add(this.clrBtn);
            this.Controls.Add(this.extBtn);
            this.Controls.Add(this.salesListBox);
            this.Name = "DisplaySales";
            this.Text = "Sales Analysis";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListBox salesListBox;
        private System.Windows.Forms.Button extBtn;
        private System.Windows.Forms.Button clrBtn;
        private System.Windows.Forms.Button writeTxtBtn;
        private System.Windows.Forms.Label sumLabel;
        private System.Windows.Forms.Label totalLabel;
        private System.Windows.Forms.Label avegLabel;
        private System.Windows.Forms.Label averageLabel;
        private System.Windows.Forms.Label highestLabel;
        private System.Windows.Forms.Label hLabel;
        private System.Windows.Forms.Label lowLabel;
        private System.Windows.Forms.Label lowestLabel;
    }
}

