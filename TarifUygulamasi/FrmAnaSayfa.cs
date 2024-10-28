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
            dgList.DataSource = null;
            dgList.DataSource = VeritabaniIslemleri.ListeGetir("SELECT [TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar] FROM [dbo].[Tarifler]");
            dgList.Columns[0].Visible = false;
            dgList.Columns[1].HeaderCell.Value = "Tarif Adı";
            dgList.Columns[2].HeaderCell.Value = "Kategori";
            dgList.Columns[3].HeaderCell.Value = "Hazırlanma Süresi";
            dgList.Columns[4].HeaderCell.Value = "Talimatlar";

            dgList.Columns[1].Width = 100;
            dgList.Columns[2].Width = 100;
            dgList.Columns[3].Width = 100;

            txtId.Text = "";
        }

        private void btnAra_Click(object sender, EventArgs e)
        {

        }

        private void dgList_Click(object sender, EventArgs e)
        {
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
