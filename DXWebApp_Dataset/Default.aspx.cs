using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApp_Dataset
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            App_Data.DataSet1TableAdapters.CustomersTableAdapter ds = new App_Data.DataSet1TableAdapters.CustomersTableAdapter();
            GridView1.DataSource = ds.GetData_OrderDetail(10250);
            GridView1.DataBind();

            //App_Data.DataSet1TableAdapters.OrdersTableAdapter ods = new App_Data.DataSet1TableAdapters.OrdersTableAdapter();
            //GridView1.DataSource = ods.GetDataOrderID(10250);
            //GridView1.DataBind();

        }
    }
}