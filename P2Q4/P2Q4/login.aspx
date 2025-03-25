<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="P2Q4.login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login</h1>

        <label for="TextBox1">Customer Name:</label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        
        <label for="TextBox2">Email:</label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />

        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    </form>
</body>
</html>
