using Citruspay_DotNet_4._5.App_Code;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Citruspay_DotNet_4._5
{
    public partial class TestSSL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                Random rnd = new Random();
                string s = string.Empty;
                for (int i = 0; i < 10; i++)
                    s = string.Concat(s, rnd.Next(10).ToString());
                string strHash = new CitrusCommunication().Generatehash512(s + DateTime.Now);
                txtMerchantTxnId.Text = strHash.ToString().Substring(0, 20);
            }
        }

        protected void btnMakePayment_Click(object sender, EventArgs e)
        {
            try
            {
                string merchantURLPart = ConfigurationManager.AppSettings["merchantURLPart"].ToString();
                string vanityURLPart = "";
                if (merchantURLPart.LastIndexOf("/") != -1)
                {
                    vanityURLPart = merchantURLPart.Substring(merchantURLPart.LastIndexOf("/") + 1);
                }
                string merchantTxnId = "";
                string orderAmount = "";
                string currency = "";
                string firstName = "";
                string lastName = "";
                string email = "";
                string addressStreet1 = "";
                string addressCity = "";
                string addressZip = "";
                string addressState = "";
                string phoneNumber = "";
                string returnUrl = "";
                string secSignature = "";
                string reqtime = "";
                merchantTxnId = txtMerchantTxnId.Text;
                orderAmount =String.Format("{0:0.00}", Convert.ToDecimal(txtOrderAmount.Text));
                currency = txtCurrency.Text;
                firstName = txtFirstName.Text;
                lastName = txtLastName.Text;
                email = txtEmail.Text;
                addressStreet1 = txtAddressStreet1.Text;
                addressCity = txtAddressCity.Text;
                addressZip = txtAddressZip.Text;
                addressState = txtAddressState.Text;
                phoneNumber = txtPhoneNumber.Text;
                returnUrl =hdnReturnUrl.Value;

                string dataZ = vanityURLPart   + orderAmount+ merchantTxnId+currency;
                secSignature = new CitrusCommunication().generateSignature(ConfigurationManager.AppSettings["secret_key"].ToString(),dataZ);
                reqtime = (DateTime.Now.Ticks / 10000).ToString();

                Hashtable data = new Hashtable(); // adding values in hash table for data post
                data.Add("key", ConfigurationManager.AppSettings["secret_key"].ToString());
                data.Add("merchantURLPart", merchantURLPart);
                data.Add("merchantTxnId", merchantTxnId);
                data.Add("orderAmount", orderAmount);
                data.Add("currency", currency);
                data.Add("firstName", firstName);
                data.Add("lastName", lastName);
                data.Add("email", email);
                data.Add("addressStreet1", addressStreet1);
                data.Add("addressCity", addressCity);
                data.Add("addressZip", addressZip);
                data.Add("addressState", addressState);
                data.Add("phoneNumber", phoneNumber);
                data.Add("returnUrl", returnUrl);
                data.Add("secSignature", secSignature);
                data.Add("reqtime", reqtime);


                string strForm = new CitrusCommunication().PostFormSeamless(merchantURLPart, data);
                Page.Controls.Add(new LiteralControl(strForm));
            }
            catch (Exception ex)
            {

            }
        }

   }
}