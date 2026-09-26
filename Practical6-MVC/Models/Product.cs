using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Practical6_MVC.Models
{
    public class Product
    {
        public int ProductId { get; set; }

        public string ProductName { get; set; }

        public string Description { get; set; }

        public decimal Price { get; set; }

        public int Quantity { get; set; }
    }
}