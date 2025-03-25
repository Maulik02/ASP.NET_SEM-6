<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="P2Q5.index" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Books Management</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Books Management</h1>

        <label for="TextBox1">Title:</label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />

        <label for="TextBox2">Author:</label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />

        <label for="TextBox3">Price:</label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />

        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" /><br />

        <h2>Books List</h2>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</body>
</html>
