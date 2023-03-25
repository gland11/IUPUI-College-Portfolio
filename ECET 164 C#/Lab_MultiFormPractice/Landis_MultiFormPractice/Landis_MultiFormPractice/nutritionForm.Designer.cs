namespace Landis_MultiFormPractice
{
    partial class nutritionForm
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
            this.foodLabel = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.calorieLabel = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.fatLabel = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.carbLabel = new System.Windows.Forms.Label();
            this.closeButton = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(55, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(40, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Food";
            // 
            // foodLabel
            // 
            this.foodLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.foodLabel.Location = new System.Drawing.Point(113, 26);
            this.foodLabel.Name = "foodLabel";
            this.foodLabel.Size = new System.Drawing.Size(315, 23);
            this.foodLabel.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(49, 64);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(59, 17);
            this.label3.TabIndex = 2;
            this.label3.Text = "Calories";
            // 
            // calorieLabel
            // 
            this.calorieLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.calorieLabel.Location = new System.Drawing.Point(114, 64);
            this.calorieLabel.Name = "calorieLabel";
            this.calorieLabel.Size = new System.Drawing.Size(314, 23);
            this.calorieLabel.TabIndex = 3;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(34, 98);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(74, 17);
            this.label5.TabIndex = 4;
            this.label5.Text = "Fat Grams";
            // 
            // fatLabel
            // 
            this.fatLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.fatLabel.Location = new System.Drawing.Point(114, 98);
            this.fatLabel.Name = "fatLabel";
            this.fatLabel.Size = new System.Drawing.Size(314, 23);
            this.fatLabel.TabIndex = 5;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(24, 136);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(84, 17);
            this.label7.TabIndex = 6;
            this.label7.Text = "Carb Grams";
            // 
            // carbLabel
            // 
            this.carbLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.carbLabel.Location = new System.Drawing.Point(113, 130);
            this.carbLabel.Name = "carbLabel";
            this.carbLabel.Size = new System.Drawing.Size(315, 23);
            this.carbLabel.TabIndex = 7;
            // 
            // closeButton
            // 
            this.closeButton.Location = new System.Drawing.Point(221, 179);
            this.closeButton.Name = "closeButton";
            this.closeButton.Size = new System.Drawing.Size(75, 23);
            this.closeButton.TabIndex = 8;
            this.closeButton.Text = "Close";
            this.closeButton.UseVisualStyleBackColor = true;
            this.closeButton.Click += new System.EventHandler(this.closeButton_Click);
            // 
            // nutritionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.closeButton;
            this.ClientSize = new System.Drawing.Size(440, 214);
            this.Controls.Add(this.closeButton);
            this.Controls.Add(this.carbLabel);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.fatLabel);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.calorieLabel);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.foodLabel);
            this.Controls.Add(this.label1);
            this.Name = "nutritionForm";
            this.Text = "Nutrition Info";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button closeButton;
        internal System.Windows.Forms.Label foodLabel;
        internal System.Windows.Forms.Label calorieLabel;
        internal System.Windows.Forms.Label fatLabel;
        internal System.Windows.Forms.Label carbLabel;
    }
}