using System.Web;
using System.Web.Optimization;

namespace DTDD_BaoThanh
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-3.2.1.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/popper.min.js",
                      "~/Scripts/bootstrap.min.js",
                      "~/Scripts/jquery.easing.min.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.min.css",
                      "~/Content/Site.css",
                      "~/Content/font-awesome.min.css",
                      "~/Content/PagedList.css"));


            // Addmin bundles 

            bundles.Add(new StyleBundle("~/Admin-DashboardCss").Include(
                       "~/Content/bootstrap.min.css",
                       "~/Content/font-awesome.min.css",
                       "~/Content/dataTables.bootstrap4.css",
                       "~/Content/admin.css"));

            bundles.Add(new ScriptBundle("~/Admin-DashboardJs").Include(
                      "~/Scripts/jquery-3.2.1.js",
                      "~/Scripts/popper.min.js",
                      "~/Scripts/bootstrap.min.js",
                      "~/Scripts/jquery.easing.min.js",
                      "~/Scripts/Chart.min.js",
                      "~/Scripts/jquery.dataTables.js",
                      "~/Scripts/dataTables.bootstrap4.js",
                      "~/Scripts/sb-admin.min.js",
                      "~/Scripts/sb-admin-datatables.min.js",
                      "~/Scripts/sb-admin-charts.min.js"));
                      
        }
    }
}
