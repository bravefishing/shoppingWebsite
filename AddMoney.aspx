<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddMoney.aspx.cs" Inherits="AddMoney" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table bgcolor="#e4f4e1" border="0" cellpadding="0" cellspacing="1" style="width: 776px">
        <tr>
            <td align="left" bgcolor="#e4f4e1" style="height: 18px">
                &nbsp;<img border="0" height="15" src="images/news.gif" width="15" />
                Add Money</td>
        </tr>
        <tr>
            <td style="height: 44px">
                <table border="0" cellpadding="2" cellspacing="1" style="width: 772px">
                    <tr>
                        <td align="left" bgcolor="#ffffff" colspan="2" style="height: 54px">
                            Money：$&nbsp; <asp:TextBox ID="txtLoginName" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:Button ID="btnRegister" runat="server" Font-Size="12pt" OnClick="btnRegister_Click"
                                Text="Add" BackColor="#009900" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

