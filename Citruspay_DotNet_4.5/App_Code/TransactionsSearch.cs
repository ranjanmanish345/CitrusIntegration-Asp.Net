using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Citruspay_DotNet_4._5.App_Code
{
    public class TransactionsSearch
    {
        public string txnStartDate { get; set; }
        public string txnEndDate { get; set; }
        public int fromPosition { get; set; }
    }
}