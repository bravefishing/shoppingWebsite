<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table bgcolor="#e4f4e1" border="0" cellpadding="0" cellspacing="1" style="width: 776px">
        <tbody>
            <tr>
                <td style="height: 44px">
                    <table border="0" cellpadding="2" cellspacing="1" style="width: 772px">
                        <tr>
                            <td align="left" bgcolor="#ffffff" colspan="2">
                                    <asp:DataList ID="dlnews" runat="server" Width="777px">
                                        <ItemTemplate>
                                            <table style="width: 759px">
                                                <tr>
                                                    <td style="width: 526px">
                                                        <a href='<%#Eval("id")%>' target="_blank" title='<%#Eval("Title") %>'></a><a href='NewsContent.aspx?id=<%#Eval("id")%>'>
                                                            <%#Eval("Title")%>
                                                        </a>
                                                    </td>
                                                    <td style="width: 99px">
                                                        [<%#Eval("Addtime","{0:d}") %>]</td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
    </table><table bgcolor="#e4f4e1" border="0" cellpadding="0" cellspacing="1" style="width: 776px">
        <tbody>
            <tr>
                <td align="left" bgcolor="#e4f4e1" style="height: 19px">
                    &nbsp;<img border="0" height="15" src="images/news.gif" width="15" />
                    Latest products</td>
            </tr>
            <tr>
                <td style="height: 44px">
                    <table border="0" cellpadding="2" cellspacing="1" style="width: 772px">
                        <tr>
                            <td align="left" bgcolor="#ffffff" colspan="2">
                                <asp:DataList ID="dlGoodsList" runat="server" RepeatColumns="3" ShowFooter="False"
                                    ShowHeader="False" Width="764px">
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
                                                    </a><br />Price：$
                                                    <%#Eval("GoodsPrice") %>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

