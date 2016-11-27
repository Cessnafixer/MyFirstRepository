using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlDataSource2.InsertParameters["LastName"].DefaultValue = txtLastName.Text;
        SqlDataSource2.InsertParameters["FirstName"].DefaultValue = txtFirstName.Text;
        SqlDataSource2.InsertParameters["City"].DefaultValue = txtCity.Text;
        SqlDataSource2.InsertParameters["State"].DefaultValue = txtState.Text;

        try
        {
            SqlDataSource2.Insert();
            txtLastName.Text = "";
            txtFirstName.Text = "";
            txtCity.Text = "";
            txtState.Text = "";
            lblError.Text = "";
        }
        catch (Exception ex)
        {
            lblError.Text = "A database error has occurred.<br> /><br />" +
                "Message: " + ex.Message;
        }
    }
}