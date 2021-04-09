namespace Project.DataAccess
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Gelirler")]
    public partial class Gelirler
    {
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string GelirTipi { get; set; }

        [Required]
        [StringLength(50)]
        public string FaturaNo { get; set; }

        [Required]
        [StringLength(50)]
        public string Ay { get; set; }

        [Required]
        [StringLength(50)]
        public string Yil { get; set; }

        [Column(TypeName = "date")]
        public DateTime FaturaTarih { get; set; }

        [Required]
        [StringLength(50)]
        public string Muhasebeci { get; set; }
    }
}
