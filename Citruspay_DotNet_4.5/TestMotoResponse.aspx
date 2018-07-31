<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestMotoResponse.aspx.cs" Inherits="Citruspay_DotNet_4._5.TestMotoResponse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html;CHARSET=iso-8859-1"/>
<title>Response</title>
<link href="css/default.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form" runat="server">
        <div id="page-header">
            <div class="page-wrap">
                <div class="logo-wrapper">
                    <a href="/citruspay-admin-site/">
                        <img height="32" width="81"
                            src="images/logo_citrus.png" alt="Citrus" />
                    </a>
                </div>
            </div>
        </div>
        <div id="page-client-logo">&#160;</div>
        <div id="page-wrapper">
            <div class="box-white">
                <div class="page-content">
                    <!-- content goes here -->
                    <div>
                        <h3>Transaction Response</h3>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>

                    </div>
                    <!-- end content -->
                </div>
            </div>
        </div>
        <div
            style="padding-left: 800px; padding-bottom: 20px; padding-top: 20px;">
            <div>Copyrights © 2018 Citrus.</div>
        </div>
    </form>
</body>
</html>
