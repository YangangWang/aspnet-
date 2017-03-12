<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="chapter1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="lbl1" Font-Size="36px" BackColor="AliceBlue" ForeColor="Blue">聊天室</asp:Label><br />
            <iframe src="Content.aspx" id="iContent" runat="server"></iframe>
            <iframe src="listpage.aspx" id="iListPage" runat="server"></iframe><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="btnSend" runat="server" Text="send" OnClick="btnSend_Click"/>
            <asp:Button ID="btnExit" runat="server" Text="exit" OnClick="btnExit_Click"/>
        </div>
    </form>
</body>
</html>

