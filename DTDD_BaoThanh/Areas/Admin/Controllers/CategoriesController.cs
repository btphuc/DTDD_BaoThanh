using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTDD_BaoThanh.Models;
using System.Data.Entity;

namespace DTDD_BaoThanh.Areas.Admin.Controllers
{
    public class CategoriesController : Controller
    {

        private MobileShopEntities db = new MobileShopEntities();


        // GET: Admin/Categories
        public ActionResult Index()
        {
            if (Session["Admin"] == null)
            {
                return RedirectToAction("Login", "Dashboard");
            }
            return View();
        }

        public ActionResult GetCategories()
        {
            var CategoriesList = db.tbl_Categories.Select(m => new
            {
                Id = m.Id,
                Name = m.Name

            }).ToList();
            return Json(CategoriesList, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetCategoryByID(int id)
        {
            var item = db.tbl_Categories.Select(m => new
            {
                Id = m.Id,
                Name = m.Name

            }).Where(m=>m.Id == id);

            return Json(item, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Create([Bind(Include ="Id,Name")] tbl_Categories NewCategory)
        {
            if (ModelState.IsValid)
            {
                db.tbl_Categories.Add(NewCategory);
                db.SaveChanges();
            }

            return Json(NewCategory, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Edit(tbl_Categories Category)
        {
            if (ModelState.IsValid)
            {
                db.Entry(Category).State = EntityState.Modified;
                db.SaveChanges();

            }
            return Json(Category, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete (int id)
        {
            var category = db.tbl_Categories.Find(id);
            if(category != null)
            {
                db.tbl_Categories.Remove(category);
                db.SaveChanges();
            }
            return Json(category, JsonRequestBehavior.AllowGet);
        }

    }
}