using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTDD_BaoThanh.Models;

namespace DTDD_BaoThanh.Controllers
{
    public class HomeController : Controller
    {
        MobileShopEntities db = new MobileShopEntities();

        public ActionResult Index()
        {
            return View();
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