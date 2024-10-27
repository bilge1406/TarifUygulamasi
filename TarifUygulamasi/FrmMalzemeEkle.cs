using System;
using System.Windows.Forms;

namespace TarifUygulamasi
{
    public partial class FrmMalzemeEkle : Form
    {
        public FrmMalzemeEkle()
        {
            InitializeComponent();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            var sonuc = VeritabaniIslemleri.MalzemeEkle(txtMalzemeAdi.Text, txtToplamMiktar.Text, txtMalzemeBirimi.Text, txtBirimFiyati.Text);
            MessageBox.Show(sonuc);
        }
    }
}
