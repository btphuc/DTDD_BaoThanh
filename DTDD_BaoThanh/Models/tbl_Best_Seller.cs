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
    
    public partial class tbl_Best_Seller
    {
        public int Id { get; set; }
        public Nullable<int> ProductID { get; set; }
    
        public virtual tbl_Products tbl_Products { get; set; }
    }
}
