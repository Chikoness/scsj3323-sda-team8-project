<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultPage.aspx.cs" Inherits="WebApplication1.DefaultPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <strong><span class="auto-style1" style="font-size: x-large">Add New User</span><br />
            <br />
            First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddfName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddlName" runat="server"></asp:TextBox>
            <br />
            <br />
            Position&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddPosition" runat="server"></asp:TextBox>
            <br />
            <br />
            Role&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddRole" runat="server"></asp:TextBox>
            <br />
            <br />
            Phone Number&nbsp;&nbsp;
            <asp:TextBox ID="txtAddpNumber" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddEMail" runat="server"></asp:TextBox>
            <br />
            <br />
            Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddAddress" runat="server"></asp:TextBox>
            <br />
            <br />
            Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddAge" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnAddUser" runat="server" Text="Add User" OnClick="ButtonAdd_Click" style="height: 26px"/>
            <br />
            <br />
            </strong>

        </div>
    </form>
</body>
</html>
