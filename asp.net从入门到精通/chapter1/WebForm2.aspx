<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="chapter1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/pictures/u=896408547,2384913948&amp;fm=21&amp;gp=0.jpg" OnClick="ImageMap1_Click">
                <asp:CircleHotSpot HotSpotMode="Navigate" NavigateUrl="http://www.baidu.com" Radius="10" X="10" Y="10" />
            </asp:ImageMap>
            <asp:Button id="btnHide" runat="server" OnClick="btnHide_Click" Text="隐藏"/>
            <asp:Panel ID="Panel1" runat="server">
                <div id="div1" runat="server">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 0px" Width="458px" Height="221px" TextMode="MultiLine"></asp:TextBox><br />
                    <asp:Label runat="server" ID="lbl1" CssClass="stylecs">hello,world</asp:Label><&nbsp><&nbsp><&nbsp><&nbsp>
                    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton><br />
                    <asp:Button ID="Button1" runat="server" Text="关闭" OnClick="Button1_Click" /><br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="mailto:yangangwang1991@gmail.com">HyperLink</asp:HyperLink><br />
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://www.baidu.com')">把百度设为首页</asp:LinkButton><br />
                    <asp:ListBox ID="ListBox1" runat="server">
                        <asp:ListItem>aaa</asp:ListItem>
                    </asp:ListBox>
                    <asp:Button runat="server" ID="btnAdd" OnClick="btnAdd_Click" Text="AddItemToListBox" /><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="208px" BackColor="Yellow"></asp:DropDownList><br />
                </div>
                <div>
                    <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Button runat="server" ID="btnLoad" Text="上传" OnClick="btnLoad_Click"/><br />
                    <asp:Image ID="Image1" runat="server" />

                </div>
                <div>
                    <label>Login控件</label><br />
                    <asp:Login ID="Login1" runat="server" CssClass="login" CreateUserText="注册" CreateUserUrl="CreateUser.aspx"></asp:Login><br />
                    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CssClass="createuser" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt">
                        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
                        <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
                        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
                        <WizardSteps>
                            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                            </asp:CreateUserWizardStep>
                            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                            </asp:CompleteWizardStep>
                        </WizardSteps>
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" HorizontalAlign="Center" />
                        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
                        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="#FFFFFF" />
                        <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                        <StepStyle BorderWidth="0px" />
                    </asp:CreateUserWizard>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
