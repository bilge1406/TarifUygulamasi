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
            SayfayiYenile();
        }

        private void SayfayiYenile()
        {
            dgList.DataSource = null;
            dgList.DataSource = VeritabaniIslemleri.ListeGetir("SELECT [TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar] FROM [dbo].[Tarifler]");
            dgList.Columns[0].Visible = false;
            dgList.Columns[1].HeaderCell.Value = "Tarif Adı";
            dgList.Columns[2].HeaderCell.Value = "Kategori";
            dgList.Columns[3].HeaderCell.Value = "Hazırlanma Süresi";
            dgList.Columns[4].HeaderCell.Value = "Talimatlar";
            txtId.Text = "";
        }
    }
}
