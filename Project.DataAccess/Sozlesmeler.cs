namespace Project.DataAccess
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sozlesmeler")]
    public partial class Sozlesmeler
    {
        public int Id { get; set; }

        public int IsId { get; set; }

        [Required]
        [StringLength(100)]
        public string SozlesmePdf { get; set; }

        [Required]
        [StringLength(100)]
        public string SozlesmeImzalar { get; set; }

        public virtual Isler Isler { get; set; }
    }
}
