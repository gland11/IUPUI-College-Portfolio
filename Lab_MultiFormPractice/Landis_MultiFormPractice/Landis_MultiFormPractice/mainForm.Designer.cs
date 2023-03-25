namespace Landis_MultiFormPractice
{
    partial class mainForm
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.bananaRadioButton = new System.Windows.Forms.RadioButton();
            this.popcornRadioButton = new System.Windows.Forms.RadioButton();
            this.muffinRadioButton = new System.Windows.Forms.RadioButton();
            this.displayButton = new System.Windows.Forms.Button();
            this.exitButton = new System.Windows.Forms.Button();
            this.mayonnaiseRadioButton = new System.Windows.Forms.RadioButton();
            this.cantaloupeRadioButton = new System.Windows.Forms.RadioButton();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cantaloupeRadioButton);
            this.groupBox1.Controls.Add(this.mayonnaiseRadioButton);
            this.groupBox1.Controls.Add(this.muffinRadioButton);
            this.groupBox1.Controls.Add(this.popcornRadioButton);
            this.groupBox1.Controls.Add(this.bananaRadioButton);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(332, 160);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Select a Food";
            // 
            // bananaRadioButton
            // 
            this.bananaRadioButton.AutoSize = true;
            this.bananaRadioButton.Location = new System.Drawing.Point(19, 21);
            this.bananaRadioButton.Name = "bananaRadioButton";
            this.bananaRadioButton.Size = new System.Drawing.Size(89, 21);
            this.bananaRadioButton.TabIndex = 1;
            this.bananaRadioButton.TabStop = true;
            this.bananaRadioButton.Text = "1 banana";
            this.bananaRadioButton.UseVisualStyleBackColor = true;
            // 
            // popcornRadioButton
            // 
            this.popcornRadioButton.AutoSize = true;
            this.popcornRadioButton.Location = new System.Drawing.Point(19, 48);
            this.popcornRadioButton.Name = "popcornRadioButton";
            this.popcornRadioButton.Size = new System.Drawing.Size(209, 21);
            this.popcornRadioButton.TabIndex = 2;
            this.popcornRadioButton.TabStop = true;
            this.popcornRadioButton.Text = "1 cup of air-popped popcorn";
            this.popcornRadioButton.UseVisualStyleBackColor = true;
            // 
            // muffinRadioButton
            // 
            this.muffinRadioButton.AutoSize = true;
            this.muffinRadioButton.Location = new System.Drawing.Point(19, 73);
            this.muffinRadioButton.Name = "muffinRadioButton";
            this.muffinRadioButton.Size = new System.Drawing.Size(179, 21);
            this.muffinRadioButton.TabIndex = 3;
            this.muffinRadioButton.TabStop = true;
            this.muffinRadioButton.Text = "1 large blueberry muffin";
            this.muffinRadioButton.UseVisualStyleBackColor = true;
            // 
            // displayButton
            // 
            this.displayButton.Location = new System.Drawing.Point(51, 198);
            this.displayButton.Name = "displayButton";
            this.displayButton.Size = new System.Drawing.Size(108, 42);
            this.displayButton.TabIndex = 6;
            this.displayButton.Text = "Display Food Facts";
            this.displayButton.UseVisualStyleBackColor = true;
            this.displayButton.Click += new System.EventHandler(this.displayButton_Click);
            // 
            // exitButton
            // 
            this.exitButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.exitButton.Location = new System.Drawing.Point(202, 198);
            this.exitButton.Name = "exitButton";
            this.exitButton.Size = new System.Drawing.Size(108, 42);
            this.exitButton.TabIndex = 7;
            this.exitButton.Text = "Exit";
            this.exitButton.UseVisualStyleBackColor = true;
            this.exitButton.Click += new System.EventHandler(this.exitButton_Click);
            // 
            // mayonnaiseRadioButton
            // 
            this.mayonnaiseRadioButton.AutoSize = true;
            this.mayonnaiseRadioButton.Location = new System.Drawing.Point(19, 100);
            this.mayonnaiseRadioButton.Name = "mayonnaiseRadioButton";
            this.mayonnaiseRadioButton.Size = new System.Drawing.Size(160, 21);
            this.mayonnaiseRadioButton.TabIndex = 4;
            this.mayonnaiseRadioButton.TabStop = true;
            this.mayonnaiseRadioButton.Text = "1 cup of mayonnaise";
            this.mayonnaiseRadioButton.UseVisualStyleBackColor = true;
            // 
            // cantaloupeRadioButton
            // 
            this.cantaloupeRadioButton.AutoSize = true;
            this.cantaloupeRadioButton.Location = new System.Drawing.Point(19, 122);
            this.cantaloupeRadioButton.Name = "cantaloupeRadioButton";
            this.cantaloupeRadioButton.Size = new System.Drawing.Size(302, 21);
            this.cantaloupeRadioButton.TabIndex = 5;
            this.cantaloupeRadioButton.TabStop = true;
            this.cantaloupeRadioButton.Text = "1 medium (about 5in dia)(552g) cantaloupe";
            this.cantaloupeRadioButton.UseVisualStyleBackColor = true;
            // 
            // mainForm
            // 
            this.AcceptButton = this.displayButton;
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.exitButton;
            this.ClientSize = new System.Drawing.Size(356, 252);
            this.Controls.Add(this.exitButton);
            this.Controls.Add(this.displayButton);
            this.Controls.Add(this.groupBox1);
            this.Name = "mainForm";
            this.Text = "Food Facts";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton muffinRadioButton;
        private System.Windows.Forms.RadioButton popcornRadioButton;
        private System.Windows.Forms.RadioButton bananaRadioButton;
        private System.Windows.Forms.Button displayButton;
        private System.Windows.Forms.Button exitButton;
        private System.Windows.Forms.RadioButton cantaloupeRadioButton;
        private System.Windows.Forms.RadioButton mayonnaiseRadioButton;
    }
}

