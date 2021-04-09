namespace Project.DataAccess
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Bankalar")]
    public partial class Bankalar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Bankalar()
        {
            Musteriler = new HashSet<Musteriler>();
            Personeller = new HashSet<Personeller>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string BankaAdi { get; set; }

        [Required]
        [StringLength(50)]
        public string BankaSube { get; set; }

        [Required]
        [StringLength(15)]
        public string HesapNo { get; set; }

        [Required]
        [StringLength(26)]
        public string Iban { get; set; }

        [Required]
        [StringLength(15)]
        public string BankaTip { get; set; }

        [Required]
        [StringLength(50)]
        public string BankaDetay { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Musteriler> Musteriler { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Personeller> Personeller { get; set; }
    }
}
