<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionList.aspx.cs" Inherits="Citruspay_DotNet_4._5.TransactionList" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html;CHARSET=iso-8859-1"/>
    <title>Transaction Inquiry Details</title>
    <link href="css/default.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scriptManager1" runat="server"></asp:ScriptManager>
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
                                        Enter Txn Start Date:</label>
                                    <asp:TextBox ID="txtStartDate" runat="server" CssClass="text" MaxLength="30" placeholser="YYYY-MM-DD"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtenderStartDate" runat="server" TargetControlID="txtStartDate" Format="yyyy-MM-dd" />
                                </li>
                                <li class="clearfix">
                                    <label width="125px;">
                                        Enter Txn End Date:</label>
                                    <asp:TextBox ID="txtEndDate" runat="server" CssClass="text" MaxLength="30" placeholser="YYYY-MM-DD"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtenderEndDate" runat="server" TargetControlID="txtEndDate" Format="yyyy-MM-dd" />
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
                            <asp:Label ID="lblEnquiryList" runat="server"></asp:Label>
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
