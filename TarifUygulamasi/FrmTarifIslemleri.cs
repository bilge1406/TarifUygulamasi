using System.Data;
using System.Windows.Forms;

namespace TarifUygulamasi
{
    public partial class FrmTarifIslemleri : Form
    {
        public string Id { get; set; }
        private DataTable dt = new DataTable();
        private DataTable dtYeniEklenenler = new DataTable();
        public FrmTarifIslemleri()
        {
            InitializeComponent();
        }

        private void FrmTarifIslemleri_Load(object sender, System.EventArgs e)
        {
            FormuYenile();
        }

        private void FormuYenile()
        {
            var sorguKategori = "select Distinct(Kategori) from Tarifler";
            cmbKategori.DataSource = null;
            cmbKategori.DataSource = VeritabaniIslemleri.ListeGetir(sorguKategori);
            cmbKategori.DisplayMember = "Kategori";
            MalzemeYenile();

            dgList.DataSource = null;
            dgList.DataSource = dt;
            if (!string.IsNullOrEmpty(Id))
            {
                var sorguTarif = "select t.TarifAdi,t.Kategori,t.HazirlamaSuresi,t.Talimatlar from Tarifler t where TarifID=";
                var tarifVeri = VeritabaniIslemleri.ListeGetir(sorguTarif + Id);
                txtTarifAdi.Text = tarifVeri.Rows[0][0].ToString();
                cmbKategori.Text = tarifVeri.Rows[0][1].ToString();
                txtHazirlanmaSuresi.Text = tarifVeri.Rows[0][2].ToString();
                txtTalimatlar.Text = tarifVeri.Rows[0][3].ToString();
                MalzemeListesiniYenile();
            }
        }

        private void MalzemeListesiniYenile()
        {
            var sorguMalzeme = "select m.MalzemeID,m.MalzemeAdi,tm.MalzemeMiktar,m.MalzemeBirim from TarifMalzeme tm inner join Malzemeler m on m.MalzemeID = tm.MalzemeID where tm.TarifID=";
            dgList.DataSource = null;
            dt = VeritabaniIslemleri.ListeGetir(sorguMalzeme + Id);
            dgList.DataSource = dt;
            dgList.Columns[0].Visible = false;
        }

        private void MalzemeYenile()
        {
            var sorguMalzemeler = "select MalzemeID,MalzemeAdi from Malzemeler";
            cmbMalzemeler.DataSource = null;
            cmbMalzemeler.DataSource = VeritabaniIslemleri.ListeGetir(sorguMalzemeler);
            cmbMalzemeler.DisplayMember = "MalzemeAdi";
        }

        private void btnKapat_Click(object sender, System.EventArgs e)
        {
            Close();
        }

        private void btnKaydet_Click(object sender, System.EventArgs e)
        {
            if (string.IsNullOrEmpty(Id))//Ekleme adımı
            {
                var (id, sonuc) = VeritabaniIslemleri.TarifEkle(txtTarifAdi.Text, cmbKategori.Text, txtHazirlanmaSuresi.Text, txtTalimatlar.Text);
                if (sonuc != "")
                {
                    MessageBox.Show(sonuc);
                    return;
                }
                for (int i = 0; i < dgList.Rows.Count; i++)
                {
                    var malzemeId = dt.Rows[i][0].ToString();
                    var malzemeMiktar = dt.Rows[i][1].ToString();
                    VeritabaniIslemleri.TarifMalzemeEkle(id.ToString(), malzemeId, malzemeMiktar);
                }
                DialogResult = DialogResult.OK;
                Close();
            }
            else//Güncelleme adımı
            {

            }
        }

        private void btnYeniMalzemeOlustur_Click(object sender, System.EventArgs e)
        {
            var frm = new FrmMalzemeEkle();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                MalzemeYenile();
            }
        }

        private void btnMalzemeEkle_Click(object sender, System.EventArgs e)
        {
            if (cmbMalzemeler.SelectedItem == null)
            {
                MessageBox.Show("Lütfen eklenecek malzemeyi seçiniz.", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            var secilenVeri = (DataRowView)cmbMalzemeler.SelectedValue;
            var malzemeId = secilenVeri[0].ToString();
            var sonuc2 = VeritabaniIslemleri.TarifMalzemeEkle(Id, malzemeId, txtMalzemeMiktari.Text);
            if (sonuc2 != "")
            {
                MessageBox.Show(sonuc2);
                return;
            }
            MalzemeListesiniYenile();

        }

        private void btnMalzemeGuncelle_Click(object sender, System.EventArgs e)
        {
            if (dgList.SelectedRows.Count < 1 || txtId.Text == "")
            {
                MessageBox.Show("Lütfen düzenlenecek malzemeyi seçiniz.", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            var sonuc = VeritabaniIslemleri.TarifMalzemeDuzenle(Id, txtId.Text, txtMalzemeMiktari.Text);
            if (sonuc != "")
            {
                MessageBox.Show(sonuc);
                return;
            }
            MalzemeListesiniYenile();
        }

        private void btnMalzemeSil_Click(object sender, System.EventArgs e)
        {
            if (dgList.SelectedRows.Count < 1 || txtId.Text == "")
            {
                MessageBox.Show("Lütfen düzenlenecek malzemeyi seçiniz.", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            var id = dgList.SelectedRows[0].Cells[0].Value.ToString();
            var malzemeAdi = dgList.SelectedRows[0].Cells[1].Value.ToString();
            var sonuc = MessageBox.Show(malzemeAdi + " isimli malzeme tariften kaldırılacaktır. Onaylıyor musunuz?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (sonuc == DialogResult.Yes)
            {
                var sonuc2 = VeritabaniIslemleri.TarifMalzemeSil(Id, txtId.Text);
                if (sonuc2 != "")
                {
                    MessageBox.Show(sonuc2);
                    return;
                }
                MalzemeListesiniYenile();
            }
        }

        private void dgList_Click(object sender, System.EventArgs e)
        {
            if (dgList.SelectedRows.Count < 1) { return; }
            txtId.Text = dgList.SelectedRows[0].Cells[0].Value.ToString();
            var malzemeAdi = dgList.SelectedRows[0].Cells[1].Value.ToString();
            var malzemeMiktar = dgList.SelectedRows[0].Cells[2].Value.ToString();

            cmbMalzemeler.Text = malzemeAdi;
            txtMalzemeMiktari.Text = malzemeMiktar;
        }
    }
}
