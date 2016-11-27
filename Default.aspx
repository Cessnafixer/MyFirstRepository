<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Chapter 14: Customer List</title>
    <link href="Main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #form1 {
            height: 650px;
        }
    </style>
</head>
<body>
    <header>
        <img src="Images/banner.jpg" alt="Halloween Store" />
    </header>
    <section>
    <form id="form1" runat="server">
    <asp:GridView ID="grdCustomers" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="LastName">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="LastName" HeaderText="LastName" ReadOnly="True" SortExpression="LastName" >
            <HeaderStyle HorizontalAlign="Left" Width="175px" />
            </asp:BoundField>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" >
            <HeaderStyle HorizontalAlign="Left" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" >
            <HeaderStyle HorizontalAlign="Left" Width="75px" />
            </asp:BoundField>
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" >
            <HeaderStyle HorizontalAlign="Left" Width="150px" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringExp %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringExp.ProviderName %>" 
            SelectCommand="SELECT [LastName], [FirstName], [City], [State] FROM [Customers] ORDER BY [LastName]"
            InsertCommand="INSERT INTO [Customers] ([LastName], [FirstName], [City], [State]) VALUES 
            (@LastName, @FirstName, @City, @State)">
            <InsertParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Halloween.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [LastName], [FirstName], [State], [City] FROM [Customers] ORDER BY [LastName]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Enter Last Name, First Name, City, State"></asp:Label><br />
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnAdd" runat="server" Text="Add New Entry" OnClick="btnAdd_Click" /><br />
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    </form>
    </section>
</body>
</html>