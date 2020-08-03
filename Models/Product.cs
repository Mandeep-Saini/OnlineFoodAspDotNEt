using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineFoodDelivery.Models
{
	public class Product
	{
		public string ProductId { get; set; }
		public string ProductName { get; set; }
		public string Description { get; set; }
		public decimal Price { get; set; }
		public string ProductImage { get; set; }
	}
}