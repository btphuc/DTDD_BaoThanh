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

            Session["ShoppingCart"] = null;

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


        public ActionResult Checkout()
        {

            if (Session["TaiKhoan"] == null || Session["TaiKhoan"] == "")
            {
                return RedirectToAction("Register", "Home");
            }

            List<ShoppingCart> sp = GetCart();
            int taikhoanid = int.Parse(Session["TaiKhoanID"].ToString());

            //tạo đơn hàng
            tbl_Order order = new tbl_Order();

            order.CustomerId = taikhoanid;
            order.StatusId = 1;
            order.CreateDate = DateTime.Now;
            order.TotalPrice = TotalPrice();
            db.tbl_Order.Add(order);
            db.SaveChanges();
            //chi tiết đơn hàng
            
            foreach(var item in sp)
            {
                tbl_Oder_Detail orderDetail = new tbl_Oder_Detail();
                orderDetail.OrderId = order.Id;
                orderDetail.ProductID = item.ProductId;
                orderDetail.Price = item.Price;
                orderDetail.Quantity = item.Quantity;
                db.tbl_Oder_Detail.Add(orderDetail);
            }
            db.SaveChanges();
            Session["ShoppingCart"] = null;
            return Content("<script>alert('Đơn hàng đặt thành công, chúng tôi sẽ liên hệ với bạn sớm nhất có thể');window.location='/Home/Index';</script>");
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