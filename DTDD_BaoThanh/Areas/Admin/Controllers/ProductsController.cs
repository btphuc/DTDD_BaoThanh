using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DTDD_BaoThanh.Models;
using System.Text;

namespace DTDD_BaoThanh.Areas.Admin.Controllers
{
    public class ProductsController : Controller
    {
        private MobileShopEntities db = new MobileShopEntities();

        // chuyển văn bản thành không dấu 
        public string convertToUnSign2(string s)
        {
            string stFormD = s.Normalize(NormalizationForm.FormD);
            StringBuilder sb = new StringBuilder();
            for (int ich = 0; ich < stFormD.Length; ich++)
            {
                System.Globalization.UnicodeCategory uc = System.Globalization.CharUnicodeInfo.GetUnicodeCategory(stFormD[ich]);
                if (uc != System.Globalization.UnicodeCategory.NonSpacingMark)
                {
                    sb.Append(stFormD[ich]);
                }
            }
            sb = sb.Replace('Đ', 'D');
            sb = sb.Replace('đ', 'd');
            return (sb.ToString().Normalize(NormalizationForm.FormD));
        }


        // GET: Admin/Products
        public ActionResult Index()
        {
            var tbl_Products = db.tbl_Products.Include(t => t.tbl_Categories);
            return View(tbl_Products.ToList());
        }

        // GET: Admin/Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_Products tbl_Products = db.tbl_Products.Find(id);
            if (tbl_Products == null)
            {
                return HttpNotFound();
            }
            return View(tbl_Products);
        }

        // GET: Admin/Products/Create
        public ActionResult Create()
        {
            ViewBag.CategoryID = new SelectList(db.tbl_Categories, "Id", "Name");
            return View();
        }

        // POST: Admin/Products/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,CategoryID,Name,Alias,Detail,Quantity,Image,Size,Weight,Color,Memory,Os,Cpu,Camera,Warranty,Price")] tbl_Products tbl_Products)
        {
            if (ModelState.IsValid)
            {
                tbl_Products.Alias = convertToUnSign2(tbl_Products.Name).Replace(" ", "-").Replace(",", "-");
                tbl_Products.Views = 0;
                tbl_Products.LastUpdate = DateTime.Now;
                tbl_Products.IsActive = true;
                db.tbl_Products.Add(tbl_Products);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CategoryID = new SelectList(db.tbl_Categories, "Id", "Name", tbl_Products.CategoryID);
            return View(tbl_Products);
        }

        // GET: Admin/Products/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_Products tbl_Products = db.tbl_Products.Find(id);
            if (tbl_Products == null)
            {
                return HttpNotFound();
            }
            ViewBag.CategoryID = new SelectList(db.tbl_Categories, "Id", "Name", tbl_Products.CategoryID);
            return View(tbl_Products);
        }

        // POST: Admin/Products/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,CategoryID,Name,Alias,Detail,Quantity,Image,Size,Weight,Color,Memory,Os,Cpu,Camera,Warranty,Price,Views,LastUpdate,IsActive")] tbl_Products tbl_Products)
        {
            if (ModelState.IsValid)
            {
                
                tbl_Products.Alias = convertToUnSign2(tbl_Products.Name).Replace(" ", "-").Replace(",", "-");
                tbl_Products.LastUpdate = DateTime.Now;
                db.Entry(tbl_Products).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CategoryID = new SelectList(db.tbl_Categories, "Id", "Name", tbl_Products.CategoryID);
            return View(tbl_Products);
        }

        // GET: Admin/Products/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_Products tbl_Products = db.tbl_Products.Find(id);
            if (tbl_Products == null)
            {
                return HttpNotFound();
            }
            return View(tbl_Products);
        }

        // POST: Admin/Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_Products tbl_Products = db.tbl_Products.Find(id);
            db.tbl_Products.Remove(tbl_Products);
            db.SaveChanges();
            return RedirectToAction("Index");
        }


        [HttpPost]
        public void UpdateIsAvtive (int id)
        {
            var product = db.tbl_Products.Find(id);
            
            if (product.IsActive == true)
            {
                product.IsActive = false;
            }
            else
            {
                product.IsActive = true;
            }

            

            db.Entry(product).State = EntityState.Modified;

            db.SaveChanges();


            Response.Write(product.IsActive);
           

        }

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
