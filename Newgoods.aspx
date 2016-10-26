<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Newgoods.aspx.cs" Inherits="Newgoods" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table bgcolor="#e4f4e1" border="0" cellpadding="0" cellspacing="1" style="width: 776px">
        <tbody>
            <tr>
                <td align="left" bgcolor="#e4f4e1" style="height: 19px">
                    &nbsp;<img border="0" height="15" src="images/news.gif" width="15" />
                    最新商品</td>
            </tr>
            <tr>
                <td style="height: 44px">
                    <table border="0" cellpadding="2" cellspacing="1" style="width: 772px">
                        <tr>
                            <td align="left" bgcolor="#ffffff" colspan="2">
                                <asp:DataList ID="dlGoods" runat="server" RepeatColumns="3" ShowFooter="False" ShowHeader="False"
                                    Width="776px">
                                    <ItemTemplate>
                                        <table style="width: 211px; height: 110px">
                                            <tr>
                                                <td style="width: 104px">
                                                    <a href='ShowGoodsContent.aspx?id=<%#Eval("GoodsID") %>'>
                                                        <img border="0" src='uploadfiles/<%#Eval("GoodsPhoto") %>' style="width: 106px; height: 101px" /></a>
                                                </td>
                                                <td align="left" valign="top">
                                                    <a href='ShowGoodsContent.aspx?id=<%#Eval("GoodsID") %>'>
                                                        <%#Eval("GoodsName") %>
                                                    </a><br />价格：
                                                    <%#Eval("GoodsPrice") %>
                                                    元
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList></td>
                        </tr>
                    </table>
                    共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; 当前第【<asp:Label
                        ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
                    <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
                    &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                    &nbsp; &nbsp;
                    <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

