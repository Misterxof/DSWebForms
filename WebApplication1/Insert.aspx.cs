using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String playerid = TextBox1.Text;
            String jersey = TextBox2.Text;
            String fname = TextBox3.Text;
            String sname = TextBox4.Text;
            String position = TextBox5.Text;
            String birthday = TextBox6.Text;
            String weight = TextBox7.Text;
            String height = TextBox8.Text;
            String birthcity = TextBox9.Text;
            String birthstate = TextBox10.Text;

            InsertAuto(playerid, jersey, fname, sname, position, birthday, weight, height, birthcity, birthstate);

            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }

        public void InsertAuto(string playerid, string jersey, string fname, string sname,
            string position, string birthday, string weight, string height, string birthcity, string birthstate)
        {
            int jersey2 = Int32.Parse(jersey);
            int weight2 = Int32.Parse(weight);
            int height2 = Int32.Parse(height);
            DateTime dt = Convert.ToDateTime(birthday);                
           
            OleDbConnection odbConnection = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\Users\\Misha\\Documents\\CRITTERS.accdb");
            OleDbCommand cmd = new OleDbCommand("INSERT INTO [roster]([playerid], [jersey], [fname], [sname], [position], [birthday], [weight], [height], [birthcity], [birthstate]) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", odbConnection);
            
            cmd.Parameters.Add("", OleDbType.VarChar, 10, "playerid").Value = playerid;
            cmd.Parameters.Add("", OleDbType.Integer, 3, "jersey").Value = jersey2;
            cmd.Parameters.Add("", OleDbType.VarChar, 10, "fname").Value = fname;
            cmd.Parameters.Add("", OleDbType.VarChar, 10, "sname").Value = sname;
            cmd.Parameters.Add("", OleDbType.VarChar, 3, "position").Value = position;
            cmd.Parameters.Add("", OleDbType.Date, 10, "birthday").Value = dt;
            cmd.Parameters.Add("", OleDbType.Integer, 4, "weight").Value = weight2;
            cmd.Parameters.Add("", OleDbType.Integer, 4, "height").Value = height2;
            cmd.Parameters.Add("", OleDbType.VarChar, 10, "birthcity").Value = birthcity;
            cmd.Parameters.Add("", OleDbType.VarChar, 4, "birthstate").Value = birthstate;
            
            cmd.Connection = odbConnection;

            odbConnection.Open();
            cmd.ExecuteNonQuery();
            odbConnection.Close();
        
        }
    }
}