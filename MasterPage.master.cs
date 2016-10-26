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

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlHelper getdata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            lbUser.Text = Session["username"].ToString();
        }


        if (!IsPostBack)
        {

            dlGoodsType.DataSource = getdata.GetDataReader("select  * from shangpinLiebie order by GoodsTypeID desc ");
            dlGoodsType.DataBind();
            DataList1.DataSource = getdata.GetDataReader("select  * from youqinglianjie order by id desc ");
            DataList1.DataBind();
            
        }


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("searcGoods.aspx?name=" + TextBox1.Text);
    }
}
