using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTDD_BaoThanh.Models;

namespace DTDD_BaoThanh.Areas.Admin.Controllers
{
    public class DashboardController : Controller
    {
        MobileShopEntities db = new MobileShopEntities();
        // GET: Admin/Dashboard
        public ActionResult Index()
        {
            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Dashboard");
            }

            var orderList = db.tbl_Order.Where(x => x.StatusId == 1).OrderByDescending(x => x.CreateDate).ToList();
            return View(orderList);
        }

        public ActionResult _pStoreDetail()
        {

            ViewBag.user = db.tbl_Users.Count();
            ViewBag.product = db.tbl_Products.Count();
            return PartialView();
        }


        public ActionResult Login()
        {
            if (Session["Admin"] != null)
            {
                return RedirectToAction("Index", "Dashboard");
            }
            return PartialView();
        }

        [HttpPost]
        public ActionResult Login(FormCollection f)
        {
            string username = f["Username"];
            string password = f["Password"];
            tbl_Admin admin = db.tbl_Admin.SingleOrDefault(n => n.Username == username && n.Password == password);
            if (admin != null)
            {

                Session["Admin"] = admin.Username;
                Session["AdminID"] = admin.Id;
                return Content("<script>alert('Chúc mừng bạn đã đăng nhập thành công!');window.location='/Admin/Dashboard';</script>");
            }
            ViewBag.ThongBao = "Tài khoản hoặc mật khẩu không đúng";
            return Content("<script>alert('Tài khoản hoặc mật khẩu không đúng');window.location='/Admin/Dashboard/Login';</script>");
        }


        public ActionResult DESTROYSESCION()
        {
            Session.Clear();
            return RedirectToAction("Login", "Dashboard");
        }


    }
}