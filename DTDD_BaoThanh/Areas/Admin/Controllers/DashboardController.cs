using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTDD_BaoThanh.Models;
using System.Data.Entity;

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

            var orderList = db.tbl_Order.OrderByDescending(x => x.CreateDate).ToList();
            return View(orderList);
        }

        public ActionResult DeleteOrder(int id)
        {
            var orderdetail = db.tbl_Oder_Detail.Where(x => x.OrderId == id).ToList();
            foreach(var product in orderdetail)
            {
                db.tbl_Oder_Detail.Remove(product);
            }
            var order = db.tbl_Order.Find(id);
            db.tbl_Order.Remove(order);

            db.SaveChanges();

            return Content("<script>alert('Xóa đơn hàng thành công');window.location='/Admin/Dashboard/';</script>");
        }

        public ActionResult ChangeStatus (int id, FormCollection f)
        {

            try
            {
                var order = db.tbl_Order.Find(id);
                var status = int.Parse(f["status"]);
                order.StatusId = status;

                db.Entry(order).State = EntityState.Modified;
                db.SaveChanges();
            }
            catch
            {
                return Content("<script>alert('Lỗi');window.location='/Admin/Dashboard/';</script>");
            }

            return Content("<script>alert('Chỉnh sửa trạng thánh thành công');window.location='/Admin/Dashboard/';</script>");
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