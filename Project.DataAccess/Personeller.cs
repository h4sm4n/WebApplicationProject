namespace Project.DataAccess
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Personeller")]
    public partial class Personeller
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Personeller()
        {
            Isler = new HashSet<Isler>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string PersonelAdi { get; set; }

        [Required]
        [StringLength(50)]
        public string PersonelSoyadi { get; set; }

        public int DepartmanId { get; set; }

        [Column(TypeName = "date")]
        public DateTime GirisTarihi { get; set; }

        public int PersBankaId { get; set; }

        public int KullaniciId { get; set; }

        [Required]
        [StringLength(11)]
        public string PersonelTc { get; set; }

        [Required]
        [StringLength(50)]
        public string PersonelMail { get; set; }

        public decimal PersonelMaas { get; set; }

        public int AdresId { get; set; }

        [Required]
        [StringLength(20)]
        public string PersonelTelefon { get; set; }

        public virtual Adresler Adresler { get; set; }

        public virtual Bankalar Bankalar { get; set; }

        public virtual Departmanlar Departmanlar { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Isler> Isler { get; set; }

        public virtual Kullanicilar Kullanicilar { get; set; }
    }
}
