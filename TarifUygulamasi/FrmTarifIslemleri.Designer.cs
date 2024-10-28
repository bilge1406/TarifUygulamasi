namespace TarifUygulamasi
{
    partial class FrmTarifIslemleri
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
            this.dgList = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtTalimatlar = new System.Windows.Forms.RichTextBox();
            this.cmbKategori = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtHazirlanmaSuresi = new System.Windows.Forms.TextBox();
            this.btnKapat = new System.Windows.Forms.Button();
            this.btnKaydet = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.txtTarifAdi = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnMalzemeEkle = new System.Windows.Forms.Button();
            this.btnMalzemeSil = new System.Windows.Forms.Button();
            this.btnMalzemeGuncelle = new System.Windows.Forms.Button();
            this.cmbMalzemeler = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtMalzemeMiktari = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.btnYeniMalzemeOlustur = new System.Windows.Forms.Button();
            this.txtId = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgList)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgList
            // 
            this.dgList.AllowUserToAddRows = false;
            this.dgList.AllowUserToDeleteRows = false;
            this.dgList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgList.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgList.Location = new System.Drawing.Point(0, 469);
            this.dgList.MultiSelect = false;
            this.dgList.Name = "dgList";
            this.dgList.ReadOnly = true;
            this.dgList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgList.Size = new System.Drawing.Size(527, 316);
            this.dgList.TabIndex = 0;
            this.dgList.Click += new System.EventHandler(this.dgList_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txtId);
            this.panel1.Controls.Add(this.txtMalzemeMiktari);
            this.panel1.Controls.Add(this.label7);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.cmbMalzemeler);
            this.panel1.Controls.Add(this.txtTalimatlar);
            this.panel1.Controls.Add(this.cmbKategori);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.txtHazirlanmaSuresi);
            this.panel1.Controls.Add(this.btnKapat);
            this.panel1.Controls.Add(this.btnMalzemeGuncelle);
            this.panel1.Controls.Add(this.btnMalzemeSil);
            this.panel1.Controls.Add(this.btnYeniMalzemeOlustur);
            this.panel1.Controls.Add(this.btnMalzemeEkle);
            this.panel1.Controls.Add(this.btnKaydet);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.txtTarifAdi);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(527, 469);
            this.panel1.TabIndex = 1;
            // 
            // txtTalimatlar
            // 
            this.txtTalimatlar.Location = new System.Drawing.Point(156, 159);
            this.txtTalimatlar.Name = "txtTalimatlar";
            this.txtTalimatlar.Size = new System.Drawing.Size(344, 149);
            this.txtTalimatlar.TabIndex = 32;
            this.txtTalimatlar.Text = "";
            // 
            // cmbKategori
            // 
            this.cmbKategori.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.cmbKategori.FormattingEnabled = true;
            this.cmbKategori.Location = new System.Drawing.Point(156, 84);
            this.cmbKategori.Name = "cmbKategori";
            this.cmbKategori.Size = new System.Drawing.Size(344, 21);
            this.cmbKategori.TabIndex = 31;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.Location = new System.Drawing.Point(12, 9);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(473, 39);
            this.label5.TabIndex = 30;
            this.label5.Text = "Tarif Ekle/Güncelle/Görüntüle";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(22, 159);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 13);
            this.label3.TabIndex = 28;
            this.label3.Text = "Talimatlar";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(22, 54);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(46, 13);
            this.label4.TabIndex = 22;
            this.label4.Text = "Tarif Adı";
            // 
            // txtHazirlanmaSuresi
            // 
            this.txtHazirlanmaSuresi.Location = new System.Drawing.Point(156, 122);
            this.txtHazirlanmaSuresi.Margin = new System.Windows.Forms.Padding(2);
            this.txtHazirlanmaSuresi.Name = "txtHazirlanmaSuresi";
            this.txtHazirlanmaSuresi.Size = new System.Drawing.Size(344, 20);
            this.txtHazirlanmaSuresi.TabIndex = 27;
            // 
            // btnKapat
            // 
            this.btnKapat.Location = new System.Drawing.Point(426, 313);
            this.btnKapat.Margin = new System.Windows.Forms.Padding(2);
            this.btnKapat.Name = "btnKapat";
            this.btnKapat.Size = new System.Drawing.Size(74, 37);
            this.btnKapat.TabIndex = 20;
            this.btnKapat.Text = "Kapat";
            this.btnKapat.UseVisualStyleBackColor = true;
            this.btnKapat.Click += new System.EventHandler(this.btnKapat_Click);
            // 
            // btnKaydet
            // 
            this.btnKaydet.Location = new System.Drawing.Point(156, 313);
            this.btnKaydet.Margin = new System.Windows.Forms.Padding(2);
            this.btnKaydet.Name = "btnKaydet";
            this.btnKaydet.Size = new System.Drawing.Size(74, 37);
            this.btnKaydet.TabIndex = 21;
            this.btnKaydet.Text = "Kaydet";
            this.btnKaydet.UseVisualStyleBackColor = true;
            this.btnKaydet.Click += new System.EventHandler(this.btnKaydet_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(22, 122);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(91, 13);
            this.label2.TabIndex = 26;
            this.label2.Text = "Hazırlanma Süresi";
            // 
            // txtTarifAdi
            // 
            this.txtTarifAdi.Location = new System.Drawing.Point(156, 54);
            this.txtTarifAdi.Margin = new System.Windows.Forms.Padding(2);
            this.txtTarifAdi.Name = "txtTarifAdi";
            this.txtTarifAdi.Size = new System.Drawing.Size(344, 20);
            this.txtTarifAdi.TabIndex = 23;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 87);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(46, 13);
            this.label1.TabIndex = 24;
            this.label1.Text = "Kategori";
            // 
            // btnMalzemeEkle
            // 
            this.btnMalzemeEkle.Location = new System.Drawing.Point(156, 420);
            this.btnMalzemeEkle.Margin = new System.Windows.Forms.Padding(2);
            this.btnMalzemeEkle.Name = "btnMalzemeEkle";
            this.btnMalzemeEkle.Size = new System.Drawing.Size(116, 37);
            this.btnMalzemeEkle.TabIndex = 21;
            this.btnMalzemeEkle.Text = "Malzeme Ekle";
            this.btnMalzemeEkle.UseVisualStyleBackColor = true;
            this.btnMalzemeEkle.Click += new System.EventHandler(this.btnMalzemeEkle_Click);
            // 
            // btnMalzemeSil
            // 
            this.btnMalzemeSil.Location = new System.Drawing.Point(394, 420);
            this.btnMalzemeSil.Margin = new System.Windows.Forms.Padding(2);
            this.btnMalzemeSil.Name = "btnMalzemeSil";
            this.btnMalzemeSil.Size = new System.Drawing.Size(106, 37);
            this.btnMalzemeSil.TabIndex = 21;
            this.btnMalzemeSil.Text = "Malzeme Sil";
            this.btnMalzemeSil.UseVisualStyleBackColor = true;
            this.btnMalzemeSil.Click += new System.EventHandler(this.btnMalzemeSil_Click);
            // 
            // btnMalzemeGuncelle
            // 
            this.btnMalzemeGuncelle.Location = new System.Drawing.Point(276, 420);
            this.btnMalzemeGuncelle.Margin = new System.Windows.Forms.Padding(2);
            this.btnMalzemeGuncelle.Name = "btnMalzemeGuncelle";
            this.btnMalzemeGuncelle.Size = new System.Drawing.Size(106, 37);
            this.btnMalzemeGuncelle.TabIndex = 21;
            this.btnMalzemeGuncelle.Text = "Malzeme Güncelle";
            this.btnMalzemeGuncelle.UseVisualStyleBackColor = true;
            this.btnMalzemeGuncelle.Click += new System.EventHandler(this.btnMalzemeGuncelle_Click);
            // 
            // cmbMalzemeler
            // 
            this.cmbMalzemeler.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.cmbMalzemeler.FormattingEnabled = true;
            this.cmbMalzemeler.Location = new System.Drawing.Point(156, 362);
            this.cmbMalzemeler.Name = "cmbMalzemeler";
            this.cmbMalzemeler.Size = new System.Drawing.Size(344, 21);
            this.cmbMalzemeler.TabIndex = 33;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(22, 370);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(60, 13);
            this.label6.TabIndex = 34;
            this.label6.Text = "Malzemeler";
            // 
            // txtMalzemeMiktari
            // 
            this.txtMalzemeMiktari.Location = new System.Drawing.Point(156, 396);
            this.txtMalzemeMiktari.Margin = new System.Windows.Forms.Padding(2);
            this.txtMalzemeMiktari.Name = "txtMalzemeMiktari";
            this.txtMalzemeMiktari.Size = new System.Drawing.Size(344, 20);
            this.txtMalzemeMiktari.TabIndex = 36;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(22, 396);
            this.label7.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(83, 13);
            this.label7.TabIndex = 35;
            this.label7.Text = "Malzeme Miktarı";
            // 
            // btnYeniMalzemeOlustur
            // 
            this.btnYeniMalzemeOlustur.Location = new System.Drawing.Point(19, 420);
            this.btnYeniMalzemeOlustur.Margin = new System.Windows.Forms.Padding(2);
            this.btnYeniMalzemeOlustur.Name = "btnYeniMalzemeOlustur";
            this.btnYeniMalzemeOlustur.Size = new System.Drawing.Size(116, 37);
            this.btnYeniMalzemeOlustur.TabIndex = 21;
            this.btnYeniMalzemeOlustur.Text = "Yeni Malzeme Oluştur";
            this.btnYeniMalzemeOlustur.UseVisualStyleBackColor = true;
            this.btnYeniMalzemeOlustur.Click += new System.EventHandler(this.btnYeniMalzemeOlustur_Click);
            // 
            // txtId
            // 
            this.txtId.Location = new System.Drawing.Point(19, 242);
            this.txtId.Margin = new System.Windows.Forms.Padding(2);
            this.txtId.Name = "txtId";
            this.txtId.Size = new System.Drawing.Size(77, 20);
            this.txtId.TabIndex = 37;
            this.txtId.Visible = false;
            // 
            // FrmTarifIslemleri
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(527, 785);
            this.Controls.Add(this.dgList);
            this.Controls.Add(this.panel1);
            this.Name = "FrmTarifIslemleri";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmTarifIslemleri";
            this.Load += new System.EventHandler(this.FrmTarifIslemleri_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgList)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgList;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtHazirlanmaSuresi;
        private System.Windows.Forms.Button btnKapat;
        private System.Windows.Forms.Button btnKaydet;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtTarifAdi;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbKategori;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.RichTextBox txtTalimatlar;
        private System.Windows.Forms.Button btnMalzemeGuncelle;
        private System.Windows.Forms.Button btnMalzemeSil;
        private System.Windows.Forms.Button btnMalzemeEkle;
        private System.Windows.Forms.TextBox txtMalzemeMiktari;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cmbMalzemeler;
        private System.Windows.Forms.Button btnYeniMalzemeOlustur;
        private System.Windows.Forms.TextBox txtId;
    }
}