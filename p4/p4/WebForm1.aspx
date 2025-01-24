<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="p4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Table ID="Table1" runat="server" Height="226px" Width="433px" BorderStyle="Double" BorderWidth="1px" CellPadding="4" CellSpacing="4" HorizontalAlign="Center" >
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Font-Bold="True" BorderStyle="Solid" BorderWidth="1px">ID</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True"  BorderStyle="Solid" BorderWidth="1px"> Name</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" BorderStyle="Solid" BorderWidth="1px">Salary</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">100</asp:TableCell>
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">Risab</asp:TableCell>
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">7000</asp:TableCell>

            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">101</asp:TableCell>
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">Dharmi</asp:TableCell>
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">7800</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">102</asp:TableCell>
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">Joseph</asp:TableCell>
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">8500</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">103</asp:TableCell>
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">Yamuna</asp:TableCell>
                <asp:TableCell runat="server" BorderStyle="Solid" BorderWidth="1px">9500</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    <p>
&nbsp;</p>
</body>
</html>
