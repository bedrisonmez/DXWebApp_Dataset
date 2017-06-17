using System;
using System.Collections.Generic;
using System.Data;
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
            DataSet x = new DataSet();

            App_Data.DataSet1TableAdapters.Customers1TableAdapter customer_ta = new App_Data.DataSet1TableAdapters.Customers1TableAdapter();
            //App_Data.DataSet1.CustomersDataTable customer_dt = new App_Data.DataSet1.CustomersDataTable();
            //customer_dt = customer_ta.GetData_OrderDetail(10250);
            GridView1.DataSource = customer_ta.e_SP_Get_Customer_Like("A");
            GridView1.DataBind();

            //App_Data.DataSet1TableAdapters.OrdersTableAdapter order_ta = new App_Data.DataSet1TableAdapters.OrdersTableAdapter();
            //App_Data.DataSet1.OrdersDataTable order_dt = new App_Data.DataSet1.OrdersDataTable();
            //order_dt= order_ta.GetDataOrderID(10250);
            //GridView1.DataSource = order_dt;
            //GridView1.DataBind();

            //App_Data.DataSet1TableAdapters.CustOrderHistTableAdapter Cust_ta = new App_Data.DataSet1TableAdapters.CustOrderHistTableAdapter();
            //GridView1.DataSource = Cust_ta.GetData("ANATR");
            //GridView1.DataBind();

        }
    }
}