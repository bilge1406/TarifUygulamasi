using System;
using System.Data;
using System.Data.SqlClient;

namespace TarifUygulamasi
{
    public static class VeritabaniIslemleri
    {
        static string BasariliEkleMesaji = "Başarılı şekilde kaydedildi.";
        public static SqlConnection YeniBaglantiOlustur()
        {
            var conn = new SqlConnection("Data Source = .\\; Initial Catalog = TarifUygulamasi; Integrated Security = True;");
            return conn;
        }

        public static string MalzemeEkle(string malzemeAdi, string toplamMiktar, int malzemeBirim, double birimFiyat)
        {
            var conn = YeniBaglantiOlustur();
            try
            {
                conn.Open();
                var cmd = new SqlCommand("INSERT INTO [dbo].[Malzemeler] VALUES(@malzemeAdi, @toplamMiktar, @malzemeBirim, @birimFiyat)", conn);
                cmd.Parameters.AddWithValue("@malzemeAdi", malzemeAdi);
                cmd.Parameters.AddWithValue("@toplamMiktar", toplamMiktar);
                cmd.Parameters.AddWithValue("@malzemeBirim", malzemeBirim);
                cmd.Parameters.AddWithValue("@birimFiyat", birimFiyat);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                conn.Close();
            }
            return BasariliEkleMesaji;
        }

        public static string TarifEkle(string tarifAdi, string kategori, int hazirlamaSuresi, string talimatlar)
        {
            var conn = YeniBaglantiOlustur();
            try
            {
                conn.Open();
                var cmd = new SqlCommand("INSERT INTO [dbo].[Tarifler] VALUES(@tarifAdi, @kategori, @hazirlamaSuresi, @talimatlar)", conn);
                cmd.Parameters.AddWithValue("@tarifAdi", tarifAdi);
                cmd.Parameters.AddWithValue("@kategori", kategori);
                cmd.Parameters.AddWithValue("@hazirlamaSuresi", hazirlamaSuresi);
                cmd.Parameters.AddWithValue("@talimatlar", talimatlar);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                conn.Close();
            }
            return BasariliEkleMesaji;
        }

        public static string TarifMalzemeEkle(int tarifId, int malzemeId)
        {
            var conn = YeniBaglantiOlustur();
            try
            {
                conn.Open();
                var cmd = new SqlCommand("INSERT INTO [dbo].[TarifMalzeme] VALUES(@tarifId, @malzemeId)", conn);
                cmd.Parameters.AddWithValue("@tarifId", tarifId);
                cmd.Parameters.AddWithValue("@malzemeId", malzemeId);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                conn.Close();
            }
            return BasariliEkleMesaji;
        }

        public static DataTable ListeGetir(string sorgu)
        {
            var conn = YeniBaglantiOlustur();
            try
            {
                conn.Open();
                var cmd = new SqlCommand(sorgu, conn);
                var da = new SqlDataAdapter(cmd);
                var dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception e)
            {

            }
            finally
            {
                conn.Close();
            }

            return null;
        }
    }
}
