using Citruspay_DotNet_4._5.App_Code;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Citruspay_DotNet_4._5
{
    public partial class TransactionList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            lblEnquiryList.Text = "";
            try
            {
                DateTime startDate;
                DateTime endDate;
                string strStartDate;
                string strEndDate;
                if (DateTime.TryParse(txtStartDate.Text, out startDate))
                {
                    strStartDate = startDate.ToString("yyyyMMdd");
                }
                else
                {
                    txtStartDate.Text = string.Empty;
                    lblEnquiryList.Text = "Invalid Start Date Format";
                    return;
                }
                if (DateTime.TryParse(txtEndDate.Text, out endDate))
                {
                    strEndDate = endDate.ToString("yyyyMMdd");
                }
                else
                {
                    txtEndDate.Text = string.Empty;
                    lblEnquiryList.Text = "Invalid End Date Format";
                    return;
                }

                string UrlRequest = ConfigurationManager.AppSettings["sandboxadmin"].ToString() + "/api/v2/txn/search";
                //data to post
                TransactionsSearch ts = new TransactionsSearch();
                ts.txnStartDate = strStartDate;
                ts.txnEndDate = strEndDate;
                ts.fromPosition = 0;
                var DataToSend = new JavaScriptSerializer().Serialize(ts);

                using (WebClient client = new WebClient())
                {
                    ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                    client.Headers["access_key"] = ConfigurationManager.AppSettings["access_key"].ToString();
                    client.Headers["Accept"] = "application/json";
                    client.Headers["Content-Type"] = "application/json";
                    string strResponse = client.UploadString(UrlRequest,"POST", DataToSend);
                    //JObject obj = JObject.Parse(strResponse);
                    lblEnquiryList.Text = strResponse;

                }

            }
            catch (Exception ex)
            {
                lblEnquiryList.Text = "Invalid Date Format "+ex.Message.ToString();
            }
        }
    }
}