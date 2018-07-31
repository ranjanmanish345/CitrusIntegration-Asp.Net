<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Citruspay_DotNet_4._5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta content="NO-CACHE" http-equiv="PRAGMA"/>        
     <link href="css/default.css" type="text/css" rel="stylesheet" />
    <style>
        body{
            overflow-x:hidden;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">
        <div>
            <div id="page-header">
                <div class="page-wrap">
                    <div class="logo-wrapper">
                        <a href="/demo">
                            <img alt="Citrus" height="32" width="81" src="images/logo_citrus.png" />
                        </a>
                    </div>
                    <div class="login-wrapper">
                        <a href="/demo"></a>
                    </div>
                    <div class="clear"></div>
                    <asp:HiddenField ID="home_page_url" runat="server" Value="" />
                </div>
            </div>
            <div id="page-client-logo">&nbsp;</div>
            <div id="page-wrapper">
                <div class="box-white">
                    <div id="page-content">
                        <div>
                            <div style="text-align: center;">
                                <h3>Welcome to Citruspay Sample merchant development kit.
                                </h3>
                                <br />
                                &nbsp;<br />
                                <a href="TestSSL.aspx" target="_blank">SSL Integration</a><br />
                                &nbsp;<br />
                                <a href="TestMoto.aspx" target="_blank">MOTO Integration</a><br />
                                &nbsp;<br />
                                <a href="TestTransactionEnquiry.aspx" target="_blank">Transaction Enquiry</a><br />
                                &nbsp;<br />
                                <a href="TestRefund.aspx" target="_blank">Refund</a><br />
                                &nbsp;<br />
                                <a href="TransactionList.aspx" target="_blank">Search Transaction Details</a><br />
                                &nbsp;<br />
                            </div>
                        </div>
                        <div class="clear">&nbsp;</div>
                    </div>
                </div>
            </div>
            <div id="footer">
                <div style="padding-left: 850px; padding-bottom: 20px; padding-top: 20px;">
                    <div align="right">Copyrights © 2018 Citrus.</div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
