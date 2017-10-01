//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DTDD_BaoThanh.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Products
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_Products()
        {
            this.tbl_Best_Seller = new HashSet<tbl_Best_Seller>();
            this.tbl_Oder_Detail = new HashSet<tbl_Oder_Detail>();
        }
    
        public int Id { get; set; }
        public int CategoryID { get; set; }
        public string Name { get; set; }
        public string Alias { get; set; }
        public string Detail { get; set; }
        public int Quantity { get; set; }
        public string Image { get; set; }
        public string Size { get; set; }
        public string Weight { get; set; }
        public string Color { get; set; }
        public string Memory { get; set; }
        public string Os { get; set; }
        public string Cpu { get; set; }
        public string Camera { get; set; }
        public string Warranty { get; set; }
        public Nullable<decimal> Price { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_Best_Seller> tbl_Best_Seller { get; set; }
        public virtual tbl_Categories tbl_Categories { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_Oder_Detail> tbl_Oder_Detail { get; set; }
    }
}
