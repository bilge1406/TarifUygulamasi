using System;
using System.Windows.Forms;

namespace TarifUygulamasi
{
    public partial class FrmAnaSayfa : Form
    {
        public FrmAnaSayfa()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            FormuYenile();
        }

        private void FormuYenile()
        {
            MalzemeYenile(cmbMalzemeAdi1);
            MalzemeYenile(cmbMalzemeAdi2);
            MalzemeYenile(cmbMalzemeAdi3);

            dgList.DataSource = null;
            dgList.DataSource = VeritabaniIslemleri.ListeGetir("SELECT t.[TarifID], t.[TarifAdi], t.[Kategori], t.[HazirlamaSuresi], FORMAT(SUM(tm.MalzemeMiktar * m.BirimFiyat),'N2') AS Maliyet FROM [dbo].[Tarifler] t INNER JOIN [TarifMalzeme] tm on tm.TarifID= t.TarifID INNER JOIN [Malzemeler] m on tm.MalzemeID = m.MalzemeID GROUP BY t.[TarifID], t.[TarifAdi], t.[Kategori], t.[HazirlamaSuresi]");
            dgList.Columns[0].Visible = false;
            dgList.Columns[1].HeaderCell.Value = "Tarif Adı";
            dgList.Columns[2].HeaderCell.Value = "Kategori";
            dgList.Columns[3].HeaderCell.Value = "Hazırlanma Süresi";
            dgList.Columns[4].HeaderCell.Value = "Maliyet";

            txtId.Text = "";
        }

        private void MalzemeYenile(ComboBox cmb)
        {
            var sorguMalzemeler = "select MalzemeID,MalzemeAdi from Malzemeler";
            cmb.DataSource = null;
            cmb.DataSource = VeritabaniIslemleri.ListeGetir(sorguMalzemeler);
            cmb.DisplayMember = "MalzemeAdi";
            cmb.SelectedIndex = -1;
        }

        private void btnAra_Click(object sender, EventArgs e)
        {
            int eslesen = 0;
            if (string.IsNullOrEmpty(txtAra.Text) && string.IsNullOrEmpty(cmbMalzemeAdi1.Text) && string.IsNullOrEmpty(cmbMalzemeAdi2.Text) && string.IsNullOrEmpty(cmbMalzemeAdi3.Text))
            {
                return;
            }
            var sorgu = "SELECT t.[TarifID], t.[TarifAdi], t.[Kategori], t.[HazirlamaSuresi], FORMAT(SUM(tm.MalzemeMiktar * m.BirimFiyat),'N2') AS Maliyet, COUNT(DISTINCT TM.MalzemeID) AS ToplamMalzemeSayisi FROM [dbo].[Tarifler] t INNER JOIN [TarifMalzeme] tm on tm.TarifID= t.TarifID INNER JOIN [Malzemeler] m on tm.MalzemeID = m.MalzemeID";


            if (!string.IsNullOrEmpty(cmbMalzemeAdi1.Text))
            {
                eslesen++;
                sorgu += " INNER JOIN TarifMalzeme AS TM1 ON T.TarifID = TM1.TarifID INNER JOIN Malzemeler AS M1 ON TM1.MalzemeID = M1.MalzemeID AND M1.MalzemeAdi = '" + cmbMalzemeAdi1.Text + "'";
            }

            if (!string.IsNullOrEmpty(cmbMalzemeAdi2.Text))
            {
                eslesen++;
                sorgu += " INNER JOIN TarifMalzeme AS TM2 ON T.TarifID = TM2.TarifID INNER JOIN Malzemeler AS M2 ON TM2.MalzemeID = M2.MalzemeID AND M2.MalzemeAdi = '" + cmbMalzemeAdi2.Text + "'";
            }

            if (!string.IsNullOrEmpty(cmbMalzemeAdi3.Text))
            {
                eslesen++;
                sorgu += " INNER JOIN TarifMalzeme AS TM3 ON T.TarifID = TM3.TarifID INNER JOIN Malzemeler AS M3 ON TM3.MalzemeID = M3.MalzemeID AND M3.MalzemeAdi = '" + cmbMalzemeAdi3.Text + "'";
            }

            sorgu += " WHERE 1=1 ";

            if (!string.IsNullOrEmpty(txtAra.Text))
            {
                sorgu += " AND t.TarifAdi LIKE '%" + txtAra.Text + "%'";
            }
            sorgu += " GROUP BY t.[TarifID], t.[TarifAdi], t.[Kategori], t.[HazirlamaSuresi]";
            var veriler = VeritabaniIslemleri.ListeGetir(sorgu);
            for (int i = 0; i < veriler.Rows.Count; i++)
            {
                var toplam = double.Parse(veriler.Rows[i][5].ToString());
                veriler.Rows[i][5] = (eslesen / toplam * 100).ToString("0");
            }

            dgList.DataSource = null;
            dgList.DataSource = veriler;

            dgList.Columns[0].Visible = false;
            dgList.Columns[1].HeaderCell.Value = "Tarif Adı";
            dgList.Columns[2].HeaderCell.Value = "Kategori";
            dgList.Columns[3].HeaderCell.Value = "Hazırlanma Süresi";
            dgList.Columns[4].HeaderCell.Value = "Maliyet";
            dgList.Columns[5].HeaderCell.Value = "Eşleşme Yüzdesi(%)";

            txtId.Text = "";
        }

        private void dgList_Click(object sender, EventArgs e)
        {
            if (dgList.SelectedRows.Count < 1) { return; }
            txtId.Text = dgList.SelectedRows[0].Cells[0].Value.ToString();
        }

        private void dgList_DoubleClick(object sender, EventArgs e)
        {
            var frm = new FrmTarifIslemleri();
            frm.Id = txtId.Text;
            if (frm.ShowDialog() == DialogResult.OK)
            {
                FormuYenile();
            }
        }

        private void tariflerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frm = new FrmTarifIslemleri();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                FormuYenile();
            }
        }

        private void tarifSilToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtId.Text))
            {
                MessageBox.Show("Lütfen düzenlenecek tarifi seçiniz.", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            var tarifAdi = dgList.SelectedRows[0].Cells[1].Value.ToString();
            var sonuc = MessageBox.Show(tarifAdi + " isimli tarif silinecektir. Onaylıyor musunuz?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (sonuc == DialogResult.Yes)
            {
                var sonucSql = VeritabaniIslemleri.TarifSil(txtId.Text);
                if (sonucSql != "")
                {
                    MessageBox.Show(sonucSql);
                }
                FormuYenile();
            }
        }

        private void tarifDüzenleToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtId.Text))
            {
                MessageBox.Show("Lütfen düzenlenecek tarifi seçiniz.", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            var frm = new FrmTarifIslemleri();
            frm.Id = txtId.Text;
            if (frm.ShowDialog() == DialogResult.OK)
            {
                FormuYenile();
            }
        }
    }
}
