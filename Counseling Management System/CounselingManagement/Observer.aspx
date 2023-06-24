<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Observer.aspx.cs" Inherits="CounselingManagement.Observer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="border: 2px solid darkblue; font-size: 22px; padding: 0.5rem; margin: auto; width: 55%">
                <span class="auto-style2">
                    <asp:Button ID="btnAddAdvert1" runat="server" Text="Attach An Advertisement" Width="100%" CssClass="auto-margin" OnClick="btnAddAdvert1_Click" />
                    <br />
                    <asp:Button ID="btnRmAdvert1" runat="server" Text="Detach An Advertisement" Width="100%" CssClass="auto-margin" OnClick="btnRmAdvert1_Click" />
                    <br />
                    <asp:Button ID="btnLogicAdvert1" runat="server" Text="Submit Advertisement Details" Width="100%" CssClass="auto-margin" OnClick="btnLogicAdvert1_Click" />
                </span>
            </div>
            <br />
            <div style="margin: auto; width: 85%; text-align: center;">
                <asp:Label ID="lblAdvert" runat="server" BorderColor="#3333FF" BorderStyle="Dotted" Font-Bold="True"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
