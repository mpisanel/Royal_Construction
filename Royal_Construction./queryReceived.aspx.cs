using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class queryReceived : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session.IsNewSession){
            Response.Redirect("homepage.aspx");
      
        }*/
        
          NmLbl.Text=(String)Session["Name"];
          LNmLbl.Text=(String)Session["LName"];
        Session.Abandon();
         
         
         
         

    }
}