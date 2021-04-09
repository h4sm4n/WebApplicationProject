namespace Project.DataAccess
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Giderler")]
    public partial class Giderler
    {
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string Ay { get; set; }

        public int Yil { get; set; }

        public decimal Elektrik { get; set; }

        public decimal Su { get; set; }

        public decimal Dogalgaz { get; set; }

        public decimal Internet { get; set; }

        public decimal Maaslar { get; set; }

        public decimal Malzeme { get; set; }

        public decimal Ofis { get; set; }

        public decimal Diger { get; set; }
    }
}
