<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Builder.aspx.cs" Inherits="CounselingManagement.Builder" %>

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
                    <asp:Button ID="btnAdduser" runat="server" OnClick="btnStudent_Click" Text="Build Student" Width="100%" CssClass="auto-margin" />
                    <br /><br />
                    <asp:Button ID="btnAdduser2" runat="server"  Text="Build Staff" Width="100%" CssClass="auto-margin" OnClick="btnAdduser2_Click" />
                    <br /><br />
                    <asp:Button ID="btnAdduser3" runat="server"  Text="Build Psychologist" Width="100%" CssClass="auto-margin" OnClick="btnAdduser3_Click" />
                </span>
            </div>
        </div>
    </form>
</body>
</html>
