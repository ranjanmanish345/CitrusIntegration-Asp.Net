<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestSSL.aspx.cs" Inherits="Citruspay_DotNet_4._5.TestSSL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SSL Integration</title>
    <link href="css/default.css" rel="stylesheet" type="text/css" />
     
</head>
<body>
    <form id="paymentForm" runat="server">
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
                    <div class="page">
                        <div>
                            <ul class="form-wrapper add-merchant clearfix">
                                <li class="clearfix">
                                    <label width="125px;">
                                        Transaction Number:</label>
                                    <asp:TextBox ID="txtMerchantTxnId" runat="server" CssClass="text" Text=""></asp:TextBox>
                                </li>
                                <li class="clearfix">
                                    <label width="125px;">
                                        Order Amount:</label>
                                    <asp:TextBox ID="txtOrderAmount" runat="server" CssClass="text" Text="1"></asp:TextBox>
                                </li>
                                <li class="clearfix">
                                    <label width="125px;">
                                        Currency:</label>
                                    <asp:TextBox ID="txtCurrency" runat="server" CssClass="text" Text="INR"></asp:TextBox>
                                </li>
                                <li class="clearfix">
                                    <label width="125px;">
                                        First Name :</label>
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="text" Text="hkvas"></asp:TextBox>
                                </li>
                                <li class="clearfix">
                                    <label width="125px;">
                                        Last Name :</label>
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="text" Text="dvkshd"></asp:TextBox>
                                </li>
                                <li class="clearfix">
                                    <label width="125px;">
                                        Email :</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="text" Text="manish@gmail.com"></asp:TextBox>
                                </li>
                                <p>
                                    Address Details
                                </p>
                                <li class="clearfix">
                                    <label width="125px;">
                                        Address :</label>
                                    <asp:TextBox ID="txtAddressStreet1" runat="server" CssClass="text" Text="R"></asp:TextBox>
                                    </p>                                
                                <li class="clearfix">
                                    <label width="125px;">
                                        City :</label>
                                    <asp:TextBox ID="txtAddressCity" runat="server" CssClass="text" Text="aFE"></asp:TextBox>
                                </li>
                                    <li class="clearfix">
                                        <label width="125px;">
                                            Zip Code :</label>
                                    <asp:TextBox ID="txtAddressZip" runat="server" CssClass="text" Text="821433"></asp:TextBox>
                                    </li>
                                    <li class="clearfix">
                                        <label width="125px;">
                                            State :</label>
                                    <asp:TextBox ID="txtAddressState" runat="server" CssClass="text" Text="affa"></asp:TextBox>
                                    </li>

                                    <li class="clearfix">
                                        <label width="125px;">
                                            Mobile No:</label>
                                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="text" Text="9717977313"></asp:TextBox>
                                    </li>
                                  <asp:HiddenField ID="hdnReturnUrl" runat="server" Value="http://localhost:50164/TestMotoResponse.aspx" />
                                  <asp:Button ID="btnMakePayment" runat="server" CssClass="btn-orange" Text="Make Payment" OnClick="btnMakePayment_Click" />
                            </ul>
                            <div>
                            </div>
                        </div>
                    </div>
                    <div style="padding-left: 700px; padding-bottom: 20px; padding-top: 20px;">
                        <div>
                            Copyrights © 2018 Citrus.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
