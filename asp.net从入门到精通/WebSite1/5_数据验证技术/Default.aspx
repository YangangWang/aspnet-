<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="5_数据验证技术_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="姓名不能为空" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
        <asp:Button ID="Button1" runat="server" Text="验证" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
