using Citruspay_DotNet_4._5.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Citruspay_DotNet_4._5
{
    public partial class TestMotoResponse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string key =ConfigurationManager.AppSettings["secret_key"].ToString();
                string data = "";
                string txnId = Request["TxId"];
                string txnStatus = Request["TxStatus"];
                string amount = Request["amount"];
                string pgTxnId = Request["pgTxnNo"];
                string issuerRefNo = Request["issuerRefNo"];
                string authIdCode = Request["authIdCode"];
                string firstName = Request["firstName"];
                string lastName = Request["lastName"];
                string pgRespCode = Request["pgRespCode"];
                string zipCode = Request["addressZip"];
                string reqSignature = Request["signature"];
                string signature = string.Empty;
                if (Request["TxId"] != null)
                {
                    data += txnId;
                }
                if (Request["TxStatus"] != null)
                {
                    data += txnStatus;
                }
                if (Request["amount"] != null)
                {
                    data += amount;
                }
                if (Request["pgTxnNo"] != null)
                {
                    data += pgTxnId;
                }
                if (Request["issuerRefNo"] != null)
                {
                    data += issuerRefNo;
                }
                if (Request["authIdCode"] != null)
                {
                    data += authIdCode;
                }
                if (Request["firstName"] != null)
                {
                    data += firstName;
                }
                if (Request["lastName"] != null)
                {
                    data += lastName;
                }
                if (Request["pgRespCode"] != null)
                {
                    data += pgRespCode;
                }
                if (Request["addressZip"] != null)
                {
                    data += zipCode;
                }
                signature = new CitrusCommunication().generateSignature(key, data);

                if (reqSignature.Equals(signature))
                {
                    //true
                    lblMsg.Text = "Signature Matched TxnId=" + txnId + " , Status=" + txnStatus+ " , issuerRefNo="+ issuerRefNo;
                }
                else
                {
                    //false;
                    lblMsg.Text = "Signature Match Fail TxnId=" + txnId + " , Status=" + txnStatus + " , issuerRefNo=" + issuerRefNo;
                }
                
            }
        }
    }
}