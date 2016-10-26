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
public partial class _Default : System.Web.UI.Page
{
    SqlHelper getdata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Title = "Welcome to eMart!";
            dlnews.DataSource = getdata.GetDataReader("select top 10  * from xinwen order by id desc ");
            dlnews.DataBind();
            dlGoodsList.DataSource = getdata.GetDataReader("select top 12 * from shangpin order by GoodsID desc ");
            dlGoodsList.DataBind();
            
        }


    }
}
