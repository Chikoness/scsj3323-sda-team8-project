<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CounselingManagement.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            font-size: 18px;
        }
        .auto-style3 {
            font-size: 18pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: 22px">
            <span class="auto-style1"><span class="auto-style3"><strong>UTM Counseling Management System - ADD USER</strong></span><strong style="font-size: 16px"><br />
            <br />
            </strong></span><span class="auto-style2">First name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:TextBox ID="txtAddfname" runat="server"></asp:TextBox>
&nbsp;&nbsp; <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddlname" runat="server"></asp:TextBox>
            <br />
            <br />
            Occupation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddoccupation" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Role&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddrole" runat="server"></asp:TextBox>
            <br />
            <br />
            Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddphone" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddemail" runat="server" TextMode="Email"></asp:TextBox>
            <br />
            <br />
            Faculty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddfaculty" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddage" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <br />
            Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddaddress" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAdduserId" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnAdduser" runat="server" OnClick="btnAdduser_Click" Text="Add User" Width="120px" />
            <br />
            <br />
            </span>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="userId" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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
