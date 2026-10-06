using System;

namespace Pizza_Website
{
    [Serializable]
    public class CartItem
    {
        public int PizzaId { get; set; }
        public string PizzaName { get; set; }
        public decimal UnitPrice { get; set; }
        public int Quantity { get; set; }
        public string Size { get; set; }
        public string ImageUrl { get; set; }

        public decimal LineTotal
        {
            get { return UnitPrice * Quantity; }
        }
    }
}
