using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTDD_BaoThanh.Models;

namespace DTDD_BaoThanh.Controllers
{
    public class ShoppingCartController : Controller
    {
        MobileShopEntities db = new MobileShopEntities();

        public List<ShoppingCart> GetCart()
        {
            List<ShoppingCart> sp = Session["ShoppingCart"] as List<ShoppingCart>;
            if (sp == null)
            {
                sp = new List<ShoppingCart>();
                Session["ShoppingCart"] = sp;
            }

            return sp;
        }


        public ActionResult AddShoppingCart(int Id, int q, string strURL)
        {
            List<ShoppingCart> sp = GetCart();
            //kiem tra tồn tại session 
            ShoppingCart item = sp.Find(n => n.ProductId == Id);
            if (item == null)
            {
                item = new ShoppingCart(Id, q);
                return Redirect(strURL);
            }
            else
            {
                item.Quantity++;
                return Redirect(strURL);
            }
        }


        private Decimal TotalPrice()
        {
            decimal totalprice = 0;
            List<ShoppingCart> sp = Session["ShoppingCart"] as List<ShoppingCart>;

            if (sp != null)
            {
                totalprice = sp.Sum(n => n.TotalPrice);
            }

            return totalprice;

        }

        // GET: ShoppingCart
        public ActionResult Index()
        {
            List<ShoppingCart> sp = GetCart();

            if(sp.Count == 0)
            {
                return RedirectToAction("All", "Home");
            }

            ViewBag.totalprice = TotalPrice();

            return View(sp);
        }
    }
}