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

public partial class UserReg : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Title = "New customer registration";


        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into huiyuan(Daan,wenti,password,username,Sex,Tel,ADdress,nianling,Ds)values('" + txtdanan.Text + "','" + txtwwenti.Text + "','" + TextBox1.Text + "','" + txtname.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txtTel.Text + "','" + txtbanquan.Text + "','" + tb_birth.Value + "','" + txtds.Text + "')");

        Alert.AlertAndRedirect("successful registration！", "Login.aspx");
    }

}
