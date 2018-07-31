using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Citruspay_DotNet_4._5
{
    public partial class TestTransactionEnquiry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                string merchantURLPart = ConfigurationManager.AppSettings["merchantURLPart"].ToString();
                string vanityURLPart = "";
                if (merchantURLPart.LastIndexOf("/") != -1)
                {
                    vanityURLPart = merchantURLPart.Substring(merchantURLPart.LastIndexOf("/") + 1);
                }
                string merchantId = vanityURLPart;
                string merchantTxnId = txtMerchantTxnID.Text.Trim();
               
                string UrlRequest = ConfigurationManager.AppSettings["sandboxadmin"].ToString() + "/api/v2/txn/enquiry/"+ merchantTxnId;
                using (WebClient client = new WebClient())
                {
                    ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                    client.Headers["Content-type"] = "application/json";
                    client.Headers["access_key"] = ConfigurationManager.AppSettings["access_key"].ToString();
                    client.Encoding = Encoding.UTF8;
                    client.Headers.Add("Accept:application/json");
                    Stream dataStream = client.OpenRead(UrlRequest);
                    StreamReader reader = new StreamReader(dataStream);
                    string test = reader.ReadToEnd();
                    reader.Close();
                    dataStream.Close();

                    JObject obj = JObject.Parse(test);
                    JArray t_detail = (JArray)obj["enquiryResponse"];
                    foreach(var item in t_detail)
                    {
                        string respCode=(string)item["respCode"];
                        string respMsg = (string)item["respMsg"];
                        string txnId = (string)item["txnId"];
                        string authIdCode = (string)item["authIdCode"];
                        string txnType = (string)item["txnType"];
                        string txnDateTime = (string)item["txnDateTime"];
                        string amount = (string)item["amount"];
                        string txnGateway = (string)item["txnGateway"];
                        string paymentMode = (string)item["paymentMode"];
                        string issuerCode = (string)item["issuerCode"];
                        string maskedCardNumber = (string)item["maskedCardNumber"];
                        string cardType = (string)item["cardType"];
                        string cvResponseCode = (string)item["cvResponseCode"];
                        string totalRefundAmount = (string)item["totalRefundAmount"];
                        string currency = (string)item["currency"];
                        string originalAmount = (string)item["originalAmount"];
                        string adjustment = (string)item["adjustment"];
                        string ruleName = (string)item["ruleName"];
                        string couponCode = (string)item["couponCode"];
                        string offerType = (string)item["offerType"];
                        string transactionAmount = (string)item["transactionAmount"];
                        string impsMmid = (string)item["impsMmid"];
                        string impsMobileNumber = (string)item["impsMobileNumber"];
                        string merchantRefundTxId = (string)item["merchantRefundTxId"];
                        merchantTxnId = (string)item["merchantTxnId"];
                        string cardExpiryMonth = (string)item["cardExpiryMonth"];
                        string cardExpiryYear = (string)item["cardExpiryYear"];
                        string cardHolderName = (string)item["cardHolderName"];
                        string threeDsecure = (string)item["threeDsecure"];
                        string eciValue = (string)item["eciValue"];
                        string addressStreet1 = (string)item["addressStreet1"];
                        string addressStreet2 = (string)item["addressStreet2"];
                        string addressCity = (string)item["addressCity"];
                        string addressState = (string)item["addressState"];
                        string addressCountry = (string)item["addressCountry"];
                        string addressZip = (string)item["addressZip"];
                        string emiMonthlyInstallment = (string)item["emiMonthlyInstallment"];
                        string emiTenureMonth = (string)item["emiTenureMonth"];
                        string emiInterestRate = (string)item["emiInterestRate"];
                        string marketplaceTxId = (string)item["marketplaceTxId"];
                        string paymentDetailsLst = (string)item["paymentDetailsLst"];
                        string txCreatedBy = (string)item["txCreatedBy"];
                        string txClientAddr = (string)item["txClientAddr"];
                        string rrn = (string)item["rrn"];

                        lblRespCode.Text = respCode;
                        lblRespMsg.Text = respMsg;
                        lblTxnId.Text =txnId ;
                        lblAuthIdCode.Text = authIdCode;
                        lblTxnType.Text =txnType ;
                        lblTxnDateTime.Text =txnDateTime ;
                        lblAmount.Text = amount;
                        lblTxnGateway.Text = txnGateway;
                        lblPaymentMode.Text = paymentMode;
                        lblIssuerCode.Text = issuerCode;
                        lblMaskedCardNumber.Text =maskedCardNumber ;
                        lblCardType.Text =cardType ;
                        lblCvResponseCode.Text =cvResponseCode ;
                        lblTotalRefundAmount.Text = totalRefundAmount;
                        lblCurrency.Text = currency;
                        lblOriginalAmount.Text = originalAmount;
                        lblAdjustment.Text =adjustment ;
                        lblRuleName.Text = ruleName;
                        lblCouponCode.Text = couponCode;
                        lblOfferType.Text =offerType ;
                        lblTransactionAmount.Text =transactionAmount ;
                        lblImpsMmid.Text =impsMmid ;
                        lblImpsMobileNumber.Text =impsMobileNumber ;
                        lblMerchantRefundTxId.Text =merchantRefundTxId ;
                        lblMerchantTxnId.Text =merchantTxnId ;
                        lblCardExpiryMonth.Text =cardExpiryMonth ;
                        lblCardExpiryYear.Text =cardExpiryYear ;
                        lblCardHolderName.Text =cardHolderName ;
                        lblThreeDsecure.Text = threeDsecure;
                        lblEciValue.Text =eciValue ;
                        lblAddressStreet1.Text = addressStreet1;
                        lblAddressStreet2.Text = addressStreet2;
                        lblAddressCity.Text =addressCity ;
                        lblAddressState.Text =addressState ;
                        lblAddressCountry.Text =addressCountry ;
                        lblAddressZip.Text =addressZip ;
                        lblEmiMonthlyInstallment.Text =emiMonthlyInstallment ;
                        lblEmiTenureMonth.Text = emiTenureMonth;
                        lblEmiInterestRate.Text =emiInterestRate ;
                        lblMarketplaceTxId.Text =marketplaceTxId ;
                        lblPaymentDetailsLst.Text = paymentDetailsLst;
                        lblTxCreatedBy.Text =txCreatedBy ;
                        lblTxClientAddr.Text = txClientAddr;
                        lblRrn.Text = rrn;
                    }
                }
            }
            catch (Exception ex)
            {
                string s = ex.StackTrace.ToString();
            }
        }
    }
}