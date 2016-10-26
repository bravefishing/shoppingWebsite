<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SuccShop.aspx.cs" Inherits="SuccShop" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table bgcolor="#e4f4e1" border="0" cellpadding="0" cellspacing="1" style="width: 776px">
        <tr>
            <td align="left" bgcolor="#e4f4e1" style="height: 18px">
                &nbsp;<img border="0" height="15" src="images/news.gif" width="15" /> Place Order &gt;&gt;</td>
        </tr>
        <tr>
            <td style="height: 44px">
                <table border="0" cellpadding="2" cellspacing="1" style="width: 772px">
                    <tr>
                        <td align="left" bgcolor="#ffffff" colspan="2" style="height: 54px">
                            <table cellpadding="0" cellspacing="0" style="width: 550px; height: 315px">
                                <tr>
                                    <td align="left" colspan="3" style="font-weight: bold; font-size: 16pt; width: 804px;
                                        color: #ff9966; height: 5px">
                                        Receiver information &gt;&gt;</td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3" style="font-weight: bold; font-size: 16pt; width: 804px;
                                        color: #ff9966; height: 5px">
                                        receiver：<asp:Label ID="Label2" runat="server"></asp:Label><br />
                                        address：<asp:Label ID="Label3" runat="server"></asp:Label><br />
                                        Phone：<asp:Label ID="Label4" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3" style="font-weight: bold; font-size: 16pt; width: 804px;
                                        color: #ff9966; height: 5px">
                                        Shipping：<asp:DropDownList ID="DropDownList1" runat="server" Width="143px">
                                            <asp:ListItem>UPs</asp:ListItem>
                                            <asp:ListItem>Standard</asp:ListItem>
                                          
                                            <asp:ListItem>other</asp:ListItem>
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3" style="font-weight: bold; font-size: 16pt; width: 804px;
                                        color: #ff9966; height: 5px">
                                        pay：<asp:DropDownList ID="DropDownList2" runat="server" Width="144px">
                                            <asp:ListItem>Prepaid</asp:ListItem>
                                            <asp:ListItem>cash on delivery</asp:ListItem>
                                            <asp:ListItem>other</asp:ListItem>
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3" style="font-weight: bold; font-size: 16pt; width: 804px;
                                        color: #ff9966; height: 5px">
                                        order list</td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3" style="font-weight: bold; font-size: 24pt; width: 804px;
                                        color: #ff9966; height: 49px">
                                        <span style="font-size: 12pt; color: #808080">
                                            <asp:GridView ID="gvOrderInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                                                CellPadding="4" Font-Size="12pt" GridLines="Horizontal" PageSize="8" Width="754px">
                                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Name">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("GoodsName") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                            
                                                    
                                                    <asp:TemplateField HeaderText="quantity">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("shuliang") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("shuliang") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>
                                            <asp:Label ID="Label5" runat="server" Text="Total cost：$"></asp:Label><asp:Label ID="labMoney"
                                                runat="server"></asp:Label>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="font-weight: bold; width: 804px; height: 65px">
                                        <span style="color: #808080">
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buy" BackColor="#009900" />
                                        </span>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

