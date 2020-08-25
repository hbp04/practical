<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="factorial.aspx.cs" Inherits="WebApplication1.factorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtNumber" runat="server" Font-Size="Larger" Height="55px" ToolTip="Please Enter Number" Width="262px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Size="Medium" ForeColor="#0099FF" Height="49px" OnClick="btnSubmit_Click" Text="Find Factorial" Width="167px" />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblShow" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#0033CC"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
