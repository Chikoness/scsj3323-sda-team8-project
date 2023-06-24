<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CounselingManagement.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .forms-container {
            display: flex;
            flex-direction: row;
        }

        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            font-size: 18px;
        }
        .auto-style3 {
            font-size: 18pt;
        }
        .center-text {
            text-align: center;
        }
        .auto-margin {
            margin: 0 50px 0 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class=" center-text auto-style3"><strong>UTM Counseling Management System</strong></p>

        <div class="forms-container">
            <div style="border: 2px solid darkblue; font-size: 22px; padding: 0.5rem; margin: auto; width: 45%">
                <p class="auto-style1 auto-style2"><strong>Add New User</strong></p>
                <span class="auto-style2">
                <asp:Table ID="Table1" runat="server" Width="100%" CellPadding="5" CellSpacing="10" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell>First name&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAddfname" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>Last Name&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAddlname" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Occupation&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAddoccupation" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>Role&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlAddRole" runat="server">
                                <asp:ListItem Value="staff">Staff</asp:ListItem>
                                <asp:ListItem Value="student">Student</asp:ListItem>
                                <asp:ListItem Value="psychologist">Psychologist</asp:ListItem>
                            </asp:DropDownList>
                         </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Phone No.&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAddphone" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>Email&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAddemail" runat="server" TextMode="Email"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Faculty&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAddfaculty" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>Age&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAddage" runat="server" TextMode="Number"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Address&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAddaddress" runat="server" TextMode="MultiLine"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>User ID&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAdduserId" runat="server" TextMode="Number"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>                
                <asp:Button ID="btnAdduser" runat="server" OnClick="btnAdduser_Click" Text="Add User" Width="50%" CssClass="auto-margin" />
                </span>
            </div>

             <div style="border: 2px solid darkblue; font-size: 22px; padding: 0.5rem; margin: auto;width: 45%">
                <p class="auto-style1 auto-style2"><strong>Edit User</strong></p>
                <span class="auto-style2">
                    <p class="center-text">
                        User ID&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownListId" runat="server" DataSourceID="SqlDataSource1" DataTextField="id" DataValueField="id"> </asp:DropDownList>
                        <br />
                        <asp:Label ID="lblUserId" runat="server"></asp:Label>
                    </p>
                <asp:Table ID="Table2" runat="server" Width="100%" CellPadding="5" CellSpacing="10" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell>First name&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtEditfname" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>Last Name&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtEditlname" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Occupation&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtEditoccupation" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>Role&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlEditRole" runat="server">
                                <asp:ListItem Value="staff">Staff</asp:ListItem>
                                <asp:ListItem Value="student">Student</asp:ListItem>
                                <asp:ListItem Value="psychologist">Psychologist</asp:ListItem>
                            </asp:DropDownList></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Phone No.&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtEditphone" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>Email&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtEditemail" runat="server" TextMode="Email"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Faculty&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtEditfaculty" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>Age&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtEditage" runat="server" TextMode="Number"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Address&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtEditaddress" runat="server" TextMode="MultiLine"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                    <asp:Button ID="btnGetuser" runat="server" OnClick="btnGetuser_Click" Text="Get A User" Width="50%" CssClass="auto-margin" />
                    <asp:Button ID="btnEditUser" runat="server" OnClick="btnEdituser_Click" Text="Edit This User" Width="50%" CssClass="auto-margin" />
                    <asp:Button ID="btnDeleteUser" runat="server" OnClick="btnDeleteuser_Click" Text="Delete This User" Width="50%" CssClass="auto-margin" />
                </span>
            </div>
        </div>

        <p class="center-text auto-style1 "><strong>User List</strong></p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" AllowSorting="True" HorizontalAlign="Center" DataKeyNames="userId">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" SortExpression="id" />
                <asp:BoundField DataField="userId" HeaderText="UserId" SortExpression="userId" ReadOnly="True" />
                <asp:BoundField DataField="fName" HeaderText="First Name" SortExpression="fName" />
                <asp:BoundField DataField="lName" HeaderText="Last Name" SortExpression="lName" />
                <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
                <asp:BoundField DataField="occupation" HeaderText="Occupation" SortExpression="occupation" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="faculty" HeaderText="Faculty" SortExpression="faculty" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMUTM_DBConnectionString %>" SelectCommand="SELECT * FROM [User]" OldValuesParameterFormatString="original_{0}">
        </asp:SqlDataSource>
    </form>
</body>
</html>
