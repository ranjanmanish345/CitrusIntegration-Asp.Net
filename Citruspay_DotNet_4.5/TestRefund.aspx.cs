using Citruspay_DotNet_4._5.App_Code;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Citruspay_DotNet_4._5
{
    public partial class TestRefund : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRefund_Click(object sender, EventArgs e)
        {
            try
            {
                string UrlRequest = ConfigurationManager.AppSettings["sandboxadmin"].ToString() + "/api/v2/txn/refund";
                //data to send
                //NameValueCollection myData = new NameValueCollection();
                //myData.Add("merchantTxnId", txtMerchantTxnID.Text);
                //myData.Add("pgTxnId", txtPgTxnId.Text);
                //myData.Add("rrn", txtRrn.Text);
                //myData.Add("authIdCode", txtAuthIdCode.Text);
                //myData.Add("currencyCode",txtCurrCode.Text);
                //myData.Add("amount",txtAmount.Text);
                //myData.Add("txnType", "Refund");
                TransactionRefund tRefund = new TransactionRefund();
                tRefund.merchantTxnId = txtMerchantTxnID.Text;
                tRefund.pgTxnId = txtPgTxnId.Text;
                tRefund.rrn = txtRrn.Text;
                tRefund.authIdCode = txtAuthIdCode.Text;
                tRefund.currencyCode = txtCurrCode.Text;
                tRefund.amount = txtAmount.Text;
                tRefund.txnType = "Refund";
                string dataZ = "merchantAccessKey=" + ConfigurationManager.AppSettings["access_key"].ToString() + "&transactionId=" + txtMerchantTxnID.Text + "&amount=" + txtAmount.Text;
                string secSignature = new CitrusCommunication().generateSignature(ConfigurationManager.AppSettings["secret_key"].ToString(), dataZ);

                var DataToSend = new JavaScriptSerializer().Serialize(tRefund);
                using (WebClient client = new WebClient())
                {
                    ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                    client.Headers["access_key"] = ConfigurationManager.AppSettings["access_key"].ToString();
                    client.Headers["signature"] = secSignature;
                    client.Headers["Content-Type"] = "application/json";
                    client.Headers["Accept"] = "application/json";

                    string strResponse = client.UploadString(UrlRequest, "POST", DataToSend);
                    JObject obj = JObject.Parse(strResponse);
                    lblRespCode.Text =(string)obj["respCode"];
                    lblRespMsg.Text = (string)obj["respMsg"];
                    lblTxnId.Text = (string)obj["merchantTxnId"];
                    lblPgTxnId.Text = (string)obj["pgTxnId"];
                    lblAuthIdCode.Text = (string)obj["authIdCode"];
                    lblRRN.Text = (string)obj["rrn"];
                    lblAmount.Text = (string)obj["amount"];

                }
            }
            catch (Exception ex)
            {
            }
        }
    }
}