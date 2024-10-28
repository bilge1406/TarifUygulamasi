namespace TarifUygulamasi
{
    partial class FrmAnaSayfa
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
            this.txtAra = new System.Windows.Forms.TextBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.menüToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tariflerToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tarifSilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tarifDüzenleToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.dgList = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtId = new System.Windows.Forms.TextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnAra = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.cmbMalzemeAdi1 = new System.Windows.Forms.ComboBox();
            this.cmbMalzemeAdi2 = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cmbMalzemeAdi3 = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgList)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtAra
            // 
            this.txtAra.Location = new System.Drawing.Point(149, 50);
            this.txtAra.Name = "txtAra";
            this.txtAra.Size = new System.Drawing.Size(282, 20);
            this.txtAra.TabIndex = 1;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menüToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1272, 24);
            this.menuStrip1.TabIndex = 2;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // menüToolStripMenuItem
            // 
            this.menüToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tariflerToolStripMenuItem,
            this.tarifSilToolStripMenuItem,
            this.tarifDüzenleToolStripMenuItem});
            this.menüToolStripMenuItem.Name = "menüToolStripMenuItem";
            this.menüToolStripMenuItem.Size = new System.Drawing.Size(50, 20);
            this.menüToolStripMenuItem.Text = "Menü";
            // 
            // tariflerToolStripMenuItem
            // 
            this.tariflerToolStripMenuItem.Name = "tariflerToolStripMenuItem";
            this.tariflerToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.tariflerToolStripMenuItem.Text = "Tarif Ekle";
            this.tariflerToolStripMenuItem.Click += new System.EventHandler(this.tariflerToolStripMenuItem_Click);
            // 
            // tarifSilToolStripMenuItem
            // 
            this.tarifSilToolStripMenuItem.Name = "tarifSilToolStripMenuItem";
            this.tarifSilToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.tarifSilToolStripMenuItem.Text = "Tarif Sil";
            this.tarifSilToolStripMenuItem.Click += new System.EventHandler(this.tarifSilToolStripMenuItem_Click);
            // 
            // tarifDüzenleToolStripMenuItem
            // 
            this.tarifDüzenleToolStripMenuItem.Name = "tarifDüzenleToolStripMenuItem";
            this.tarifDüzenleToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.tarifDüzenleToolStripMenuItem.Text = "Tarif Düzenle";
            this.tarifDüzenleToolStripMenuItem.Click += new System.EventHandler(this.tarifDüzenleToolStripMenuItem_Click);
            // 
            // dgList
            // 
            this.dgList.AllowUserToAddRows = false;
            this.dgList.AllowUserToDeleteRows = false;
            this.dgList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgList.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgList.Location = new System.Drawing.Point(0, 173);
            this.dgList.MultiSelect = false;
            this.dgList.Name = "dgList";
            this.dgList.ReadOnly = true;
            this.dgList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgList.Size = new System.Drawing.Size(1272, 578);
            this.dgList.TabIndex = 3;
            this.dgList.Click += new System.EventHandler(this.dgList_Click);
            this.dgList.DoubleClick += new System.EventHandler(this.dgList_DoubleClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(3, 50);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(79, 24);
            this.label1.TabIndex = 4;
            this.label1.Text = "Tarif Adı";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(566, 2);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(126, 39);
            this.label2.TabIndex = 5;
            this.label2.Text = "Tarifler";
            // 
            // txtId
            // 
            this.txtId.Location = new System.Drawing.Point(1184, 11);
            this.txtId.Margin = new System.Windows.Forms.Padding(2);
            this.txtId.Name = "txtId";
            this.txtId.Size = new System.Drawing.Size(77, 20);
            this.txtId.TabIndex = 11;
            this.txtId.Visible = false;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.cmbMalzemeAdi3);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.cmbMalzemeAdi2);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.cmbMalzemeAdi1);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.btnAra);
            this.panel1.Controls.Add(this.txtId);
            this.panel1.Controls.Add(this.txtAra);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 24);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1272, 149);
            this.panel1.TabIndex = 12;
            // 
            // btnAra
            // 
            this.btnAra.Location = new System.Drawing.Point(995, 47);
            this.btnAra.Name = "btnAra";
            this.btnAra.Size = new System.Drawing.Size(110, 85);
            this.btnAra.TabIndex = 6;
            this.btnAra.Text = "Ara";
            this.btnAra.UseVisualStyleBackColor = true;
            this.btnAra.Click += new System.EventHandler(this.btnAra_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.Location = new System.Drawing.Point(496, 50);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(140, 24);
            this.label3.TabIndex = 13;
            this.label3.Text = "1. Malzeme Adı";
            // 
            // cmbMalzemeAdi1
            // 
            this.cmbMalzemeAdi1.FormattingEnabled = true;
            this.cmbMalzemeAdi1.Location = new System.Drawing.Point(642, 49);
            this.cmbMalzemeAdi1.Name = "cmbMalzemeAdi1";
            this.cmbMalzemeAdi1.Size = new System.Drawing.Size(282, 21);
            this.cmbMalzemeAdi1.TabIndex = 15;
            // 
            // cmbMalzemeAdi2
            // 
            this.cmbMalzemeAdi2.FormattingEnabled = true;
            this.cmbMalzemeAdi2.Location = new System.Drawing.Point(642, 80);
            this.cmbMalzemeAdi2.Name = "cmbMalzemeAdi2";
            this.cmbMalzemeAdi2.Size = new System.Drawing.Size(282, 21);
            this.cmbMalzemeAdi2.TabIndex = 17;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.Location = new System.Drawing.Point(496, 81);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(140, 24);
            this.label4.TabIndex = 16;
            this.label4.Text = "2. Malzeme Adı";
            // 
            // cmbMalzemeAdi3
            // 
            this.cmbMalzemeAdi3.FormattingEnabled = true;
            this.cmbMalzemeAdi3.Location = new System.Drawing.Point(642, 107);
            this.cmbMalzemeAdi3.Name = "cmbMalzemeAdi3";
            this.cmbMalzemeAdi3.Size = new System.Drawing.Size(282, 21);
            this.cmbMalzemeAdi3.TabIndex = 19;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.Location = new System.Drawing.Point(496, 108);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(140, 24);
            this.label5.TabIndex = 18;
            this.label5.Text = "3. Malzeme Adı";
            // 
            // FrmAnaSayfa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1272, 751);
            this.Controls.Add(this.dgList);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmAnaSayfa";
            this.Text = "Tarif Sistemi";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgList)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox txtAra;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem menüToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tariflerToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tarifSilToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tarifDüzenleToolStripMenuItem;
        private System.Windows.Forms.DataGridView dgList;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtId;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnAra;
        private System.Windows.Forms.ComboBox cmbMalzemeAdi3;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cmbMalzemeAdi2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cmbMalzemeAdi1;
        private System.Windows.Forms.Label label3;
    }
}

