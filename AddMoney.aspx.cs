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

public partial class AddMoney : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Session["username"].ToString() == null)
            {
                Alert.AlertAndRedirect("Please login first,thanks!", "Login.aspx");
            }
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        SqlHelper data = new SqlHelper();
        data.RunSql("update huiyuan set MemberMoney=MemberMoney+" + Convert.ToDecimal(txtLoginName.Text) + " where username='" + Session["username"].ToString() + "'");
        Alert.AlertAndRedirect("money successfully add in,now you can pay >-< ", "OrderCar.aspx");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtLoginName.Text = "";

    }
}
