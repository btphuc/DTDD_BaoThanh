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

        [HttpPost]
        public ActionResult AddShoppingCart(int Id, string strURL, FormCollection f)
        {
            int soluong = int.Parse(f["InputQuantity"]);
            if (soluong == 0)
            {
                soluong = 1;
            }
            List<ShoppingCart> sp = GetCart();
            //kiem tra tồn tại session 
            ShoppingCart item = sp.Find(n => n.ProductId == Id);
            if (item == null)
            {
                item = new ShoppingCart(Id, soluong);
                sp.Add(item);
                return Redirect(strURL);
            }
            else
            {
                item.Quantity++;
                return Redirect(strURL);
            }
        }

        public ActionResult AddShoppingCart(int Id, string strURL)
        {
            List<ShoppingCart> sp = GetCart();
            //kiem tra tồn tại session 
            ShoppingCart item = sp.Find(n => n.ProductId == Id);
            if (item == null)
            {
                item = new ShoppingCart(Id, 1);
                sp.Add(item);
                return Redirect(strURL);
            }
            else
            {
                item.Quantity++;
                return Redirect(strURL);
            }
        }

        public ActionResult DeleteCart()
        {
            List<ShoppingCart> sp = new List<ShoppingCart>();

            Session["ShoppingCart"] = sp;
            
            return RedirectToAction("Index", "Home");
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