using Microsoft.AspNetCore.Mvc;
using System.Text.Encodings.Web;

namespace ProjP2.Controllers
{
    public class ProdutoController : Controller
    {

        public ActionResult Index()
        {
            return View();  
        }

        public ActionResult Cadastrar()
        {

            
            return View();  
        }
    }
}