<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="moneyConverter.aspx.cs" Inherits="WebApplication1.moneyConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--Bootstrap CSS--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <%--Bootstrap JS--%>
    <script src="bootstrap/js/jquery-3.5.1.slim.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <%-- <div class="row">--%>
        <div class="container justify-content-center col-4 text-center mt-5">
            <%-- <div class="col-4">--%>
            <div class="card">
                <div class="card-header">
                    <h2>Money Converter</h2>
                </div>
                <div class="card-body">
                    <div class="form-group">

                        <asp:DropDownList CssClass="form-control" ID="DropDownListMoneyConvertFrom" runat="server" OnSelectedIndexChanged="Page_Load">

                            <asp:ListItem Value="AUD">Australian Dollar</asp:ListItem>
                            <asp:ListItem Value="BRL">Brazilian Real</asp:ListItem>
                            <asp:ListItem Value="GBP">British Pound</asp:ListItem>
                            <asp:ListItem Value="EUR">Euro</asp:ListItem>
                            <asp:ListItem Value="HKD">Hong Kong Dollar</asp:ListItem>
                            <asp:ListItem Value="INR" Selected="True">Indian Rupee</asp:ListItem>
                            <asp:ListItem Value="IDR">Indonesian Rupiah</asp:ListItem>
                            <asp:ListItem Value="IRR">Iranian Rial</asp:ListItem>
                            <asp:ListItem Value="IQD">Iraqi Dinar</asp:ListItem>
                            <asp:ListItem Value="ILS">Israeli New Shekel</asp:ListItem>
                            <asp:ListItem Value="JPY">Japanese Yen</asp:ListItem>
                            <asp:ListItem Value="KWD">Kuwaiti Dinar</asp:ListItem>
                            <asp:ListItem Value="USD">US Dollar</asp:ListItem>
                            <asp:ListItem Value="AED">Ut. Arab Emir. Dirham</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="txtConvertFrom" runat="server" CssClass="form-control mt-3"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblShow" runat="server" Text="To" CssClass="badge badge-pill badge-dark mb-3"></asp:Label>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList CssClass="form-control" ID="DropDownListMoneyConvertTo" runat="server" OnSelectedIndexChanged="Page_Load">
                            <asp:ListItem Value="AUD">Australian Dollar</asp:ListItem>
                            <asp:ListItem Value="BRL">Brazilian Real</asp:ListItem>
                            <asp:ListItem Value="GBP">British Pound</asp:ListItem>
                            <asp:ListItem Value="EUR">Euro</asp:ListItem>
                            <asp:ListItem Value="HKD">Hong Kong Dollar</asp:ListItem>
                            <asp:ListItem Value="INR">Indian Rupee</asp:ListItem>
                            <asp:ListItem Value="IDR">Indonesian Rupiah</asp:ListItem>
                            <asp:ListItem Value="IRR">Iranian Rial</asp:ListItem>
                            <asp:ListItem Value="IQD">Iraqi Dinar</asp:ListItem>
                            <asp:ListItem Value="ILS">Israeli New Shekel</asp:ListItem>
                            <asp:ListItem Value="JPY">Japanese Yen</asp:ListItem>
                            <asp:ListItem Value="KWD">Kuwaiti Dinar</asp:ListItem>
                            <asp:ListItem Value="USD" Selected="True">US Dollar</asp:ListItem>
                            <asp:ListItem Value="AED">Ut. Arab Emir. Dirham</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="txtConvertTo" runat="server" CssClass="form-control mt-3"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnConvert" runat="server" Text="Convert"
                            CssClass="btn btn-block btn-primary" OnClick="btnConvert_Click" />
                    </div>
                </div>
            </div>
        </div>
        <%--  </div>
        </div>--%>
    </form>
</body>
</html>
