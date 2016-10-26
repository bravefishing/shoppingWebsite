<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrderCar.aspx.cs" Inherits="OrderCar" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table bgcolor="#e4f4e1" border="0" cellpadding="0" cellspacing="1" style="width: 776px">
        <tbody>
            <tr>
                <td align="left" bgcolor="#e4f4e1" style="height: 19px">
                    &nbsp;<img border="0" height="15" src="images/news.gif" width="15" />Shopping Cart</td>
            </tr>
            <tr>
                <td align="center" bgcolor="#e4f4e1" style="height: 19px">
                    <asp:LinkButton ID="lbtnCheck" runat="server" Font-Underline="False" ForeColor="Black"
                        OnClick="lbtnCheck_Click" BackColor="#009900">MakeOrder</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbtnClear" runat="server" Font-Underline="False" ForeColor="Black"
                        OnClick="lbtnClear_Click" BackColor="#009900">ClearCart</asp:LinkButton></td>
            </tr>
            <tr>
                <td align="center" bgcolor="#e4f4e1" style="height: 19px">
                    <asp:GridView ID="gvOrderInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                                                CellPadding="4" Font-Size="12pt" GridLines="Horizontal" OnPageIndexChanging="gvOrderInfo_PageIndexChanging"
                                                OnRowCancelingEdit="gvOrderInfo_RowCancelingEdit" OnRowDataBound="gvOrderInfo_RowDataBound"
                                                OnRowDeleting="gvOrderInfo_RowDeleting" OnRowEditing="gvOrderInfo_RowEditing"
                                                OnRowUpdating="gvOrderInfo_RowUpdating" PageSize="8" Width="100%">
                                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Name">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("GoodsName") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    
                                                    <asp:TemplateField HeaderText="Price">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("GoodsPrice") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Quantity">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("shuliang") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("shuliang") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True">
                                                        <ControlStyle Font-Underline="False" ForeColor="Black" />
                                                        <ItemStyle Font-Underline="False" />
                                                    </asp:CommandField>
                                                  
                                                </Columns>
                                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="height: 44px">
                                            &nbsp;<asp:Label ID="Label1" runat="server" Text="Total cost：$"></asp:Label>
                                            <asp:Label ID="labMoney" runat="server"></asp:Label>
                                            &nbsp; &nbsp;
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

