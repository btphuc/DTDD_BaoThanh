using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTDD_BaoThanh.Models;
using PagedList;

namespace DTDD_BaoThanh.Controllers
{
    public class HomeController : Controller
    {
        MobileShopEntities db = new MobileShopEntities();

        public ActionResult Index()
        {
            var BestSeller = db.tbl_Best_Seller.ToList();
            
            return View(BestSeller);
        }


        //Lấy sản phẩm 
        private List<tbl_Products> GetProductByQuantity (int quantity)
        {
            return db.tbl_Products.Take(quantity).ToList();
        }

        public PartialViewResult SomeProduct()
        {
            var Product = GetProductByQuantity(12);
            return PartialView(Product);
        }
        
        // Get Product List

        public ActionResult All(int page = 1, int pagesize = 12)
        {

            var ProductList = db.tbl_Products.OrderByDescending(m=> m.Id).Where(m => m.Quantity > 0).ToPagedList(page, pagesize);
            return View(ProductList);
        }


        //get Product's detail

        public ActionResult ChiTietSP(int id)
        {
            var product = db.tbl_Products.Find(id);
            
            return View(product);
        }


        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        
    }
}