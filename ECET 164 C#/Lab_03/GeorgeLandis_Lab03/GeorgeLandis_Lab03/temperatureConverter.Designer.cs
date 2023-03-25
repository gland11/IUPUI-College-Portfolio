namespace GeorgeLandis_Lab03
{
    partial class temperatureConverter
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
            this.degreesWantedConvLabel = new System.Windows.Forms.Label();
            this.operatorDegreesTextBox = new System.Windows.Forms.TextBox();
            this.convertToFahrBtn = new System.Windows.Forms.Button();
            this.convertToCelsBtn = new System.Windows.Forms.Button();
            this.clrBtn = new System.Windows.Forms.Button();
            this.extBtn = new System.Windows.Forms.Button();
            this.operatorDegreesLabel = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // degreesWantedConvLabel
            // 
            this.degreesWantedConvLabel.AutoSize = true;
            this.degreesWantedConvLabel.Location = new System.Drawing.Point(12, 9);
            this.degreesWantedConvLabel.Name = "degreesWantedConvLabel";
            this.degreesWantedConvLabel.Size = new System.Drawing.Size(188, 17);
            this.degreesWantedConvLabel.TabIndex = 0;
            this.degreesWantedConvLabel.Text = "Degrees Wanted Converted:";
            // 
            // operatorDegreesTextBox
            // 
            this.operatorDegreesTextBox.Location = new System.Drawing.Point(206, 9);
            this.operatorDegreesTextBox.Name = "operatorDegreesTextBox";
            this.operatorDegreesTextBox.Size = new System.Drawing.Size(100, 22);
            this.operatorDegreesTextBox.TabIndex = 1;
            // 
            // convertToFahrBtn
            // 
            this.convertToFahrBtn.Location = new System.Drawing.Point(15, 37);
            this.convertToFahrBtn.Name = "convertToFahrBtn";
            this.convertToFahrBtn.Size = new System.Drawing.Size(120, 63);
            this.convertToFahrBtn.TabIndex = 2;
            this.convertToFahrBtn.Text = "Convert to Fahrenheit";
            this.convertToFahrBtn.UseVisualStyleBackColor = true;
            this.convertToFahrBtn.Click += new System.EventHandler(this.convertToFahrBtn_Click);
            // 
            // convertToCelsBtn
            // 
            this.convertToCelsBtn.Location = new System.Drawing.Point(141, 37);
            this.convertToCelsBtn.Name = "convertToCelsBtn";
            this.convertToCelsBtn.Size = new System.Drawing.Size(120, 63);
            this.convertToCelsBtn.TabIndex = 3;
            this.convertToCelsBtn.Text = "Convert to Celsius";
            this.convertToCelsBtn.UseVisualStyleBackColor = true;
            this.convertToCelsBtn.Click += new System.EventHandler(this.convertToCelsBtn_Click);
            // 
            // clrBtn
            // 
            this.clrBtn.Location = new System.Drawing.Point(274, 37);
            this.clrBtn.Name = "clrBtn";
            this.clrBtn.Size = new System.Drawing.Size(75, 23);
            this.clrBtn.TabIndex = 4;
            this.clrBtn.Text = "Clear";
            this.clrBtn.UseVisualStyleBackColor = true;
            this.clrBtn.Click += new System.EventHandler(this.clrBtn_Click);
            // 
            // extBtn
            // 
            this.extBtn.Location = new System.Drawing.Point(274, 75);
            this.extBtn.Name = "extBtn";
            this.extBtn.Size = new System.Drawing.Size(75, 23);
            this.extBtn.TabIndex = 5;
            this.extBtn.Text = "Exit";
            this.extBtn.UseVisualStyleBackColor = true;
            this.extBtn.Click += new System.EventHandler(this.extBtn_Click);
            // 
            // operatorDegreesLabel
            // 
            this.operatorDegreesLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.operatorDegreesLabel.Location = new System.Drawing.Point(15, 116);
            this.operatorDegreesLabel.Name = "operatorDegreesLabel";
            this.operatorDegreesLabel.Size = new System.Drawing.Size(464, 46);
            this.operatorDegreesLabel.TabIndex = 6;
            // 
            // temperatureConverter
            // 
            this.AcceptButton = this.convertToFahrBtn;
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.extBtn;
            this.ClientSize = new System.Drawing.Size(491, 184);
            this.Controls.Add(this.operatorDegreesLabel);
            this.Controls.Add(this.extBtn);
            this.Controls.Add(this.clrBtn);
            this.Controls.Add(this.convertToCelsBtn);
            this.Controls.Add(this.convertToFahrBtn);
            this.Controls.Add(this.operatorDegreesTextBox);
            this.Controls.Add(this.degreesWantedConvLabel);
            this.Name = "temperatureConverter";
            this.Text = "Temperature Converter";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label degreesWantedConvLabel;
        private System.Windows.Forms.TextBox operatorDegreesTextBox;
        private System.Windows.Forms.Button convertToFahrBtn;
        private System.Windows.Forms.Button convertToCelsBtn;
        private System.Windows.Forms.Button clrBtn;
        private System.Windows.Forms.Button extBtn;
        private System.Windows.Forms.Label operatorDegreesLabel;
    }
}

