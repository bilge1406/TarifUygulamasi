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
            this.textBox1 = new System.Windows.Forms.TextBox();
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
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgList)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(100, 50);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(282, 20);
            this.textBox1.TabIndex = 1;
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
            this.dgList.Location = new System.Drawing.Point(0, 109);
            this.dgList.MultiSelect = false;
            this.dgList.Name = "dgList";
            this.dgList.ReadOnly = true;
            this.dgList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgList.Size = new System.Drawing.Size(1272, 642);
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
            this.panel1.Controls.Add(this.btnAra);
            this.panel1.Controls.Add(this.txtId);
            this.panel1.Controls.Add(this.textBox1);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 24);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1272, 85);
            this.panel1.TabIndex = 12;
            // 
            // btnAra
            // 
            this.btnAra.Location = new System.Drawing.Point(388, 47);
            this.btnAra.Name = "btnAra";
            this.btnAra.Size = new System.Drawing.Size(75, 23);
            this.btnAra.TabIndex = 6;
            this.btnAra.Text = "Ara";
            this.btnAra.UseVisualStyleBackColor = true;
            this.btnAra.Click += new System.EventHandler(this.btnAra_Click);
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
        private System.Windows.Forms.TextBox textBox1;
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
    }
}

