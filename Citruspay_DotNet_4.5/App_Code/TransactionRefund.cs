using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Citruspay_DotNet_4._5.App_Code
{
    public class TransactionRefund
    {
        public string merchantTxnId { get; set; }
        public string pgTxnId { get; set; }
        public string rrn { get; set; }
        public string authIdCode { get; set; }
        public string currencyCode { get; set; }
        public string amount { get; set; }
        public string txnType { get; set; }
    }
}