using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTDD_BaoThanh.Models;
using PagedList;
using System.Data.Entity;

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

            product.Views++;

            db.Entry(product).State = EntityState.Modified;

            db.SaveChanges();

            return View(product);
        }

        // xem theo danh mục
        public ActionResult OrderByCategory (int id , int page = 1, int pagesize =12)
        {
            var product = db.tbl_Products.OrderBy(x => x.Name).Where(x => x.CategoryID == id).ToPagedList(page, pagesize);

            return View(product);
        }

        // xem theo giá tăng dần 

        public ActionResult PriceLowToHigh (int page = 1, int pagesize = 12)
        {
            var product = db.tbl_Products.OrderBy(x=> x.Price).ToPagedList(page, pagesize);
            return View(product);
        }

        // xem theo giá giảm dần 

        public ActionResult PriceHighToLow(int page = 1, int pagesize = 12)
        {
            var product = db.tbl_Products.OrderByDescending(x => x.Price).ToPagedList(page, pagesize);
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
            if (Session["TaiKhoan"] != null)
            {
                return RedirectToAction("Index", "Home");
            }

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
            return Content("<script>alert('Tài khoản hoặc mật khẩu không đúng');window.location='/Home/Register';</script>");
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
            if (Session["TaiKhoan"] == null)
                return RedirectToAction("Register");

            int id = int.Parse(Session["TaiKhoanID"].ToString());
            var thongtin = db.tbl_Users.SingleOrDefault(k => k.Id == id);
            return View(thongtin);
        }
        //thay doi thong tin
        public ActionResult _pUserUpdate()
        {
            if (Session["TaiKhoan"] == null)
                return RedirectToAction("Register");

            int id = int.Parse(Session["TaiKhoanID"].ToString());
            var thongtin = db.tbl_Users.SingleOrDefault(k => k.Id == id);

            return PartialView(thongtin);
        }

        [HttpPost]
        public ActionResult _pUserUpdate(FormCollection f)
        {
            if (Session["TaiKhoan"] == null)
                return RedirectToAction("Register");


            int id = int.Parse(Session["TaiKhoanID"].ToString());
            var user = db.tbl_Users.SingleOrDefault(k => k.Id == id);

            if(user == null)
            {
                return RedirectToAction("Index");
            }

            try
            {
                var newName = f["Name"];
                var newEmail = f["Email"];
                var newPhone = f["Phone"];
                var newAddress = f["Address"];

                user.Name = newName;
                user.Email = newEmail;
                user.Phone = newPhone;
                user.Address = newAddress;

                db.Entry(user).State = EntityState.Modified;
                db.SaveChanges();

                return Content("<script>alert('Thay đổi thành công!');window.location='/Home/Account';</script>");
            }
            catch 
            {
                // có lỗi tải lại trang và vào tab thay doi thong tin
                return Content("<script>alert('Lỗi!');window.location='/Home/Account#v-pills-profile';</script>");
            }
        }


        //doi password
        public ActionResult _pChangePassword()
        {
            if (Session["TaiKhoan"] == null)
                return RedirectToAction("Register");

            int id = int.Parse(Session["TaiKhoanID"].ToString());
            var thongtin = db.tbl_Users.SingleOrDefault(k => k.Id == id);

            return PartialView();
        }

        [HttpPost]
        public ActionResult _pChangePassword(FormCollection f)
        {
            if (Session["TaiKhoan"] == null)
                return RedirectToAction("Register");

            int id = int.Parse(Session["TaiKhoanID"].ToString());
            var user = db.tbl_Users.SingleOrDefault(k => k.Id == id);

            if (user == null)
            {
                return RedirectToAction("Index");
            }

            try
            {
                var oldPassword = f["Password"];
                var newPassword = f["NewPassword"];
                var confirmPassword = f["ConfirmPassword"];
               
                if (oldPassword != user.Password)
                {
                    return Content("<script>alert('Mật khẩu không chính xác');</script>");
                }
                if(newPassword != confirmPassword)
                {
                    return Content("<script>alert('Xác nhận mật khẩu không chính xác');</script>");
                }

                user.Password = newPassword;

                db.Entry(user).State = EntityState.Modified;
                db.SaveChanges();

                return Content("<script>alert('Thay đổi thành công!');window.location='/Home/Account';</script>");
            }
            catch
            {
                // có lỗi tải lại trang và vào tab thay doi thong tin
                return Content("<script>alert('Lỗi!');window.location='/Home/Account#v-pills-profile';</script>");
            }

        }

        #endregion

        #endregion


        [HttpPost]
        public ActionResult TimTheoGia (FormCollection f , int page = 1, int pagesize = 12)
        {
            decimal giathap = decimal.Parse( f["GiaThap"]);
            decimal giacao = decimal.Parse(f["GiaCao"]);


            if (giathap > giacao)
            {
                var temp = giathap;
                giathap = giacao;
                giacao = temp;
            }

            var kq = db.tbl_Products.OrderBy(x => x.Price).Where(x => x.Price >= giathap && x.Price <= giacao).ToPagedList(page, pagesize);

            return View(kq);
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