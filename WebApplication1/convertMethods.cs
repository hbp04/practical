using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class convertMethods
    {
        //currency list where method return index of 
        public int getCurrency(string cur)
        {
            string[] currency =  {"AUD","BRL","GBP","EUR","HKD","INR","IDR","IRR","IQD",
                                "ILS","JPY","KWD","USD","AED"};

            return Array.IndexOf(currency, cur);
        }

        public double getAmount(string currency)
        {
            double[] amount = { 1.65, 6.28 ,1,1, 9.20 , 88.94 , 17334.37 , 49962.42 ,
                                    1411.23,4.04,125.31,0.36,1.19,4.36};

            return amount[getCurrency(currency)];
        }

        public double getExchangeRate(string from,string to,double amount = 1)
        {
            //If currency are empty
            if(from == null || to == null)
            {
                return 0;
            }

            //check if both currency are similar
            if(from.ToLower() == to.ToLower())
            {
                return amount;
            }

            try
            {
                // First Get the exchange rate of both currencies in euro
                double toRate = ExchangeCurrencyIntoEur(amount,to);
                double fromRate = ExchangeCurrencyIntoEur(amount,from);

                // Convert Between Euro to Other Currency
                if (from.ToLower() == "eur")
                {
                    return  toRate;
                }
                else
                {
                    // Calculate non EURO exchange rates From A to B
                    return (amount * toRate) / fromRate;
                }

            }
            catch(Exception ex)
            {
                return 0;
            }

        }

        public double ExchangeCurrencyIntoEur(double amount,string from)
        {
            return amount * getAmount(from);
        }
    }
}