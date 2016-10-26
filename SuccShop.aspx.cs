using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class SuccShop : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlHelper sqloperate = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BinderMenber();
            BinderOrder();

        }
    }
    private void BinderOrder()
    {
        string sqlstr = "select shuliang,OrderID,GoodsName,GoodsTypeName,GoodsPrice from dingdan where OrderMember='" + Convert.ToString(Session["username"]) + "' and IsCheckout='no'";
        gvOrderInfo.DataKeyNames = new string[] { "OrderID" };
        sqloperate.gvDataBind(gvOrderInfo, sqlstr);

        SqlHelper data = new SqlHelper();
        SqlDataReader dr1;
        dr1 = data.GetDataReader("select OrderID from dingdan where OrderMember='" + Convert.ToString(Session["username"]) + "' and IsCheckout='no'");
        if (dr1.Read())
        {
            string sqlstrtprice = "select sum(GoodsPrice*shuliang) as tprice from dingdan"
                + " where OrderMember='" + Convert.ToString(Session["username"]) + "' and IsCheckout='no'";

            SqlDataReader dr;
            dr = data.GetDataReader(sqlstrtprice);
            dr.Read();
            labMoney.Text = dr["tprice"].ToString();// Convert.ToString(int.Parse(dr["tprice"].ToString()));


        }
        else
        {
            labMoney.Text = "0";

        }
    }
    private void BinderMenber()
    {

        SqlDataReader dr = data.GetDataReader("select * from huiyuan where username='" + Request.QueryString["OrderMember"].ToString() + "'");
        dr.Read();
        Label2.Text = dr["username"].ToString();
        Label3.Text = dr["ADdress"].ToString();
        Label4.Text = dr["Tel"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sqlstrshop2 = "update dingdan set IsCheckout='yes' ,fahuofansh='" + DropDownList1.SelectedItem.Text + "',fukuanfagnshi='" + DropDownList2.SelectedItem.Text + "'  where OrderMember='" + Session["username"].ToString() + "'";
        sqloperate.DataCom(sqlstrshop2);

        Alert.AlertAndRedirect("Succeed！", "MyOrder.aspx");
    }
}

