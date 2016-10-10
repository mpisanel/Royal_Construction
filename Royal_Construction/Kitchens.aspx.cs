using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Kitchens : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SONY\Desktop\Royal_Construction\App_Data\Royal.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 0;
        fillView1();
        


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // MultiView1.ActiveViewIndex = Convert.ToInt32(DropDownList1.SelectedValue);
        if (DropDownList1.SelectedIndex == 0)
        {
           
            MultiView1.ActiveViewIndex = Convert.ToInt32(DropDownList1.SelectedValue);
            fillView1();

        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            
            MultiView1.ActiveViewIndex = Convert.ToInt32(DropDownList1.SelectedValue);
            fillView2();

        }
        else

            MultiView1.ActiveViewIndex = Convert.ToInt32(DropDownList1.SelectedValue);
            fillView3();

    }
    public void fillView1()
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select description,image_id, Price from Kitchens where kitchen_Id LIKE '%sink_%'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();


        conn.Close();
    
    }
    public void fillView2()
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select description,image_id, Price from Kitchens where kitchen_Id LIKE '%steel_%'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        DataList2.DataSource = dt;
        DataList2.DataBind();

        conn.Close();

    }
    public void fillView3()
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select description,image_id, Price from Kitchens where kitchen_Id LIKE '%decor0%'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        DataList3.DataSource = dt;
        DataList3.DataBind();

        conn.Close();




    }
}