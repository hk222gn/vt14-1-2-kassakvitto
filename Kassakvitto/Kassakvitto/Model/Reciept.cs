using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto.Model
{
    public class Reciept
    {
        private double _subtotal;

        public double Subtotal
        {
            get { return _subtotal; }
            set
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException();
                }
                _subtotal = value;
            }
        }

        public double DiscountRate { get; set; }

        public double MoneyOff { get; set; }

        public double Total { get; set; }

        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;
            if (Subtotal < 500)
                return;

            else if (Subtotal < 1000)
                DiscountRate = 0.05;

            else if (Subtotal < 5000)
                DiscountRate = 0.1;

            else
                DiscountRate = 0.15;

            MoneyOff = Subtotal * DiscountRate;
            Total = Subtotal - MoneyOff;
        }

        public Reciept(double subtotal)
        {
            Calculate(subtotal);
        }
    }
}