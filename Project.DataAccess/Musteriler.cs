namespace Project.DataAccess
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Musteriler")]
    public partial class Musteriler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Musteriler()
        {
            Isler = new HashSet<Isler>();
            Randevular = new HashSet<Randevular>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string MusteriAd { get; set; }

        [Required]
        [StringLength(50)]
        public string MusteriSoyad { get; set; }

        public int AdresId { get; set; }

        public int MustBankaId { get; set; }

        public int KullaniciId { get; set; }

        [Required]
        [StringLength(11)]
        public string MusteriTc { get; set; }

        [Required]
        [StringLength(100)]
        public string MusteriMail { get; set; }

        [Required]
        [StringLength(20)]
        public string MusteriTelefon { get; set; }

        public virtual Adresler Adresler { get; set; }

        public virtual Bankalar Bankalar { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Isler> Isler { get; set; }

        public virtual Kullanicilar Kullanicilar { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Randevular> Randevular { get; set; }
    }
}
