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
public partial class Newgoods : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Title = "最新商品信息";
            GetListPage();
        }


    }
    private void GetListPage()
    {
        try
        {
            SqlConnection con = new SqlConnection(SqlHelper.connstring);

            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select  * from  shangpin order by GoodsDate desc ", con);


            DataSet ds = new DataSet();
            sda.Fill(ds);
            PagedDataSource objPds = new PagedDataSource();
            objPds.DataSource = ds.Tables[0].DefaultView;

            objPds.AllowPaging = true;
            objPds.PageSize = 12;

            int CurPage;
            if (Request.QueryString["Page"] != null)
                CurPage = Convert.ToInt32(Request.QueryString["Page"]);
            else
                CurPage = 1;

            objPds.CurrentPageIndex = CurPage - 1;
            lblCurrentPage.Text = CurPage.ToString();
            lblSumPage.Text = objPds.PageCount.ToString();

            if (!objPds.IsFirstPage)
            {
                this.hyfirst.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + 1;
                lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1);
            }

            if (!objPds.IsLastPage)
            {
                hylastpage.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + objPds.PageCount;

                lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1);
            }
            dlGoods.DataSource = objPds;
            dlGoods.DataBind();


        }
        catch
        {

        }

    }
}
