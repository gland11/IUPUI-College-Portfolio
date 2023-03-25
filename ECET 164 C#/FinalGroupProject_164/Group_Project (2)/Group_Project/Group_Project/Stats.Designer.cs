namespace Group_Project
{
    partial class Stats
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
            this.StatsClose_Button = new System.Windows.Forms.Button();
            this.Stats_Label = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // StatsClose_Button
            // 
            this.StatsClose_Button.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.StatsClose_Button.Location = new System.Drawing.Point(816, 783);
            this.StatsClose_Button.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.StatsClose_Button.Name = "StatsClose_Button";
            this.StatsClose_Button.Size = new System.Drawing.Size(202, 72);
            this.StatsClose_Button.TabIndex = 0;
            this.StatsClose_Button.Text = "Close";
            this.StatsClose_Button.UseVisualStyleBackColor = true;
            this.StatsClose_Button.Click += new System.EventHandler(this.button1_Click);
            // 
            // Stats_Label
            // 
            this.Stats_Label.AutoSize = true;
            this.Stats_Label.Location = new System.Drawing.Point(60, 108);
            this.Stats_Label.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Stats_Label.Name = "Stats_Label";
            this.Stats_Label.Size = new System.Drawing.Size(0, 32);
            this.Stats_Label.TabIndex = 1;
            // 
            // Stats
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(16F, 31F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.StatsClose_Button;
            this.ClientSize = new System.Drawing.Size(1088, 899);
            this.Controls.Add(this.Stats_Label);
            this.Controls.Add(this.StatsClose_Button);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "Stats";
            this.Text = "Stats";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button StatsClose_Button;
        internal System.Windows.Forms.Label Stats_Label;
    }
}