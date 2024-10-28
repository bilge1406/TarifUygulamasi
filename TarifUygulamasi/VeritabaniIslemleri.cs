using System;
using System.Data;
using System.Data.SqlClient;

namespace TarifUygulamasi
{
    public static class VeritabaniIslemleri
    {
        public static SqlConnection YeniBaglantiOlustur()
        {
            var conn = new SqlConnection("Data Source = DESKTOP-N2C480Q\\SQLEXPRESS; Initial Catalog = TarifUygulamasi; Integrated Security = True;");
            return conn;
        }

        public static string MalzemeEkle(string malzemeAdi, string toplamMiktar, string malzemeBirim, string birimFiyat)
        {
            if (string.IsNullOrEmpty(malzemeAdi) || string.IsNullOrEmpty(toplamMiktar) || string.IsNullOrEmpty(malzemeBirim))
            {
                return "Lütfen bilgileri eksiksiz giriniz";
            }

            if (!decimal.TryParse(birimFiyat, out var fiyat))
            {
                return "Fiyat bilgisi geçersizdir.";
            }

            var conn = YeniBaglantiOlustur();
            try
            {
                conn.Open();
                var cmd = new SqlCommand("INSERT INTO [dbo].[Malzemeler] VALUES(@malzemeAdi, @toplamMiktar, @malzemeBirim, @birimFiyat)", conn);
                cmd.Parameters.AddWithValue("@malzemeAdi", malzemeAdi);
                cmd.Parameters.AddWithValue("@toplamMiktar", toplamMiktar);
                cmd.Parameters.AddWithValue("@malzemeBirim", malzemeBirim);
                cmd.Parameters.AddWithValue("@birimFiyat", fiyat);
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
            return "";
        }

        public static (int, string) TarifEkle(string tarifAdi, string kategori, string hazirlamaSuresi, string talimatlar)
        {
            if (string.IsNullOrEmpty(tarifAdi) || string.IsNullOrEmpty(kategori) || string.IsNullOrEmpty(hazirlamaSuresi) || string.IsNullOrEmpty(talimatlar))
            {
                return (-1, "Lütfen bilgileri eksiksiz giriniz");
            }

            if (!int.TryParse(hazirlamaSuresi, out var sure))
            {
                return (-1, "Hazırlanma süresi bilgisi geçersizdir.");
            }

            var conn = YeniBaglantiOlustur();
            try
            {
                conn.Open();
                var cmd = new SqlCommand("INSERT INTO [dbo].[Tarifler] VALUES(@tarifAdi, @kategori, @hazirlamaSuresi, @talimatlar); SELECT SCOPE_IDENTITY()", conn);
                cmd.Parameters.AddWithValue("@tarifAdi", tarifAdi);
                cmd.Parameters.AddWithValue("@kategori", kategori);
                cmd.Parameters.AddWithValue("@hazirlamaSuresi", sure);
                cmd.Parameters.AddWithValue("@talimatlar", talimatlar);
                var id = int.Parse(cmd.ExecuteScalar().ToString());
                return (id, "");
            }
            catch (Exception ex)
            {
                return (-1, ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public static string TarifMalzemeEkle(string tarifId, string malzemeId, string malzemeMiktar)
        {
            if (!int.TryParse(tarifId, out var tarif) || !int.TryParse(malzemeId, out var malzeme) || !double.TryParse(malzemeMiktar, out var miktar))
            {
                return "Bilgiler geçersizdir.";
            }
            var conn = YeniBaglantiOlustur();
            try
            {
                conn.Open();
                var cmd = new SqlCommand("INSERT INTO [dbo].[TarifMalzeme] VALUES(@tarifId, @malzemeId, @malzemeMiktar)", conn);
                cmd.Parameters.AddWithValue("@tarifId", tarif);
                cmd.Parameters.AddWithValue("@malzemeId", malzeme);
                cmd.Parameters.AddWithValue("@malzemeMiktar", miktar);
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
            return "";
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

        public static string TarifSil(string tarifId)
        {
            var conn = YeniBaglantiOlustur();
            try
            {
                conn.Open();
                var cmd = new SqlCommand("DELETE FROM [dbo].[TarifMalzeme] WHERE TarifID = @tarifId; DELETE FROM [dbo].[Tarifler] WHERE TarifID = @tarifId", conn);
                cmd.Parameters.AddWithValue("@tarifId", tarifId);
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
            return "";
        }

        public static string TarifMalzemeDuzenle(string tarifId, string malzemeId, string malzemeMiktar)
        {
            if (!int.TryParse(tarifId, out var tarif) || !int.TryParse(malzemeId, out var malzeme) || !double.TryParse(malzemeMiktar, out var miktar))
            {
                return "Bilgiler geçersizdir.";
            }
            var conn = YeniBaglantiOlustur();
            try
            {
                conn.Open();
                var cmd = new SqlCommand("UPDATE [dbo].[TarifMalzeme] SET [MalzemeMiktar] = @malzemeMiktar WHERE TarifID = @tarifId AND MalzemeID = @malzemeId", conn);
                cmd.Parameters.AddWithValue("@tarifId", tarif);
                cmd.Parameters.AddWithValue("@malzemeId", malzeme);
                cmd.Parameters.AddWithValue("@malzemeMiktar", miktar);
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
            return "";
        }

        public static string TarifMalzemeSil(string tarifId, string malzemeId)
        {
            if (!int.TryParse(tarifId, out var tarif) || !int.TryParse(malzemeId, out var malzeme))
            {
                return "Bilgiler geçersizdir.";
            }
            var conn = YeniBaglantiOlustur();
            try
            {
                conn.Open();
                var cmd = new SqlCommand("DELETE FROM [dbo].[TarifMalzeme] WHERE TarifID = @tarifId AND MalzemeID = @malzemeId", conn);
                cmd.Parameters.AddWithValue("@tarifId", tarif);
                cmd.Parameters.AddWithValue("@malzemeId", malzeme);
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
            return "";
        }
    }
}
