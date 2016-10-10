using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class enquiries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitBtn_Click(object sender, EventArgs e)
    {
        Session["Name"] = nameTxt.Text;
        Session["LName"] = lastNmTxt.Text;
        Session["phone"] = phTxt.Text;
        Session["email"] = emailTxt.Text;
        Session["message"] = Msgtxt.Text;
        Server.Transfer("queryReceived.aspx",true);
    }
}