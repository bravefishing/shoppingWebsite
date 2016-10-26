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
public partial class MyOrder : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('Please login first, thanks!');location='javascript:history.go(-1)';</script>");
        }
        if (!IsPostBack)
        {
            BinderOrder();
        }
    }
    private void BinderOrder()
    {
        string sqlstr = "select shuliang,OrderID,GoodsName,GoodsTypeName,GoodsPrice from dingdan where OrderMember='" + Convert.ToString(Session["username"]) + "' ";
        gvOrderInfo.DataKeyNames = new string[] { "OrderID" };
        sqloperate.gvDataBind(gvOrderInfo, sqlstr);
      

    }
    protected void gvOrderInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        gvOrderInfo.PageIndex = e.NewPageIndex;
        string sqlstr = "select shuliang,OrderID,GoodsName,GoodsTypeName,GoodsPrice from dingdan where OrderMember='" + Convert.ToString(Session["username"]) + "' ";
        gvOrderInfo.DataKeyNames = new string[] { "OrderID" };
        sqloperate.gvDataBind(gvOrderInfo, sqlstr);

    }
}
