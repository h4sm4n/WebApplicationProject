using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace Project.DataAccess
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=dbweb")
        {
        }

        public virtual DbSet<Adresler> Adresler { get; set; }
        public virtual DbSet<Bankalar> Bankalar { get; set; }
        public virtual DbSet<Departmanlar> Departmanlar { get; set; }
        public virtual DbSet<Gelirler> Gelirler { get; set; }
        public virtual DbSet<Giderler> Giderler { get; set; }
        public virtual DbSet<Isler> Isler { get; set; }
        public virtual DbSet<Kullanicilar> Kullanicilar { get; set; }
        public virtual DbSet<Musteriler> Musteriler { get; set; }
        public virtual DbSet<Notlar> Notlar { get; set; }
        public virtual DbSet<Personeller> Personeller { get; set; }
        public virtual DbSet<Randevular> Randevular { get; set; }
        public virtual DbSet<Sozlesmeler> Sozlesmeler { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Adresler>()
                .Property(e => e.Sehir)
                .IsUnicode(false);

            modelBuilder.Entity<Adresler>()
                .Property(e => e.Ilce)
                .IsUnicode(false);

            modelBuilder.Entity<Adresler>()
                .Property(e => e.AdresDetay)
                .IsUnicode(false);

            modelBuilder.Entity<Adresler>()
                .HasMany(e => e.Isler)
                .WithRequired(e => e.Adresler)
                .HasForeignKey(e => e.AdresId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Adresler>()
                .HasMany(e => e.Musteriler)
                .WithRequired(e => e.Adresler)
                .HasForeignKey(e => e.AdresId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Adresler>()
                .HasMany(e => e.Personeller)
                .WithRequired(e => e.Adresler)
                .HasForeignKey(e => e.AdresId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Adresler>()
                .HasMany(e => e.Randevular)
                .WithRequired(e => e.Adresler)
                .HasForeignKey(e => e.AdresId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Bankalar>()
                .Property(e => e.BankaAdi)
                .IsUnicode(false);

            modelBuilder.Entity<Bankalar>()
                .Property(e => e.BankaSube)
                .IsUnicode(false);

            modelBuilder.Entity<Bankalar>()
                .Property(e => e.HesapNo)
                .IsUnicode(false);

            modelBuilder.Entity<Bankalar>()
                .Property(e => e.Iban)
                .IsUnicode(false);

            modelBuilder.Entity<Bankalar>()
                .Property(e => e.BankaTip)
                .IsUnicode(false);

            modelBuilder.Entity<Bankalar>()
                .Property(e => e.BankaDetay)
                .IsUnicode(false);

            modelBuilder.Entity<Bankalar>()
                .HasMany(e => e.Musteriler)
                .WithRequired(e => e.Bankalar)
                .HasForeignKey(e => e.MustBankaId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Bankalar>()
                .HasMany(e => e.Personeller)
                .WithRequired(e => e.Bankalar)
                .HasForeignKey(e => e.PersBankaId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Departmanlar>()
                .Property(e => e.DepartmanAd)
                .IsUnicode(false);

            modelBuilder.Entity<Departmanlar>()
                .Property(e => e.DepartmanAciklama)
                .IsUnicode(false);

            modelBuilder.Entity<Departmanlar>()
                .HasMany(e => e.Personeller)
                .WithRequired(e => e.Departmanlar)
                .HasForeignKey(e => e.DepartmanId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Gelirler>()
                .Property(e => e.GelirTipi)
                .IsUnicode(false);

            modelBuilder.Entity<Gelirler>()
                .Property(e => e.FaturaNo)
                .IsUnicode(false);

            modelBuilder.Entity<Gelirler>()
                .Property(e => e.Ay)
                .IsUnicode(false);

            modelBuilder.Entity<Gelirler>()
                .Property(e => e.Yil)
                .IsUnicode(false);

            modelBuilder.Entity<Gelirler>()
                .Property(e => e.Muhasebeci)
                .IsUnicode(false);

            modelBuilder.Entity<Giderler>()
                .Property(e => e.Ay)
                .IsUnicode(false);

            modelBuilder.Entity<Isler>()
                .Property(e => e.IsTuru)
                .IsUnicode(false);

            modelBuilder.Entity<Isler>()
                .Property(e => e.Durum)
                .IsUnicode(false);

            modelBuilder.Entity<Isler>()
                .Property(e => e.OdemePlani)
                .IsUnicode(false);

            modelBuilder.Entity<Isler>()
                .HasMany(e => e.Sozlesmeler)
                .WithRequired(e => e.Isler)
                .HasForeignKey(e => e.IsId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Kullanicilar>()
                .Property(e => e.KullaniciAdi)
                .IsUnicode(false);

            modelBuilder.Entity<Kullanicilar>()
                .Property(e => e.KullaniciSifre)
                .IsUnicode(false);

            modelBuilder.Entity<Kullanicilar>()
                .Property(e => e.KullaniciTip)
                .IsUnicode(false);

            modelBuilder.Entity<Kullanicilar>()
                .HasMany(e => e.Musteriler)
                .WithRequired(e => e.Kullanicilar)
                .HasForeignKey(e => e.KullaniciId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Kullanicilar>()
                .HasMany(e => e.Personeller)
                .WithRequired(e => e.Kullanicilar)
                .HasForeignKey(e => e.KullaniciId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Musteriler>()
                .Property(e => e.MusteriAd)
                .IsUnicode(false);

            modelBuilder.Entity<Musteriler>()
                .Property(e => e.MusteriSoyad)
                .IsUnicode(false);

            modelBuilder.Entity<Musteriler>()
                .Property(e => e.MusteriTc)
                .IsUnicode(false);

            modelBuilder.Entity<Musteriler>()
                .Property(e => e.MusteriMail)
                .IsUnicode(false);

            modelBuilder.Entity<Musteriler>()
                .Property(e => e.MusteriTelefon)
                .IsUnicode(false);

            modelBuilder.Entity<Musteriler>()
                .HasMany(e => e.Isler)
                .WithRequired(e => e.Musteriler)
                .HasForeignKey(e => e.MusteriId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Musteriler>()
                .HasMany(e => e.Randevular)
                .WithRequired(e => e.Musteriler)
                .HasForeignKey(e => e.MusteriId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Notlar>()
                .Property(e => e.NotTuru)
                .IsUnicode(false);

            modelBuilder.Entity<Notlar>()
                .Property(e => e.NotDetay)
                .IsUnicode(false);

            modelBuilder.Entity<Personeller>()
                .Property(e => e.PersonelAdi)
                .IsUnicode(false);

            modelBuilder.Entity<Personeller>()
                .Property(e => e.PersonelSoyadi)
                .IsUnicode(false);

            modelBuilder.Entity<Personeller>()
                .Property(e => e.PersonelTc)
                .IsUnicode(false);

            modelBuilder.Entity<Personeller>()
                .Property(e => e.PersonelMail)
                .IsUnicode(false);

            modelBuilder.Entity<Personeller>()
                .Property(e => e.PersonelTelefon)
                .IsUnicode(false);

            modelBuilder.Entity<Personeller>()
                .HasMany(e => e.Isler)
                .WithRequired(e => e.Personeller)
                .HasForeignKey(e => e.YetkiliPersonelId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Randevular>()
                .Property(e => e.Saat)
                .HasPrecision(0);

            modelBuilder.Entity<Randevular>()
                .Property(e => e.Detay)
                .IsUnicode(false);

            modelBuilder.Entity<Randevular>()
                .Property(e => e.IsTuru)
                .IsUnicode(false);

            modelBuilder.Entity<Sozlesmeler>()
                .Property(e => e.SozlesmePdf)
                .IsUnicode(false);

            modelBuilder.Entity<Sozlesmeler>()
                .Property(e => e.SozlesmeImzalar)
                .IsUnicode(false);
        }
    }
}
