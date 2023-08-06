﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="e-Recieptaspx.aspx.cs" Inherits="Abundance_Nk.Web.Reports.Presenter.e_Recieptaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="60000">
        </asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <p>
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </p>
                    <div class="form-group">
                        <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
                            <ProgressTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/Images/bx_loader.gif" />
                                Loading...
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

        <script src="~/Scripts/jquery-1.11.1.min.js"></script>
        <script src="../../Scripts/jquery-2.1.3.js"></script>
        <script src="../../Scripts/bootstrap.min.js"></script>
    </form>
</body>
</html>
