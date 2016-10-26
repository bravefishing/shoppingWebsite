<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserReg.aspx.cs" Inherits="UserReg" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <script src="js/Calendar.js"  type="text/javascript" ></script>
     <script language="JavaScript">
         <!-- 
          function killErrors() {
           return true;
           }
          window.onerror = killErrors;
          // -->
     </script>
    <script type="text/javascript">
 
        var oCalendarChs=new PopupCalendar("oCalendarChs"); //初始化控件时,请给出实例名称:oCalendarChs
        oCalendarChs.weekDaySting=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
        oCalendarChs.monthSting=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
        oCalendarChs.oBtnTodayTitle="Today";
        oCalendarChs.oBtnCancelTitle="Cancel";
        oCalendarChs.Init();
	</script>
    <table bgcolor="#e4f4e1" border="0" cellpadding="0" cellspacing="1" style="width: 776px">
        <tbody>
            <tr>
                <td align="left" bgcolor="#e4f4e1" style="height: 19px">
                    &nbsp;<img border="0" height="15" src="images/news.gif" width="15" />
                    New customer registration</td>
            </tr>
            <tr>
                <td style="height: 44px">
                    <table border="0" cellpadding="2" cellspacing="1" style="width: 772px">
                        <tr>
                            <td align="left" bgcolor="#ffffff" colspan="2">
                                <table align="center" border="0" cellpadding="3" cellspacing="1" class="" style="width: 100%">
                                    <tr>
                                        <td class="left_title_1" style="width: 101px; height: 30px">
                                            UserName：</td>
                                        <td align="left" style="width: 349px; height: 30px">
                                            &nbsp;<asp:TextBox ID="txtname" runat="server" Width="109px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td class="left_title_1" height="30" style="width: 101px">
                                            Password：</td>
                                        <td align="left" height="30" style="width: 349px">
                                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td class="left_title_1" style="width: 101px; height: 31px">
                                            RetrieveQuestion：</td>
                                        <td align="left" style="width: 349px; height: 31px">
                                            <asp:TextBox ID="txtwwenti" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtwwenti"
                                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td class="left_title_1" style="width: 101px; height: 31px">
                                            Answer：</td>
                                        <td align="left" style="width: 349px; height: 31px">
                                            <asp:TextBox ID="txtdanan" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdanan"
                                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td class="left_title_1" height="30" style="width: 101px">
                                            Sex：</td>
                                        <td align="left" height="30" style="width: 349px">
                                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="89px">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td class="left_title_1" style="width: 101px; height: 30px">
                                            Phone：</td>
                                        <td align="left" style="width: 349px; height: 30px">
                                            <asp:TextBox ID="txtTel" runat="server" Width="196px"></asp:TextBox></td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td class="left_title_1" style="width: 101px; height: 30px">
                                            Birth Date：</td>
                                        <td align="left" style="width: 349px; height: 30px">
                                            <input id="tb_birth" runat="server" name="txttime1" onclick="getDateString(this,oCalendarChs)"
                                                style="width: 119px" type="text" value="--please select--" /></td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td class="left_title_1" style="width: 101px; height: 30px">
                                            Address：</td>
                                        <td align="left" style="width: 349px; height: 30px">
                                            <asp:TextBox ID="txtbanquan" runat="server" Width="176px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="" style="width: 101px; height: 119px">
                                            Description：</td>
                                        <td align="left" style="width: 349px; height: 119px">
                                            <asp:TextBox ID="txtds" runat="server" Font-Size="12pt" Height="115px" TextMode="MultiLine"
                                                Width="473px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="left_title_1" colspan="2" style="height: 30px">
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="56px" BackColor="#009900">Register</asp:LinkButton></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

