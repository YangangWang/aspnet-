<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="新文件夹1_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>来打死爹</title>
    <link href="../css/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#FFFBD6" />
                <DynamicSelectedStyle BackColor="#FFCC66" />
                <Items>
                    <asp:MenuItem Text="首页" Value="首页"></asp:MenuItem>
                    <asp:MenuItem Text="新闻" Value="新闻">
                        <asp:MenuItem NavigateUrl="~/5_数据验证技术/Default2.aspx" Text="娱乐新闻" Value="娱乐新闻"></asp:MenuItem>
                        <asp:MenuItem Text="体育新闻" Value="体育新闻"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#FFCC66" />
            </asp:Menu>
        </div>
        <div id="validateControl">
            <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户名不能为空！" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><br />
            <asp:Button ID="Button1" runat="server" Text="验证" OnClick="Button1_Click" /><br />
        </div>
    </form>
</body>
</html>
