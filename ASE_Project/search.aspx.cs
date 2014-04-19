using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.IO;

namespace ASE_Project
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string searchtext = null;

            if (Session["searcht"] != null)
            {
                searchtext = Session["searcht"].ToString();

                itemfind.find s1 = new itemfind.find();
                ArrayList a = new ArrayList(s1.searchresults(searchtext));
                ArrayList b = new ArrayList();
                b = (ArrayList)a;



                dis.Text = "Search Results for :  " + searchtext;
                string[,] data = new string[100, 10];
                int iterator = 0;

                foreach (string c in b)
                {
                    string[] row = c.Split('^');
                    data[iterator, 0] = row[0];
                    data[iterator, 1] = row[1];
                    data[iterator, 2] = row[2];
                    data[iterator, 3] = row[3];
                    data[iterator, 4] = row[4];
                    data[iterator, 5] = row[5];
                    data[iterator, 6] = row[6];
                    data[iterator, 7] = row[7];


                    iterator++;
                }

                DataTable newsDataTable = new DataTable();

                // add some columns to our datatable
                newsDataTable.Columns.Add("vname");
                newsDataTable.Columns.Add("vcontactno");
                newsDataTable.Columns.Add("vstreet");
                newsDataTable.Columns.Add("vcity");
                newsDataTable.Columns.Add("vzipcode");
                newsDataTable.Columns.Add("vservice");
                newsDataTable.Columns.Add("vtime");
                newsDataTable.Columns.Add("vemail");

                // adding new rows
                for (int i = 0; i < iterator; i++)
                {
                    DataRow newsDataRow = newsDataTable.NewRow();
                    newsDataRow["vname"] = data[i, 0];
                    newsDataRow["vcontactno"] = data[i, 1];
                    newsDataRow["vstreet"] = data[i, 2];
                    newsDataRow["vcity"] = data[i, 3];
                    newsDataRow["vzipcode"] = data[i, 4];
                    newsDataRow["vservice"] = data[i, 7];
                    newsDataRow["vtime"] = data[i, 8];
                    newsDataRow["vemail"] = data[i, 9];
                    newsDataTable.Rows.Add(newsDataRow);
                }

                // bind our datatable to our repeater
                searchrepeat.DataSource = newsDataTable;
                searchrepeat.DataBind();
                if (iterator != 0)
                {
                }
                else
                {
                    dis.Text = "No Results for:  " + searchtext;
                }
            }
            else
            {
                dis.Text = "no results";
            }

        }
        protected void searchrepeat_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}