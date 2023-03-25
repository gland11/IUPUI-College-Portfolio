namespace Gothic_Wiggles_Lab_10_11
{
    partial class Vend
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Vend));
            this.kitkatPanel = new System.Windows.Forms.Panel();
            this.kitkatPictureBox = new System.Windows.Forms.PictureBox();
            this.kitkatMoneyLabel = new System.Windows.Forms.Label();
            this.kitkatLeftLabel = new System.Windows.Forms.Label();
            this.kitkatAmountLeftLabel = new System.Windows.Forms.Label();
            this.totalPanal = new System.Windows.Forms.Panel();
            this.totalSalesLabel = new System.Windows.Forms.Label();
            this.totalAmountSalesLabel = new System.Windows.Forms.Label();
            this.kitkatPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.kitkatPictureBox)).BeginInit();
            this.totalPanal.SuspendLayout();
            this.SuspendLayout();
            // 
            // kitkatPanel
            // 
            this.kitkatPanel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.kitkatPanel.Controls.Add(this.kitkatAmountLeftLabel);
            this.kitkatPanel.Controls.Add(this.kitkatLeftLabel);
            this.kitkatPanel.Controls.Add(this.kitkatMoneyLabel);
            this.kitkatPanel.Controls.Add(this.kitkatPictureBox);
            this.kitkatPanel.Location = new System.Drawing.Point(12, 12);
            this.kitkatPanel.Name = "kitkatPanel";
            this.kitkatPanel.Size = new System.Drawing.Size(256, 128);
            this.kitkatPanel.TabIndex = 0;
            // 
            // kitkatPictureBox
            // 
            this.kitkatPictureBox.Image = ((System.Drawing.Image)(resources.GetObject("kitkatPictureBox.Image")));
            this.kitkatPictureBox.Location = new System.Drawing.Point(15, 16);
            this.kitkatPictureBox.Name = "kitkatPictureBox";
            this.kitkatPictureBox.Size = new System.Drawing.Size(110, 61);
            this.kitkatPictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.kitkatPictureBox.TabIndex = 0;
            this.kitkatPictureBox.TabStop = false;
            this.kitkatPictureBox.Click += new System.EventHandler(this.kitkatPictureBox_Click);
            // 
            // kitkatMoneyLabel
            // 
            this.kitkatMoneyLabel.AutoSize = true;
            this.kitkatMoneyLabel.Location = new System.Drawing.Point(160, 16);
            this.kitkatMoneyLabel.Name = "kitkatMoneyLabel";
            this.kitkatMoneyLabel.Size = new System.Drawing.Size(70, 17);
            this.kitkatMoneyLabel.TabIndex = 1;
            this.kitkatMoneyLabel.Text = "₿0.00058";
            // 
            // kitkatLeftLabel
            // 
            this.kitkatLeftLabel.AutoSize = true;
            this.kitkatLeftLabel.Location = new System.Drawing.Point(160, 44);
            this.kitkatLeftLabel.Name = "kitkatLeftLabel";
            this.kitkatLeftLabel.Size = new System.Drawing.Size(80, 17);
            this.kitkatLeftLabel.TabIndex = 2;
            this.kitkatLeftLabel.Text = "Candy Left:";
            // 
            // kitkatAmountLeftLabel
            // 
            this.kitkatAmountLeftLabel.AutoSize = true;
            this.kitkatAmountLeftLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.kitkatAmountLeftLabel.Location = new System.Drawing.Point(170, 80);
            this.kitkatAmountLeftLabel.Name = "kitkatAmountLeftLabel";
            this.kitkatAmountLeftLabel.Size = new System.Drawing.Size(26, 19);
            this.kitkatAmountLeftLabel.TabIndex = 3;
            this.kitkatAmountLeftLabel.Text = "20";
            // 
            // totalPanal
            // 
            this.totalPanal.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.totalPanal.Controls.Add(this.totalAmountSalesLabel);
            this.totalPanal.Controls.Add(this.totalSalesLabel);
            this.totalPanal.Location = new System.Drawing.Point(289, 13);
            this.totalPanal.Name = "totalPanal";
            this.totalPanal.Size = new System.Drawing.Size(259, 127);
            this.totalPanal.TabIndex = 4;
            // 
            // totalSalesLabel
            // 
            this.totalSalesLabel.AutoSize = true;
            this.totalSalesLabel.Location = new System.Drawing.Point(92, 30);
            this.totalSalesLabel.Name = "totalSalesLabel";
            this.totalSalesLabel.Size = new System.Drawing.Size(83, 17);
            this.totalSalesLabel.TabIndex = 0;
            this.totalSalesLabel.Text = "Total Sales:";
            // 
            // totalAmountSalesLabel
            // 
            this.totalAmountSalesLabel.AutoSize = true;
            this.totalAmountSalesLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.totalAmountSalesLabel.Location = new System.Drawing.Point(109, 81);
            this.totalAmountSalesLabel.Name = "totalAmountSalesLabel";
            this.totalAmountSalesLabel.Size = new System.Drawing.Size(48, 19);
            this.totalAmountSalesLabel.TabIndex = 1;
            this.totalAmountSalesLabel.Text = "₿0.00";
            // 
            // Vend
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(606, 389);
            this.Controls.Add(this.totalPanal);
            this.Controls.Add(this.kitkatPanel);
            this.Name = "Vend";
            this.Text = "Vend";
            this.kitkatPanel.ResumeLayout(false);
            this.kitkatPanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.kitkatPictureBox)).EndInit();
            this.totalPanal.ResumeLayout(false);
            this.totalPanal.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel kitkatPanel;
        private System.Windows.Forms.Label kitkatAmountLeftLabel;
        private System.Windows.Forms.Label kitkatLeftLabel;
        private System.Windows.Forms.Label kitkatMoneyLabel;
        private System.Windows.Forms.PictureBox kitkatPictureBox;
        private System.Windows.Forms.Panel totalPanal;
        private System.Windows.Forms.Label totalAmountSalesLabel;
        private System.Windows.Forms.Label totalSalesLabel;
    }
}

