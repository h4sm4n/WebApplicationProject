namespace Project.DataAccess
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Randevular")]
    public partial class Randevular
    {
        public int Id { get; set; }

        public int MusteriId { get; set; }

        public int AdresId { get; set; }

        [Column(TypeName = "date")]
        public DateTime Tarih { get; set; }

        public TimeSpan Saat { get; set; }

        [Required]
        [StringLength(150)]
        public string Detay { get; set; }

        [Required]
        [StringLength(50)]
        public string IsTuru { get; set; }

        public virtual Adresler Adresler { get; set; }

        public virtual Musteriler Musteriler { get; set; }
    }
}
