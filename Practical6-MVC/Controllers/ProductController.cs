using System.Collections.Generic;
using System.Web.Mvc;
using Practical6_MVC.Models;

namespace Practical6_MVC.Controllers
{
    public class ProductController : Controller
    {
        public ActionResult Index()
        {
            List<Product> products = new List<Product>
            {
                new Product
                {
                    ProductId = 1,
                    ProductName = "Laptop",
                    Description = "HP Laptop",
                    Price = 55000,
                    Quantity = 10
                },

                new Product
                {
                    ProductId = 2,
                    ProductName = "Mobile",
                    Description = "Samsung Mobile",
                    Price = 25000,
                    Quantity = 15
                },

                new Product
                {
                    ProductId = 3,
                    ProductName = "Headphones",
                    Description = "Wireless Headphones",
                    Price = 2000,
                    Quantity = 20
                }
            };

            return View(products);
        }
    }
}