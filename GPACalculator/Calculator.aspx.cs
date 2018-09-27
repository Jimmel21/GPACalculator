using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GPACalculator
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Get grade point for each course (grade*credit)
            double course1 = Convert.ToInt32(DropDownList1.SelectedValue)
                * Convert.ToDouble(DropDownList2.SelectedValue);
            double course2 = Convert.ToInt32(DropDownList3.SelectedValue) *
                Convert.ToDouble(DropDownList4.SelectedValue);
            double course3 = Convert.ToInt32(DropDownList5.SelectedValue) *
                Convert.ToDouble(DropDownList6.SelectedValue);
            double course4 = Convert.ToInt32(DropDownList7.SelectedValue) * 
                Convert.ToDouble(DropDownList8.SelectedValue);
            double course5 = Convert.ToInt32(DropDownList9.SelectedValue) *
                Convert.ToDouble(DropDownList10.SelectedValue);

            //Get total credits
            double totalCredits = Convert.ToInt32(DropDownList1.SelectedValue) +
                Convert.ToInt32(DropDownList3.SelectedValue) + 
                Convert.ToInt32(DropDownList5.SelectedValue) + 
                Convert.ToInt32(DropDownList7.SelectedValue) + 
                Convert.ToInt32(DropDownList9.SelectedValue);

            //Get total grade points
            double totalGradePoints = course1 +
                course2 + course3 + course4 + course5;

            //Get GPA
            double GPA = totalGradePoints / totalCredits;

            //Label6.Visible = true;
            //Label6.Text = GPA.ToString();


            // Create new DataTable and DataSource objects.
            DataTable table = new DataTable();

            table.Columns.Add("Course", typeof(string));
            table.Columns.Add("Grade Point", typeof(double));

            table.Rows.Add(TextBox1.Text, course1);
            table.Rows.Add(TextBox2.Text, course2);
            table.Rows.Add(TextBox3.Text, course3);
            table.Rows.Add(TextBox4.Text, course4);
            table.Rows.Add(TextBox5.Text, course5);
            

            GridView1.Visible = true;
            GridView1.DataSource = table;
            GridView1.DataBind();

			Label1.Text = GPA.ToString();
			//Chart1.Visible = true;
			Chart1.DataSource = table;
			Chart1.Series["Series1"].XValueMember = "Course";
			Chart1.Series["Series1"].YValueMembers = "Grade Point";
			Chart1.DataBind();

			Panel1.Visible = true;


        }
    }
}