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
                        <asp:DropDownList ID="DropDownListUserId" runat="server" DataSourceID="SqlDataSource1" DataTextField="userId" DataValueField="userId"> </asp:DropDownList>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="userId" DataSourceID="SqlDataSource1" AllowSorting="True" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="userId" HeaderText="ID" ReadOnly="True" SortExpression="userId" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMUTM_DBConnectionString %>" SelectCommand="SELECT * FROM [User]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [User] WHERE [userId] = @original_userId AND [fName] = @original_fName AND [lName] = @original_lName AND [role] = @original_role AND (([occupation] = @original_occupation) OR ([occupation] IS NULL AND @original_occupation IS NULL)) AND [phone] = @original_phone AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([faculty] = @original_faculty) OR ([faculty] IS NULL AND @original_faculty IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL))" InsertCommand="INSERT INTO [User] ([userId], [fName], [lName], [role], [occupation], [phone], [email], [address], [faculty], [age]) VALUES (@userId, @fName, @lName, @role, @occupation, @phone, @email, @address, @faculty, @age)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [User] SET [fName] = @fName, [lName] = @lName, [role] = @role, [occupation] = @occupation, [phone] = @phone, [email] = @email, [address] = @address, [faculty] = @faculty, [age] = @age WHERE [userId] = @original_userId AND [fName] = @original_fName AND [lName] = @original_lName AND [role] = @original_role AND (([occupation] = @original_occupation) OR ([occupation] IS NULL AND @original_occupation IS NULL)) AND [phone] = @original_phone AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([faculty] = @original_faculty) OR ([faculty] IS NULL AND @original_faculty IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_userId" Type="Int32" />
                <asp:Parameter Name="original_fName" Type="String" />
                <asp:Parameter Name="original_lName" Type="String" />
                <asp:Parameter Name="original_role" Type="String" />
                <asp:Parameter Name="original_occupation" Type="String" />
                <asp:Parameter Name="original_phone" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_faculty" Type="String" />
                <asp:Parameter Name="original_age" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userId" Type="Int32" />
                <asp:Parameter Name="fName" Type="String" />
                <asp:Parameter Name="lName" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="occupation" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="faculty" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fName" Type="String" />
                <asp:Parameter Name="lName" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="occupation" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="faculty" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="original_userId" Type="Int32" />
                <asp:Parameter Name="original_fName" Type="String" />
                <asp:Parameter Name="original_lName" Type="String" />
                <asp:Parameter Name="original_role" Type="String" />
                <asp:Parameter Name="original_occupation" Type="String" />
                <asp:Parameter Name="original_phone" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_faculty" Type="String" />
                <asp:Parameter Name="original_age" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
