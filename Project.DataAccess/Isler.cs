namespace Project.DataAccess
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Isler")]
    public partial class Isler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Isler()
        {
            Sozlesmeler = new HashSet<Sozlesmeler>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string IsTuru { get; set; }

        [Column(TypeName = "date")]
        public DateTime BaslangicTarihi { get; set; }

        [Column(TypeName = "date")]
        public DateTime BitisTarihi { get; set; }

        [Required]
        [StringLength(10)]
        public string Durum { get; set; }

        public int MusteriId { get; set; }

        public int YetkiliPersonelId { get; set; }

        public int AdresId { get; set; }

        public decimal Fiyat { get; set; }

        [Required]
        [StringLength(50)]
        public string OdemePlani { get; set; }

        public virtual Adresler Adresler { get; set; }

        public virtual Musteriler Musteriler { get; set; }

        public virtual Personeller Personeller { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sozlesmeler> Sozlesmeler { get; set; }
    }
}
