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
public partial class ShowGoodsContent : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
    string strGTypeID;
    SqlHelper data = new SqlHelper();
    SqlHelper dbcoment = new SqlHelper();
    public string GoodsId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
           /*
            sqlconn.Open();
            string strid = Page.Request.QueryString["id"];
            string sqlstr = "select * from shangpin where GoodsID='" + strid + "'";
            SqlDataReader dr = sqloperate.GetDataReader(sqlstr);
            dr.Read();
            txtGID.Text = Convert.ToString(dr["GoodsID"]);
            txtGName.Text = Convert.ToString(dr["GoodsName"]);
            txtGPrice.Text = Convert.ToString(dr["GoodsPrice"]);
            txtGDate.Text = Convert.ToString(dr["GoodsDate"]);
            txtGIntro.InnerHtml = Convert.ToString(dr["GoodsIntroduce"]) + "…";
            iGPhoto.ImageUrl = "uploadfiles/" + Convert.ToString(dr["GoodsPhoto"]);
         
            strGTypeID = Convert.ToString(dr["GoodsTypeID"]);
            */
        }

        sqlconn.Open();
        string strid = Page.Request.QueryString["id"];
        string sqlstr = "select * from shangpin where GoodsID='" + strid + "'";
        SqlDataReader dr = sqloperate.GetDataReader(sqlstr);
        dr.Read();
        txtGID.Text = Convert.ToString(dr["GoodsID"]);
        txtGName.Text = Convert.ToString(dr["GoodsName"]);
        txtGPrice.Text = Convert.ToString(dr["GoodsPrice"]);
        txtGDate.Text = Convert.ToString(dr["GoodsDate"]);
        txtGIntro.InnerHtml = Convert.ToString(dr["GoodsIntroduce"]) + "…";
        iGPhoto.ImageUrl = "uploadfiles/" + Convert.ToString(dr["GoodsPhoto"]);

        strGTypeID = Convert.ToString(dr["GoodsTypeID"]);
        sqlconn.Close();
    }
    protected void btnShop_Click(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Alert.AlertAndRedirect("Please login first,Thanks!", "Login.aspx");
        }
        else
        {
                  sqlconn.Open();
                string strid = Page.Request.QueryString["id"];
                string sqlstr = "insert into dingdan"
                    + "(OrderMember,GoodsID,GoodsName,GoodsTypeID,GoodsPrice,IsCheckout,shuliang)"
                    + " values('" + Session["username"].ToString() + "','" + txtGID.Text.Trim() + "','"
                    + txtGName.Text.Trim() + "','" + strGTypeID + "','" + txtGPrice.Text.Trim() + "','no','" + TextBox1.Text + "')";
                sqloperate.DataCom(sqlstr);
                Response.Redirect("OrderCar.aspx");
           
        }
    }
}
