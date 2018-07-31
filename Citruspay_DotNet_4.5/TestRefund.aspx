<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestRefund.aspx.cs" Inherits="Citruspay_DotNet_4._5.TestRefund" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html;CHARSET=iso-8859-1"/>
    <title>Refund</title>
    <link href="css/default.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
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
        &#160;</div>
    <div id="page-wrapper">
        <div class="box-white">
            <div class="page-content">
                <!-- content goes here -->
                <div>
                    <h2>
                        Refund</h2>
                </div>
                <div>
                    <ul class="form-wrapper add-merchant clearfix">
                        <li class="clearfix">
                            <label width="125px;">
                                Merchant Txn ID:</label>
                            <asp:TextBox ID="txtMerchantTxnID" runat="server" CssClass="text" MaxLength="64"></asp:TextBox>
                        </li>
                        <li class="clearfix">
                            <label width="125px;">
                                Enter pgTxnId :</label>
                            <asp:TextBox ID="txtPgTxnId" runat="server" CssClass="text" MaxLength="64"></asp:TextBox>
                        </li>
                        <li class="clearfix">
                            <label width="125px;">
                                Enter RRN No :</label>
                            <asp:TextBox ID="txtRrn" runat="server" CssClass="text" MaxLength="64"></asp:TextBox>
                        </li>
                        <li class="clearfix">
                            <label width="125px;">
                                Enter authIdCode:</label>
                            <asp:TextBox ID="txtAuthIdCode" runat="server" CssClass="text" MaxLength="64"></asp:TextBox>
                        </li>
                        <li class="clearfix">
                            <label width="125px;">
                                Enter Curr Code :</label>
                            <asp:TextBox ID="txtCurrCode" runat="server" CssClass="text" MaxLength="64" Text="INR"></asp:TextBox>
                        </li>
                        <li class="clearfix">
                            <label width="125px;">
                                Enter the Amount:</label>
                            <asp:TextBox ID="txtAmount" runat="server" CssClass="text" MaxLength="64" ></asp:TextBox>
                        </li>
                        <li>
                            <label width="125px;">
                                &nbsp;</label>
                           <asp:Button ID="btnRefund" runat="server" CssClass="btn-orange" Text="Refund" OnClick="btnRefund_Click"/>
                        </li>
                    </ul>
                </div>
                <div>
                    <h3>
                        Transaction Refund Response</h3>
                    <ul class="tbl-wrapper clearfix" id="chkoutPageUserPramList">
						<li class="tbl-header">
							<div class="tbl-col col-1">Response Code</div>
							<div class="tbl-col col-2">Response Message</div>
							<div class="tbl-col col-3">Txn Id</div>
							<div class="tbl-col col-4">Epg Txn Id</div>
							<div class="tbl-col col-5">AuthIdCode:</div>
							<div class="tbl-col col-6">Issuer Ref. No.</div>
							<div class="tbl-col col-7">Txn Amount</div>
						</li>

						<li>
							<div class="tbl-col col-1">
                                <asp:Label ID="lblRespCode" runat="server"></asp:Label>
							</div>
							<div class="tbl-col col-2">
                                <asp:Label ID="lblRespMsg" runat="server"></asp:Label>
							</div>
							<div class="tbl-col col-3">
                                <asp:Label ID="lblTxnId" runat="server"></asp:Label>
							</div>
							<div class="tbl-col col-4">
                                <asp:Label ID="lblPgTxnId" runat="server"></asp:Label>
							</div>
							<div class="tbl-col col-5">
                                <asp:Label ID="lblAuthIdCode" runat="server"></asp:Label>
							</div>
							<div class="tbl-col col-6">
                                <asp:Label ID="lblRRN" runat="server"></asp:Label>
							</div>
							<div class="tbl-col col-7">
                                <asp:Label ID="lblAmount" runat="server"></asp:Label>
							</div>
						</li>
					</ul>
                </div>
                <!-- end content -->
            </div>
        </div>
    </div>
    <div style="padding-left: 800px; padding-bottom: 20px; padding-top: 20px;">
        <div>
            Copyrights © 2018 Citrus.</div>
    </div>
    </form>
</body>
</html>
