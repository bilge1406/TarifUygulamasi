using System.Windows.Forms;

namespace TarifUygulamasi
{
    public partial class FrmTarifIslemleri : Form
    {
        public string Id { get; set; }
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
            if (!string.IsNullOrEmpty(Id))
            {
                var sorguTarif = "select t.TarifAdi,t.Kategori,t.HazirlamaSuresi,t.Talimatlar from Tarifler t where TarifID=";
                var tarifVeri = VeritabaniIslemleri.ListeGetir(sorguTarif + Id);
                txtTarifAdi.Text= tarifVeri.Rows[0][0].ToString();
                cmbKategori.Text= tarifVeri.Rows[0][1].ToString();
                txtHazirlanmaSuresi.Text= tarifVeri.Rows[0][2].ToString();
                txtTalimatlar.Text= tarifVeri.Rows[0][3].ToString();

                var sorguMalzeme = "select m.MalzemeAdi,tm.MalzemeMiktar,m.MalzemeBirim from TarifMalzeme tm inner join Malzemeler m on m.MalzemeID = tm.MalzemeID where tm.TarifID=";
                dgList.DataSource = null;
                dgList.DataSource = VeritabaniIslemleri.ListeGetir(sorguMalzeme + Id);
            }
        }
    }
}
