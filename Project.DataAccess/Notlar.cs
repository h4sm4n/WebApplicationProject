namespace Project.DataAccess
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Notlar")]
    public partial class Notlar
    {
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string NotTuru { get; set; }

        [Required]
        [StringLength(50)]
        public string NotDetay { get; set; }

        [Column(TypeName = "date")]
        public DateTime Olusturulma { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime Alarm { get; set; }
    }
}
