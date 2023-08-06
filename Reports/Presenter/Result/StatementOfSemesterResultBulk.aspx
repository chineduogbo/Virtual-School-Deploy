﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StatementOfSemesterResultBulk.aspx.cs" Inherits="Abundance_Nk.Web.Reports.Presenter.Result.StatementOfSemesterResultBulk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../../../Content/bootstrap.css" rel="stylesheet" />
    <script src="../../../Scripts/bootstrap.js"></script>
    <link href="../../../Content/misc.css" rel="stylesheet" />
</head>
<body style="border: none; margin: 0; padding: 0">
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="60000">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <p>
                        <asp:Label ID="lblMessage" runat="server" BackColor="Yellow" ForeColor="Red"></asp:Label>
                    </p>

                    <div class="contentpanel">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label class="sr-only" for="ddlSession"></label>
                                        <asp:DropDownList ID="ddlSession" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="ddlLevel"></label>
                                        <asp:DropDownList ID="ddlLevel" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label class="sr-only" for="ddlProgramme"></label>
                                        <asp:DropDownList ID="ddlProgramme" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProgramme_SelectedIndexChanged"></asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label class="sr-only" for="ddlDepartment"></label>
                                        <asp:DropDownList ID="ddlDepartment" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <asp:Button ID="btnDisplayReport" CssClass="btn btn-success mr5" runat="server" Text="Process Files" OnClick="btnDisplayReport_Click" />
                                    </div>
                                    <div class="form-group">
                                        <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
                                            <ProgressTemplate>
                                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/Images/bx_loader.gif" />
                                                Loading...
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>