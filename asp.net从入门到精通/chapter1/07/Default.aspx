<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>聊天室</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table style="width: 603px; height: 442px" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="2" style="height: 51px; font-size: 16pt; color: #ffffff; background-color: #54a4ff;">
                    聊天室</td>
            </tr>
            <tr>
                <td style="width: 404px; height: 18px">
                </td>
                <td align="left" style="width: 200px; height: 18px; font-size: 9pt; border-right-style: none; border-left-style: none;">
                    用户列表：</td>
            </tr>
            <tr>
                <td style="width: 404px; height: 354px;">
                <iframe id="Iframe1" src="Content.aspx" runat="server" scrolling="no" noresize="noResize" frameborder="0" style="width: 400px; height: 350px"></iframe>
                </td>
                <td style="width: 200px; height: 354px;">
                <iframe id="Iframe2" src="List.aspx" runat="server" frameborder="no" noresize="noResize" scrolling="no" style="width: 200px; height: 350px"></iframe>
                </td>
            </tr>
            <tr>
                <td style="width: 400px" align="left">
                    <asp:TextBox ID="txtMessage" runat="server" Width="316px"></asp:TextBox><asp:Button ID="btnSend" runat="server" Text="发送" OnClick="btnSend_Click" /><asp:Button ID="btnExit" runat="server" Text="退出" OnClick="btnExit_Click" /></td>
                <td style="width: 200px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
