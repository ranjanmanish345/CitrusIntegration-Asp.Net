using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.IO;
using System.Security.Cryptography;

namespace Citruspay_DotNet_4._5.App_Code
{
    public class CitrusCommunication
    {
        /// <summary>
        /// Prepare html form to post
        /// </summary>
        /// <param name="strAction"></param>
        /// <param name="data"></param>
        /// <returns></returns>
        public string PostFormSeamless(string strAction,Hashtable data)
        {
            //Set a name for the form
            string formID = "PostFormSeamless";
            //Build the form using the specified data to be posted.
            StringBuilder strForm = new StringBuilder();
            strForm.Append("<form id=\"" + formID + "\" name=\"" +
                           formID + "\" action=\"" + strAction +
                           "\" method=\"POST\">");

            foreach (System.Collections.DictionaryEntry key in data)
            {
                strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                               "\" value=\"" + key.Value + "\">");
            }
            strForm.Append("</form>");
            //Build the JavaScript which will do the Posting operation.
            StringBuilder strScript = new StringBuilder();
            strScript.Append("<script language='javascript'>");
            strScript.Append("var v" + formID + " = document." +
                             formID + ";");
            strScript.Append("v" + formID + ".submit();");
            strScript.Append("</script>");
            //Return the form and the script concatenated.
            //(The order is important, Form then JavaScript)
            return strForm.ToString() + strScript.ToString();
        }

        /// <summary>
        /// generateSignature
        /// </summary>
        /// <param name="key"></param>
        /// <param name="data"></param>
        /// <returns></returns>
        public string generateSignature(string key, string data)
        {
            string strResult;
            try
            {
                byte[] key1 = Encoding.ASCII.GetBytes(key);
                HMACSHA1 myhmacsha1 = new HMACSHA1(key1);
                byte[] byteArray = Encoding.ASCII.GetBytes(data);
                MemoryStream stream = new MemoryStream(byteArray);
                strResult = myhmacsha1.ComputeHash(stream).Aggregate("", (s, e) => s + String.Format("{0:x2}", e), s => s).ToLower();


                //HMACSHA1 myhmacsha1 = new HMACSHA1(Encoding.ASCII.GetBytes(key));
                //MemoryStream stream = new MemoryStream(Encoding.ASCII.GetBytes(data));
                //strResult = BitConverter.ToString(myhmacsha1.ComputeHash(stream)).Replace("-", "").ToLower();
            }
            catch (Exception)
            {
                strResult = "";
            }
            return strResult;
        }

        /// <summary>
        /// Generate HASH for encrypt all parameter passing while transaction
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public string Generatehash512(string text)
        {
            byte[] message = Encoding.UTF8.GetBytes(text);
            UnicodeEncoding UE = new UnicodeEncoding();
            byte[] hashValue;
            SHA512Managed hashString = new SHA512Managed();
            string hex = "";
            hashValue = hashString.ComputeHash(message);
            foreach (byte x in hashValue)
            {
                hex += String.Format("{0:x2}", x);
            }
            return hex;
        }
    }
}