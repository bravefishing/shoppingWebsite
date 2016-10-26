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

public partial class OrderCar : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('Please login first!');location='javascript:history.go(-1)';</script>");
        }
        if (!IsPostBack)
        {
            BinderOrder();
        }
    }
    protected void lbtnCheck_Click(object sender, EventArgs e)
    {
        if (labMoney.Text == "0")
        {
            Alert.AlertAndRedirect("your Cart is empty", "OrderCar.aspx");


        }
        else
        {
            SqlHelper data = new SqlHelper();
            SqlDataReader dr;
            dr = data.GetDataReader("select * from huiyuan where username='" + Session["username"].ToString() + "'");
            dr.Read();
            string MPrice = dr["MemberMoney"].ToString();
            if (Convert.ToDouble(MPrice) < Convert.ToDouble(labMoney.Text.Trim()))
            {

                Alert.AlertAndRedirect("Less money,please add money to buy", "AddMoney.aspx");


            }
            else
            {

                string sqlstrshop1 = "update huiyuan set MemberMoney='"
                    + (Convert.ToDouble(MPrice) - Convert.ToDouble(labMoney.Text)) + "' where username='" + Session["username"].ToString() + "'";
                sqloperate.DataCom(sqlstrshop1);

                Response.Redirect("SuccShop.aspx?OrderMember=" + Session["username"].ToString());
            }
        }
    }
    protected void lbtnClear_Click(object sender, EventArgs e)
    {
        string sqlstr = "delete from dingdan where OrderMember='"
            + Session["username"].ToString() + "' and IsCheckout='no'";
        sqloperate.DataCom(sqlstr);
        Response.Redirect("OrderCar.aspx");
    }
    protected void gvOrderInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvOrderInfo.PageIndex = e.NewPageIndex;
        gvOrderInfo.DataBind();
    }
    protected void gvOrderInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    ((LinkButton)(e.Row.Cells[4].Controls[0])).Attributes.Add("onclick", "return confirm('Make sure to delete？')");
        //}
    }
    protected void gvOrderInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlstr = "delete from dingdan where OrderID='" + gvOrderInfo.DataKeys[e.RowIndex].Value + "'";
        sqloperate.DataCom(sqlstr);
        Response.Redirect("OrderCar.aspx");
    }
    public override void VerifyRenderingInServerForm(System.Web.UI.Control control)
    {
    }

    protected void gvOrderInfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //SqlHelper mydata = new SqlHelper();
        //string ID = gvOrderInfo.DataKeys[e.RowIndex].Values[0].ToString();
        //try
        //{
        //    mydata.RunSql("update dingdan  set shuliang ='" + ((TextBox)gvOrderInfo.Rows[e.RowIndex].FindControl("TextBox1")).Text + "'  where OrderID=" + ID);

        //    gvOrderInfo.EditIndex = -1;
        //    BinderOrder();
        //}
        //catch
        //{

        //}
    }
    protected void gvOrderInfo_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvOrderInfo.EditIndex = e.NewEditIndex;
        BinderOrder();
    }
    protected void gvOrderInfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvOrderInfo.EditIndex = -1;
        BinderOrder();
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
}
