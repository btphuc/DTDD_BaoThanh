using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DTDD_BaoThanh.Models;

namespace DTDD_BaoThanh.Models
{
    public class ShoppingCart
    {
        public MobileShopEntities db = new MobileShopEntities();

        public int ProductId { get; set; }

        public string ProductName { get; set; }

        public string ProductImage { get; set; }

        public decimal Price { get; set; }

        public int Quantity { get; set; }


        public decimal TotalPrice
        {
            get { return Price * Quantity; }
        }

        public ShoppingCart(int Id, int q)
        {
            ProductId = Id;
            tbl_Products product = db.tbl_Products.SingleOrDefault(x => x.Id == Id);

            ProductName = product.Name;

            ProductImage = product.Image;

            Price = decimal.Parse(product.Price.ToString());

            Quantity = q;

        }
    }


}