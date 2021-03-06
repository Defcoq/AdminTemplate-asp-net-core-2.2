using System.Linq;
using AdminTemplate.Models;
using AdminTemplate.ViewModels;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using NLog;

namespace AdminTemplate
{
    public class HomeController: Controller
    {
    private static Logger logger = LogManager.GetCurrentClassLogger();
     private MyDbContext db = new MyDbContext();
      /*  public IActionResult Index()
        {
            return View();
        }*/


         public IActionResult Index()
        {
            logger.Debug("Hello from Home HomeController log ...");
            DashboardViewModel dashboard = new DashboardViewModel();
            
            dashboard.doctors_count = db.Doctors.Count();
            dashboard.nurses_count = db.Nurses.Count();
            dashboard.patients_count = db.Patients.Count();

            return View(dashboard);
        }
    }
}