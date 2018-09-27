<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="GPACalculator.Calculator" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
        body
        {
            font: 12px verdana;
        }
         
        .myGridStyle
        {
            border-collapse:collapse;
             
        }
         
        .myGridStyle tr th
        {
            padding: 8px;
            color: white;
            border: 1px solid black;
        }
         
         
        .myGridStyle tr:nth-child(even)
        {
            background-color: #E1FFEF;
        }
         
        .myGridStyle tr:nth-child(odd)
        {
            background-color: #00C157;
        }
         
        .myGridStyle td
        {
            border:1px solid black;
            padding: 8px;
        }
         
        .myGridStyle tr:last-child td
        {
        }

		
    
        .auto-style1 {
			margin-left: 18px;
			font-size: small;
		}
        .auto-style2 {
			margin-left: 13px;
			font-size: small;
		}
        .auto-style3 {
			margin-left: 14px;
			font-size: small;
		}
    	.auto-style4 {
			font-size: medium;
		}
    	.auto-style6 {
			width: 521px;
		}
		.auto-style7 {
			width: 426px
		}
    </style>
</head>
<body>
	<div class="jumbotron">
		<h1 class="text-center" style="color:cadetblue">
			GPA Calculator
		</h1>
	</div>
    <form id="form1" runat="server" class="text-center">      	
      <div class="form-group">
		  <label for="email"><span class="auto-style4">Course title:</span></label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" Height="25px" Width="200px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2">
            <asp:ListItem Value="3 ">3 Credits</asp:ListItem>
            <asp:ListItem Value="4">4 Credits</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style3">
            <asp:ListItem Value="4.3">A+</asp:ListItem>
            <asp:ListItem Value="4.0">A</asp:ListItem>
            <asp:ListItem Value="3.7">A-</asp:ListItem>
            <asp:ListItem Value="3.3">B+</asp:ListItem>
            <asp:ListItem Value="3.0">B</asp:ListItem>
            <asp:ListItem Value="2.7">B-</asp:ListItem>
            <asp:ListItem Value="2.3">C+</asp:ListItem>
            <asp:ListItem Value="2.0">C</asp:ListItem>
            <asp:ListItem Value="1.7">C-</asp:ListItem>
            <asp:ListItem Value="1.3">D+</asp:ListItem>
            <asp:ListItem Value="1.0">D</asp:ListItem>
            <asp:ListItem Value="0.0">F</asp:ListItem>
        </asp:DropDownList>
		  </div>

		<div class="form-group">
		  <label for="email"><span class="auto-style4">Course title:</span></label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" Height="25px" Width="200px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style2">
            <asp:ListItem Value="3 ">3 Credits</asp:ListItem>
            <asp:ListItem Value="4">4 Credits</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style3">
            <asp:ListItem Value="4.3">A+</asp:ListItem>
            <asp:ListItem Value="4.0">A</asp:ListItem>
            <asp:ListItem Value="3.7">A-</asp:ListItem>
            <asp:ListItem Value="3.3">B+</asp:ListItem>
            <asp:ListItem Value="3.0">B</asp:ListItem>
            <asp:ListItem Value="2.7">B-</asp:ListItem>
            <asp:ListItem Value="2.3">C+</asp:ListItem>
            <asp:ListItem Value="2.0">C</asp:ListItem>
            <asp:ListItem Value="1.7">C-</asp:ListItem>
            <asp:ListItem Value="1.3">D+</asp:ListItem>
            <asp:ListItem Value="1.0">D</asp:ListItem>
            <asp:ListItem Value="0.0">F</asp:ListItem>
        </asp:DropDownList>
			</div>

		<div class="form-group">
		  <label for="email"><span class="auto-style4">Course title:</span></label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1" Height="25px" Width="200px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="auto-style2">
            <asp:ListItem Value="3 ">3 Credits</asp:ListItem>
            <asp:ListItem Value="4">4 Credits</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList6" runat="server" CssClass="auto-style3">
            <asp:ListItem Value="4.3">A+</asp:ListItem>
            <asp:ListItem Value="4.0">A</asp:ListItem>
            <asp:ListItem Value="3.7">A-</asp:ListItem>
            <asp:ListItem Value="3.3">B+</asp:ListItem>
            <asp:ListItem Value="3.0">B</asp:ListItem>
            <asp:ListItem Value="2.7">B-</asp:ListItem>
            <asp:ListItem Value="2.3">C+</asp:ListItem>
            <asp:ListItem Value="2.0">C</asp:ListItem>
            <asp:ListItem Value="1.7">C-</asp:ListItem>
            <asp:ListItem Value="1.3">D+</asp:ListItem>
            <asp:ListItem Value="1.0">D</asp:ListItem>
            <asp:ListItem Value="0.0">F</asp:ListItem>
        </asp:DropDownList>
			</div>

		<div class="form-group">
		  <label for="email"><span class="auto-style4">Course title:</span></label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1" Height="25px" Width="200px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="auto-style2">
            <asp:ListItem Value="3 ">3 Credits</asp:ListItem>
            <asp:ListItem Value="4">4 Credits</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="auto-style3">
            <asp:ListItem Value="4.3">A+</asp:ListItem>
            <asp:ListItem Value="4.0">A</asp:ListItem>
            <asp:ListItem Value="3.7">A-</asp:ListItem>
            <asp:ListItem Value="3.3">B+</asp:ListItem>
            <asp:ListItem Value="3.0">B</asp:ListItem>
            <asp:ListItem Value="2.7">B-</asp:ListItem>
            <asp:ListItem Value="2.3">C+</asp:ListItem>
            <asp:ListItem Value="2.0">C</asp:ListItem>
            <asp:ListItem Value="1.7">C-</asp:ListItem>
            <asp:ListItem Value="1.3">D+</asp:ListItem>
            <asp:ListItem Value="1.0">D</asp:ListItem>
            <asp:ListItem Value="0.0">F</asp:ListItem>
        </asp:DropDownList>
			</div>

		<div class="form-group">
		  <label for="email"><span class="auto-style4">Course title:</span></label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style1" Height="25px" Width="200px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList9" runat="server" CssClass="auto-style2">
            <asp:ListItem Value="3 ">3 Credits</asp:ListItem>
            <asp:ListItem Value="4">4 Credits</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList10" runat="server" CssClass="auto-style3">
            <asp:ListItem Value="4.3">A+</asp:ListItem>
            <asp:ListItem Value="4.0">A</asp:ListItem>
            <asp:ListItem Value="3.7">A-</asp:ListItem>
            <asp:ListItem Value="3.3">B+</asp:ListItem>
            <asp:ListItem Value="3.0">B</asp:ListItem>
            <asp:ListItem Value="2.7">B-</asp:ListItem>
            <asp:ListItem Value="2.3">C+</asp:ListItem>
            <asp:ListItem Value="2.0">C</asp:ListItem>
            <asp:ListItem Value="1.7">C-</asp:ListItem>
            <asp:ListItem Value="1.3">D+</asp:ListItem>
            <asp:ListItem Value="1.0">D</asp:ListItem>
            <asp:ListItem Value="0.0">F</asp:ListItem>
        </asp:DropDownList>
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" class="btn btn-primary"/>
        <br />
        <br />
        <br /> <br /> <br /> <br />
        <table class="nav-justified">
			<tr>
				<td class="auto-style7">
        <asp:GridView ID="GridView1" runat="server" Visible="false"  GridLines="None" CssClass="myGridStyle" style="margin-left:80px; text-align: center;" Height="200px" Width="300px">
        </asp:GridView>
        		</td>
				<td class="auto-style6">
					<asp:Chart ID="Chart1" runat="server">
						<series>
							<asp:Series ChartType="Pie" Name="Series1">
							</asp:Series>
						</series>
						<chartareas>
							<asp:ChartArea Name="ChartArea1">
							</asp:ChartArea>
						</chartareas>
					</asp:Chart>
				</td>
				<td>
				
				  	<asp:Panel ID="Panel1" runat="server" Visible="False">
						    <div class="panel panel-primary">
				  <div class="panel-heading"><strong><h3>GPA</h3></strong></div>
				  <div class="panel-body" style="margin-right:20px"><strong>
					  <asp:Label ID="Label1" runat="server" CssClass="auto-style4"></asp:Label>
					  </strong></div>
								</div>
					  </asp:Panel>
				 
				</td>
			</tr>
		</table>
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
