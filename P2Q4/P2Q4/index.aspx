<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="P2Q4.index" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Customer Management</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome, <asp:Label ID="Label1" runat="server"></asp:Label></h1>

        <h2>Create New Customer</h2>
        <label for="TextBox1">Customer Name:</label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        
        <label for="TextBox2">Email:</label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />

        <label for="TextBox3">Address:</label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        
        <label for="TextBox4">City:</label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />

        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" /><br />

        <h2>Customer List</h2>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</body>
</html>
