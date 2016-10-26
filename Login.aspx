<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Login" Title="" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table bgcolor="#e4f4e1" border="0" cellpadding="0" cellspacing="1" style="width: 776px">
        <tbody>
            <tr>
                <td align="left" bgcolor="#e4f4e1" style="height: 19px">
                    &nbsp;<img border="0" height="15" src="images/news.gif" width="15" />
                    User Lgin</td>
            </tr>
            <tr>
                <td style="height: 44px">
                    <table border="0" cellpadding="2" cellspacing="1" style="width: 772px">
                        <tr>
                            <td align="center" bgcolor="#ffffff" colspan="2" style="height: 22px">
                                UserName：<asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>Password：<asp:TextBox ID="TxtPassword" TextMode="Password"
                                    runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="24px" ImageUrl="~/images/icon_login.gif"
                        OnClick="ImageButton1_Click" Width="100px" /></td>
            </tr>
        </tbody>
    </table>
</asp:Content>

