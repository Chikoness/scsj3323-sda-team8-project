<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PsychologyTest.aspx.cs" Inherits="CounselingManagement.PsychologyTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        div {
            margin-top: 5px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Psychology Test Result</h2>
            <asp:Table ID="Table1" runat="server" Width="650px" CellPadding="5" CellSpacing="5" HorizontalAlign="Center" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell><asp:Label runat="server" Text="Score" ID="lblScore" Font-Size="Larger" Font-Bold="True"></asp:Label></asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center"><asp:TextBox runat="server" ID="txtScore" Width="95%" Height="24" Font-Size="Larger" TextMode="Number"></asp:TextBox></asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell><asp:Label runat="server" Text="Category" ID="lblCat" Font-Size="Larger" Font-Bold="True"></asp:Label></asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:DropDownList ID="ddlCat" runat="server" Width="95%" Font-Size="Larger">
                            <asp:ListItem Value="normal">Normal</asp:ListItem>
                            <asp:ListItem Value="advanced">Advanced</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                 </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Button runat="server" Text="Get Test Result" Font-Bold="True" Font-Size="Larger" Height="30px" Width="275px" ID="btnSubmit" OnClick="btnSubmit_Click" />
            <br />
            <asp:Label ID="lblError" runat="server" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
            <br /><br /><br /><br />
            <asp:Label runat="server" ID="lblText" Font-Size="Larger" Font-Bold="True" Text="Your Result" Visible="False" ForeColor="#660066" Font-Underline="True"></asp:Label>
            <br />
            <asp:Label ID="lblRes" runat="server" Font-Size="Large"></asp:Label>
            <br /><br /><br />
            <asp:Label ID="lblRes2" runat="server" Font-Size="X-Large" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="lblRes3" runat="server" Font-Size="X-Large" Font-Bold="True"></asp:Label>
        </div>
    </form>
</body>
</html>
