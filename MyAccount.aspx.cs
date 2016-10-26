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

public partial class MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('Please login first!');location='javascript:history.go(-1)';</script>");
        }

        //查询当前用户账户余额
        if (Session["username"] != null)
        {
            SqlHelper data = new SqlHelper();

            SqlDataReader dr;
            dr = data.GetDataReader("select * from  [huiyuan] where username='" + Session["username"] + "'");
            if (dr.Read())
            {
                this.lbBalance.Text = dr["MemberMoney"].ToString();
            }
            
        } 
    }
}
