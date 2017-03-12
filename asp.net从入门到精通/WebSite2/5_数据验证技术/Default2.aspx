<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_5_数据验证技术_Default2" %>

<%@ Register src="WebUserControl.ascx" tagname="WebUserControl" tagprefix="uc1" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <iframe src="http://yangangwang.github.io" style="height: 463px; width: 609px; margin-left: 17px;"></iframe>
    </div>
        
        <dx:ASPxMenu ID="ASPxMenu1" runat="server" Theme="iOS">
            <Items>
                <dx:MenuItem Text="新闻">
                </dx:MenuItem>
                <dx:MenuItem Text="娱乐">
                    <Items>
                        <dx:MenuItem Text="体育">
                        </dx:MenuItem>
                    </Items>
                </dx:MenuItem>
                <dx:MenuItem>
                </dx:MenuItem>
            </Items>
        </dx:ASPxMenu>
        <dx:ASPxPanel ID="ASPxPanel1" runat="server" Height="560px" Width="1200px">
            
        </dx:ASPxPanel>
        
    </form>
</body>
</html>
