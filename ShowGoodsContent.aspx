<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowGoodsContent.aspx.cs" Inherits="ShowGoodsContent" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table bgcolor="#e4f4e1" border="0" cellpadding="0" cellspacing="1" style="width: 732px">
     
            <tr>
                <td align="left" bgcolor="#e4f4e1" style="height: 19px">
                    <img border="0" height="15" src="images/news.gif" width="15" /> Product detailed information &gt;&gt;</td>
            </tr>
            <tr>
                <td style="height: 44px">
                    <table border="0" cellpadding="2" cellspacing="1" style="width: 772px">
                        <tr>
                            <td align="left" bgcolor="#ffffff" colspan="2">
                                <table align="center" bgcolor="#f7f6f3" border="0" bordercolor="#ff6d9c" cellpadding="0"
                                    cellspacing="0" style="font-size: 9pt; width:100%; height: auto;">
                                    <tr>
                                        <td bgcolor="#f7f6f3" rowspan="4" style="width: 196px; text-align: center">
                                            <asp:Image ID="iGPhoto" runat="server" Height="200px" Width="218px" /></td>
                                        <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: center">
                                            Product ID：</td>
                                        <td bgcolor="#f7f6f3" colspan="1" style="width: 469px; height: 30px">
                                            <asp:label ID="txtGID" runat="server"></asp:label></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: center">
                                            Product Name：</td>
                                        <td bgcolor="#f7f6f3" colspan="1" style="width: 469px; height: 30px">
                                            <asp:label ID="txtGName" runat="server"></asp:label></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: center">
                                            Price：</td>
                                        <td bgcolor="#f7f6f3" colspan="1" style="width: 469px; height: 30px" align="left">
                                            <asp:label ID="txtGPrice" runat="server"></asp:label></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#f7f6f3" colspan="1" style="width: 100px; height: 30px; text-align: center">
                                            Date：</td>
                                        <td bgcolor="#f7f6f3" colspan="1" style="width: 469px; height: 30px">
                                            <asp:label ID="txtGDate" runat="server"></asp:label></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#f7f6f3" colspan="3">
                                            &nbsp;Description：</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="vertical-align: top; text-indent: 8pt; height: auto; text-align: center" align="center">
                                            <div id="txtGIntro" runat="server" style="width: 766px; height: auto;">
                                            </div>
                                            </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    quantity：<asp:TextBox ID="TextBox1" runat="server" Width="22px">1</asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Button ID="btnShop" runat="server" Height="23px" OnClick="btnShop_Click" Text="buy"
                        Width="60px" BackColor="#009900" />
                 
                   
                                                            </td>
            </tr>
      </table>
</asp:Content>
