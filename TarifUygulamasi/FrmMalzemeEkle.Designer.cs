namespace TarifUygulamasi
{
    partial class FrmMalzemeEkle
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
            this.btnKaydet = new System.Windows.Forms.Button();
            this.txtMalzemeAdi = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtToplamMiktar = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtMalzemeBirimi = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtBirimFiyati = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btnIptal = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnKaydet
            // 
            this.btnKaydet.Location = new System.Drawing.Point(145, 209);
            this.btnKaydet.Margin = new System.Windows.Forms.Padding(2);
            this.btnKaydet.Name = "btnKaydet";
            this.btnKaydet.Size = new System.Drawing.Size(74, 37);
            this.btnKaydet.TabIndex = 9;
            this.btnKaydet.Text = "Kaydet";
            this.btnKaydet.UseVisualStyleBackColor = true;
            this.btnKaydet.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // txtMalzemeAdi
            // 
            this.txtMalzemeAdi.Location = new System.Drawing.Point(145, 70);
            this.txtMalzemeAdi.Margin = new System.Windows.Forms.Padding(2);
            this.txtMalzemeAdi.Name = "txtMalzemeAdi";
            this.txtMalzemeAdi.Size = new System.Drawing.Size(162, 20);
            this.txtMalzemeAdi.TabIndex = 13;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(11, 70);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(67, 13);
            this.label4.TabIndex = 12;
            this.label4.Text = "Malzeme Adı";
            // 
            // txtToplamMiktar
            // 
            this.txtToplamMiktar.Location = new System.Drawing.Point(145, 103);
            this.txtToplamMiktar.Margin = new System.Windows.Forms.Padding(2);
            this.txtToplamMiktar.Name = "txtToplamMiktar";
            this.txtToplamMiktar.Size = new System.Drawing.Size(162, 20);
            this.txtToplamMiktar.TabIndex = 15;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(11, 103);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 13);
            this.label1.TabIndex = 14;
            this.label1.Text = "Toplam Miktar";
            // 
            // txtMalzemeBirimi
            // 
            this.txtMalzemeBirimi.Location = new System.Drawing.Point(145, 138);
            this.txtMalzemeBirimi.Margin = new System.Windows.Forms.Padding(2);
            this.txtMalzemeBirimi.Name = "txtMalzemeBirimi";
            this.txtMalzemeBirimi.Size = new System.Drawing.Size(162, 20);
            this.txtMalzemeBirimi.TabIndex = 17;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(11, 138);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(76, 13);
            this.label2.TabIndex = 16;
            this.label2.Text = "Malzeme Birimi";
            // 
            // txtBirimFiyati
            // 
            this.txtBirimFiyati.Location = new System.Drawing.Point(145, 175);
            this.txtBirimFiyati.Margin = new System.Windows.Forms.Padding(2);
            this.txtBirimFiyati.Name = "txtBirimFiyati";
            this.txtBirimFiyati.Size = new System.Drawing.Size(162, 20);
            this.txtBirimFiyati.TabIndex = 19;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(11, 175);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 18;
            this.label3.Text = "Birim Fiyatı";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.Location = new System.Drawing.Point(12, 9);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(236, 39);
            this.label5.TabIndex = 20;
            this.label5.Text = "Malzeme Ekle";
            // 
            // btnIptal
            // 
            this.btnIptal.Location = new System.Drawing.Point(233, 209);
            this.btnIptal.Margin = new System.Windows.Forms.Padding(2);
            this.btnIptal.Name = "btnIptal";
            this.btnIptal.Size = new System.Drawing.Size(74, 37);
            this.btnIptal.TabIndex = 9;
            this.btnIptal.Text = "İptal";
            this.btnIptal.UseVisualStyleBackColor = true;
            this.btnIptal.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // FrmMalzemeEkle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(322, 257);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtBirimFiyati);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtMalzemeBirimi);
            this.Controls.Add(this.btnIptal);
            this.Controls.Add(this.btnKaydet);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtMalzemeAdi);
            this.Controls.Add(this.txtToplamMiktar);
            this.Controls.Add(this.label1);
            this.Name = "FrmMalzemeEkle";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "FrmMalzemeEkle";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnKaydet;
        private System.Windows.Forms.TextBox txtBirimFiyati;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtMalzemeBirimi;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtToplamMiktar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtMalzemeAdi;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnIptal;
    }
}