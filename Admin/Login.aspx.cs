using System;
using System.Linq;

public partial class _Default : System.Web.UI.Page
{
    private SQLClass SQLClass = new SQLClass();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        database_user doc = db.database_user.FirstOrDefault(t => t.rpn == txtAccount.Text); //以身分證字號登入
        if (doc != null)
        {
            if (doc.password.Equals(txtPassword.Text))
            {
                Session[CDictionary.SK_LOGGIN_ADMIN] = doc;
                Response.Redirect("AdminIndex.aspx");
            }
        }
        lblMessage.Visible = true;
        lblMessage.Text = "帳號與密碼不符";
    }
}