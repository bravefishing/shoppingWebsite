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
public partial class _Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            this.Title = "User Login";
            if (Session["username"] != null)
            {
                Alert.AlertAndRedirect("already login,can't do this again！", "Default.aspx");

            }
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlHelper data = new SqlHelper();
       
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  [huiyuan] where username='" + TxtUserName.Text.Trim() + "'and password='" + TxtPassword.Text.Trim() + "'");
        if (dr.Read())
        {
            Session["username"] = dr["username"].ToString();

            Session["userid"] = dr["id"].ToString();



            Response.Redirect("Default.aspx");

        }
        else
        {
            Alert.AlertAndRedirect("UserName and Password don't match,try again！", "Login.aspx");
        }

    }
}
