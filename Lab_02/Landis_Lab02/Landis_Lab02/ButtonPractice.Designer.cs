namespace Landis_Lab02
{
    partial class ButtonPractice
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ButtonPractice));
            this.welcomeBtn = new System.Windows.Forms.Button();
            this.myNameBtn = new System.Windows.Forms.Button();
            this.dogNameBtn = new System.Windows.Forms.Button();
            this.clearTextBtn = new System.Windows.Forms.Button();
            this.showPicturebtn = new System.Windows.Forms.Button();
            this.hidePictureBtn = new System.Windows.Forms.Button();
            this.exitBtn = new System.Windows.Forms.Button();
            this.outputLabel = new System.Windows.Forms.Label();
            this.dogLabel = new System.Windows.Forms.Label();
            this.myPicture = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.myPicture)).BeginInit();
            this.SuspendLayout();
            // 
            // welcomeBtn
            // 
            this.welcomeBtn.Font = new System.Drawing.Font("Perpetua", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.welcomeBtn.Location = new System.Drawing.Point(150, 6);
            this.welcomeBtn.Name = "welcomeBtn";
            this.welcomeBtn.Size = new System.Drawing.Size(287, 32);
            this.welcomeBtn.TabIndex = 0;
            this.welcomeBtn.Text = "Display Welcome Message";
            this.welcomeBtn.UseVisualStyleBackColor = true;
            this.welcomeBtn.Click += new System.EventHandler(this.welcomeBtn_Click);
            // 
            // myNameBtn
            // 
            this.myNameBtn.Font = new System.Drawing.Font("Perpetua", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.myNameBtn.Location = new System.Drawing.Point(19, 91);
            this.myNameBtn.Name = "myNameBtn";
            this.myNameBtn.Size = new System.Drawing.Size(185, 41);
            this.myNameBtn.TabIndex = 3;
            this.myNameBtn.Text = "Display My Name";
            this.myNameBtn.UseVisualStyleBackColor = true;
            this.myNameBtn.Click += new System.EventHandler(this.myNameBtn_Click);
            // 
            // dogNameBtn
            // 
            this.dogNameBtn.Font = new System.Drawing.Font("Perpetua", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dogNameBtn.Location = new System.Drawing.Point(19, 44);
            this.dogNameBtn.Name = "dogNameBtn";
            this.dogNameBtn.Size = new System.Drawing.Size(185, 41);
            this.dogNameBtn.TabIndex = 1;
            this.dogNameBtn.Text = "Display Dog Name";
            this.dogNameBtn.UseVisualStyleBackColor = true;
            this.dogNameBtn.Click += new System.EventHandler(this.dogNameBtn_Click);
            // 
            // clearTextBtn
            // 
            this.clearTextBtn.Font = new System.Drawing.Font("Perpetua", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.clearTextBtn.Location = new System.Drawing.Point(19, 155);
            this.clearTextBtn.Name = "clearTextBtn";
            this.clearTextBtn.Size = new System.Drawing.Size(153, 41);
            this.clearTextBtn.TabIndex = 5;
            this.clearTextBtn.Text = "Clear";
            this.clearTextBtn.UseVisualStyleBackColor = true;
            this.clearTextBtn.Click += new System.EventHandler(this.clearTextBtn_Click);
            // 
            // showPicturebtn
            // 
            this.showPicturebtn.Font = new System.Drawing.Font("Perpetua", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.showPicturebtn.Location = new System.Drawing.Point(19, 228);
            this.showPicturebtn.Name = "showPicturebtn";
            this.showPicturebtn.Size = new System.Drawing.Size(153, 41);
            this.showPicturebtn.TabIndex = 6;
            this.showPicturebtn.Text = "Show Picture";
            this.showPicturebtn.UseVisualStyleBackColor = true;
            this.showPicturebtn.Click += new System.EventHandler(this.showPicturebtn_Click);
            // 
            // hidePictureBtn
            // 
            this.hidePictureBtn.Font = new System.Drawing.Font("Perpetua", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.hidePictureBtn.Location = new System.Drawing.Point(19, 286);
            this.hidePictureBtn.Name = "hidePictureBtn";
            this.hidePictureBtn.Size = new System.Drawing.Size(153, 41);
            this.hidePictureBtn.TabIndex = 7;
            this.hidePictureBtn.Text = "Hide Picture";
            this.hidePictureBtn.UseVisualStyleBackColor = true;
            this.hidePictureBtn.Click += new System.EventHandler(this.hidePictureBtn_Click);
            // 
            // exitBtn
            // 
            this.exitBtn.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.exitBtn.Font = new System.Drawing.Font("Perpetua", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.exitBtn.Location = new System.Drawing.Point(19, 368);
            this.exitBtn.Name = "exitBtn";
            this.exitBtn.Size = new System.Drawing.Size(153, 41);
            this.exitBtn.TabIndex = 8;
            this.exitBtn.Text = "Exit";
            this.exitBtn.UseVisualStyleBackColor = true;
            this.exitBtn.Click += new System.EventHandler(this.exitBtn_Click);
            // 
            // outputLabel
            // 
            this.outputLabel.BackColor = System.Drawing.SystemColors.Window;
            this.outputLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.outputLabel.Font = new System.Drawing.Font("Perpetua", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.outputLabel.Location = new System.Drawing.Point(210, 91);
            this.outputLabel.Name = "outputLabel";
            this.outputLabel.Size = new System.Drawing.Size(121, 41);
            this.outputLabel.TabIndex = 4;
            this.outputLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // dogLabel
            // 
            this.dogLabel.BackColor = System.Drawing.SystemColors.Window;
            this.dogLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.dogLabel.Font = new System.Drawing.Font("Perpetua", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dogLabel.Location = new System.Drawing.Point(210, 44);
            this.dogLabel.Name = "dogLabel";
            this.dogLabel.Size = new System.Drawing.Size(121, 41);
            this.dogLabel.TabIndex = 2;
            this.dogLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // myPicture
            // 
            this.myPicture.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.myPicture.Image = ((System.Drawing.Image)(resources.GetObject("myPicture.Image")));
            this.myPicture.Location = new System.Drawing.Point(349, 44);
            this.myPicture.Name = "myPicture";
            this.myPicture.Size = new System.Drawing.Size(446, 386);
            this.myPicture.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.myPicture.TabIndex = 9;
            this.myPicture.TabStop = false;
            this.myPicture.Visible = false;
            // 
            // ButtonPractice
            // 
            this.AcceptButton = this.clearTextBtn;
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Cyan;
            this.CancelButton = this.exitBtn;
            this.ClientSize = new System.Drawing.Size(807, 432);
            this.Controls.Add(this.myPicture);
            this.Controls.Add(this.dogLabel);
            this.Controls.Add(this.outputLabel);
            this.Controls.Add(this.exitBtn);
            this.Controls.Add(this.hidePictureBtn);
            this.Controls.Add(this.showPicturebtn);
            this.Controls.Add(this.clearTextBtn);
            this.Controls.Add(this.dogNameBtn);
            this.Controls.Add(this.myNameBtn);
            this.Controls.Add(this.welcomeBtn);
            this.Name = "ButtonPractice";
            this.Text = "Practice";
            ((System.ComponentModel.ISupportInitialize)(this.myPicture)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button welcomeBtn;
        private System.Windows.Forms.Button myNameBtn;
        private System.Windows.Forms.Button dogNameBtn;
        private System.Windows.Forms.Button clearTextBtn;
        private System.Windows.Forms.Button showPicturebtn;
        private System.Windows.Forms.Button hidePictureBtn;
        private System.Windows.Forms.Button exitBtn;
        private System.Windows.Forms.Label outputLabel;
        private System.Windows.Forms.Label dogLabel;
        private System.Windows.Forms.PictureBox myPicture;
    }
}

