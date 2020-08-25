<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="arithmatic.aspx.cs" Inherits="WebApplication1.arithmatic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#0066FF" Text="Arithmatic Operation"></asp:Label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="txtNumber1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="ddlMethod" runat="server" OnSelectedIndexChanged="Page_Load">
                <asp:ListItem Value="+">Add</asp:ListItem>
                <asp:ListItem Value="-">Substract</asp:ListItem>
                <asp:ListItem Value="x">Multiplication</asp:ListItem>
                <asp:ListItem Value="/">Division</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:TextBox ID="txtNumber2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            <br />
            <br />
            <asp:Label ID="lblShow" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
