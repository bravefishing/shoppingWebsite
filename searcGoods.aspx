<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searcGoods.aspx.cs" Inherits="searcGoods" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table bgcolor="#e4f4e1" border="0" cellpadding="0" cellspacing="1" style="width: 776px">
        <tbody>
            <tr>
                <td align="left" bgcolor="#e4f4e1" style="height: 19px">
                    &nbsp;<img border="0" height="15" src="images/news.gif" width="15" /> Searching Result &gt;&gt;</td>
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
                                                    </a>Price：$
                                                    <%#Eval("GoodsPrice") %>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList></td>
                        </tr>
                    </table>
                    Total【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】Pages &nbsp; Current【<asp:Label
                        ID="lblCurrentPage" runat="server"></asp:Label>】Page&nbsp;
                    <asp:HyperLink ID="hyfirst" runat="server">First</asp:HyperLink>
                    &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">pre</asp:HyperLink>
                    &nbsp; &nbsp;
                    <asp:HyperLink ID="lnkNext" runat="server">next</asp:HyperLink>
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="hylastpage" runat="server">Last</asp:HyperLink>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

