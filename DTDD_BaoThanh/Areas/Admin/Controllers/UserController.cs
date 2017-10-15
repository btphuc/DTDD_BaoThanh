using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DTDD_BaoThanh.Models;

namespace DTDD_BaoThanh.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        private MobileShopEntities db = new MobileShopEntities();

        // GET: Admin/User
        public ActionResult Index()
        {
            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Dashboard");
            }
            return View(db.tbl_Users.ToList());
        }

        // GET: Admin/User/Details/5
        public ActionResult Details(int? id)
        {
            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Dashboard");
            }
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_Users tbl_Users = db.tbl_Users.Find(id);
            if (tbl_Users == null)
            {
                return HttpNotFound();
            }
            return View(tbl_Users);
        }

        // GET: Admin/User/Delete/5
        public ActionResult Delete(int? id)
        {
            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Dashboard");
            }
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_Users tbl_Users = db.tbl_Users.Find(id);
            if (tbl_Users == null)
            {
                return HttpNotFound();
            }

            db.tbl_Users.Remove(tbl_Users);
            db.SaveChanges();
            return Content("<script>alert('Đã xóa user');window.location='/Admin/User';</script>");
        }

        // POST: Admin/User/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    tbl_Users tbl_Users = db.tbl_Users.Find(id);
        //    db.tbl_Users.Remove(tbl_Users);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
