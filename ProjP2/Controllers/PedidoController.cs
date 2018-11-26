using Microsoft.AspNetCore.Mvc;
using System.Text.Encodings.Web;

namespace ProjP2.Controllers
{
    public class PedidoController : Controller
    {
        // 
        // GET: /HelloWorld/

        public ActionResult Index()
        {
            return View();  
        }

        // 
        // GET: /HelloWorld/Welcome/ 

        public string Welcome()
        {
            return "This is the Welcome action method...";
        }
    }
}