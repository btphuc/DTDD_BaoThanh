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


        #region Đăng nhập - đăng ký - Tài khoản v.v.

        public PartialViewResult _pAccount()
        {
            return PartialView();
        }

        #region ĐĂNG KÝ
        // Get:  Đăng Ky
        
        public ActionResult Register()
        {
            if (Session["TaiKhoan"] != null)
            {
                return RedirectToAction("Index", "Home");
            }
            return View();
        }

        [HttpPost]
        public ActionResult Register(tbl_Users user)
        {
            var tk = db.tbl_Users.Where(p => p.Username == user.Username).ToList();
            var ht = db.tbl_Users.Where(p => p.Email == user.Email).ToList();

            if (tk.Count > 0)
            {
                ViewBag.ThongBaotk = "Tên đăng nhập đã được sử dụng";
                return View();
            }
            if (ht.Count > 0)
            {
                ViewBag.ThongBaoMail = "Email đã được sử dụng";
                return View();
            }
            db.tbl_Users.Add(user);
            db.SaveChanges();
            //ViewBag.DangKyThanhCong = "Bạn Đã đăng ký thành công , mời bạn đăng nhập";
            return Content("<script>alert('Bạn Đã đăng ký thành công , mời bạn đăng nhập!');window.location='/Home/Register';</script>");
        }

        #endregion

        #region ĐĂNG NHẬP
        public ActionResult _pLogin()
        {
            if (Session["TaiKhoan"] != null)
            {
                return RedirectToAction("Index", "Home");
            }
            return PartialView();
        }

        [HttpPost]
        public ActionResult _pLogin(FormCollection f)
        {
            string username = f["Username"];
            string password = f["Password"];
            tbl_Users user = db.tbl_Users.SingleOrDefault(n => n.Username == username && n.Password == password);
            if (user != null)
            {

                Session["TaiKhoan"] = user.Name;
                Session["TaiKhoanID"] = user.Id;
                return Content("<script>alert('Chúc mừng bạn đã đăng nhập thành công!');window.location='/Home/Index';</script>");
            }
            ViewBag.ThongBao = "Tài khoản hoặc mật khẩu không đúng";
            return PartialView();
        }

        #endregion


        #region ĐĂNG XUẤT

        public ActionResult DESTROYSESCION ()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }

        #endregion

        #region QUẢN LÝ TÀI KHOẢN

        // Trang người dùng :

        public ActionResult Account()
        {
            if (Session["Username"] == null)
                return RedirectToAction("Index");

            int id = int.Parse(Session["TaiKhoanID"].ToString());
            var thongtin = db.tbl_Users.SingleOrDefault(k => k.Id == id);
            return View(thongtin);
        }


        #endregion

        #endregion


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