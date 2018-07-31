<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestTransactionEnquiry.aspx.cs" Inherits="Citruspay_DotNet_4._5.TestTransactionEnquiry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html;CHARSET=iso-8859-1"/>
    <title>Transaction Inquiry Details</title>
    <link href="css/default.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="page-header">
                <div class="page-wrap">
                    <div class="logo-wrapper">
                        <a href="/citruspay-admin-site/">
                            <img height="32" width="81" src="images/logo_citrus.png" alt="Citrus" />
                        </a>
                    </div>
                </div>
            </div>
            <div id="page-client-logo">
                &#160;
            </div>
            <div id="page-wrapper">
                <div class="box-white">
                    <div class="page-content">
                        <!-- content goes here -->
                        <div class="paddling-lef:5px;">
                            <h2>Transaction Enquiry</h2>
                        </div>
                        <div>
                            <ul class="form-wrapper add-merchant clearfix">
                                <li class="clearfix">
                                    <label width="125px;">
                                        Merchant Txn ID:</label>
                                    <asp:TextBox ID="txtMerchantTxnID" runat="server"  CssClass="text" maxlength="64"></asp:TextBox>
                                    </li>
                                <li>
                                    <label width="125px;">
                                        &nbsp;</label>
                                    <asp:Button ID="btnSearch" runat="server" CssClass="btn-orange" Text="Search" OnClick="btnSearch_Click" />

                                </li>
                            </ul>
                        </div>
                 
                        <br />
                        <div class="paddling-lef:5px;">
                           <h2>Transaction Enquiry Result</h2>
                            <table>
                                <tr>
                                    <td><b>RespCode:</b></td>
                                    <td><asp:Label ID="lblRespCode" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>RespMsg:</b></td>
                                    <td><asp:Label ID="lblRespMsg" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>TxnId:</b></td>
                                    <td><asp:Label ID="lblTxnId" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>AuthIdCode:</b></td>
                                    <td><asp:Label ID="lblAuthIdCode" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>TxnType:</b></td>
                                    <td><asp:Label ID="lblTxnType" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>TxnDateTime:</b></td>
                                    <td><asp:Label ID="lblTxnDateTime" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>Amount:</b></td>
                                    <td><asp:Label ID="lblAmount" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>TxnGateway:</b></td>
                                    <td><asp:Label ID="lblTxnGateway" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>PaymentMode:</b></td>
                                    <td><asp:Label ID="lblPaymentMode" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>IssuerCode:</b></td>
                                    <td><asp:Label ID="lblIssuerCode" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>MaskedCardNumber:</b></td>
                                    <td><asp:Label ID="lblMaskedCardNumber" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>CardType:</b></td>
                                    <td><asp:Label ID="lblCardType" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>CvResponseCode:</b></td>
                                    <td><asp:Label ID="lblCvResponseCode" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>TotalRefundAmount:</b></td>
                                    <td><asp:Label ID="lblTotalRefundAmount" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>Currency:</b></td>
                                    <td><asp:Label ID="lblCurrency" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>OriginalAmount:</b></td>
                                    <td><asp:Label ID="lblOriginalAmount" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>Adjustment:</b></td>
                                    <td><asp:Label ID="lblAdjustment" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>RuleName:</b></td>
                                    <td><asp:Label ID="lblRuleName" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>CouponCode:</b></td>
                                    <td><asp:Label ID="lblCouponCode" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>OfferType:</b></td>
                                    <td><asp:Label ID="lblOfferType" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>TransactionAmount:</b></td>
                                    <td><asp:Label ID="lblTransactionAmount" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>ImpsMmid:</b></td>
                                    <td><asp:Label ID="lblImpsMmid" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>ImpsMobileNumber:</b></td>
                                    <td><asp:Label ID="lblImpsMobileNumber" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>MerchantRefundTxId:</b></td>
                                    <td><asp:Label ID="lblMerchantRefundTxId" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>MerchantTxnId:</b></td>
                                    <td><asp:Label ID="lblMerchantTxnId" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>CardExpiryMonth:</b></td>
                                    <td><asp:Label ID="lblCardExpiryMonth" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>CardExpiryYear:</b></td>
                                    <td><asp:Label ID="lblCardExpiryYear" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>CardHolderName:</b></td>
                                    <td><asp:Label ID="lblCardHolderName" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>ThreeDsecure:</b></td>
                                    <td><asp:Label ID="lblThreeDsecure" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>EciValue:</b></td>
                                    <td><asp:Label ID="lblEciValue" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>AddressStreet1:</b></td>
                                    <td><asp:Label ID="lblAddressStreet1" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>AddressStreet2:</b></td>
                                    <td><asp:Label ID="lblAddressStreet2" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>AddressCity:</b></td>
                                    <td><asp:Label ID="lblAddressCity" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>AddressState:</b></td>
                                    <td><asp:Label ID="lblAddressState" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>AddressCountry:</b></td>
                                    <td><asp:Label ID="lblAddressCountry" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>AddressZip:</b></td>
                                    <td><asp:Label ID="lblAddressZip" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>EmiMonthlyInstallment:</b></td>
                                    <td><asp:Label ID="lblEmiMonthlyInstallment" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>EmiTenureMonth:</b></td>
                                    <td><asp:Label ID="lblEmiTenureMonth" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>EmiInterestRate:</b></td>
                                    <td><asp:Label ID="lblEmiInterestRate" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>MarketplaceTxId:</b></td>
                                    <td><asp:Label ID="lblMarketplaceTxId" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>PaymentDetailsLst:</b></td>
                                    <td><asp:Label ID="lblPaymentDetailsLst" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>TxCreatedBy:</b></td>
                                    <td><asp:Label ID="lblTxCreatedBy" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>TxClientAddr:</b></td>
                                    <td><asp:Label ID="lblTxClientAddr" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><b>Rrn:</b></td>
                                    <td><asp:Label ID="lblRrn" runat="server"></asp:Label></td>
                                </tr>
                            </table>
                        </div>
                        <!-- end content -->
                    </div>
                </div>
            </div>
            <div style="padding-left: 800px; padding-bottom: 20px; padding-top: 20px;">
                <div>
                    Copyrights © 2018 Citrus.
                </div>
            </div>
        </div>
    </form>
</body>
</html>
