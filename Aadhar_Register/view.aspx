<%@ Page Title="" Language="C#" MasterPageFile="~/Aadhar_Register.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="Aadhar_Register.view" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <%--  <link href="css/viewstyle.css" rel="stylesheet" />--%>


    <style>
        *{
    margin:0;
    padding:0;
    box-sizing:border-box;
}
.main{
    height:100%;
    width:100vw;
    background-color:#23527c;
    justify-items:center;
}
.main .con{
    height:100%;
    border:1px solid #23527c;
    width:95vw;
   /* overflow:hidden;*/
   
}
.main .con .table1{
    margin-top:50px;
    width:100%;
    margin-bottom:50px;
    
}
.main .con .table1 th,td{
    height:50px;
    width:150px;
    text-align:center;
    border:1px solid #a5a3a3;
    color:#fff;
    /*border:2px solid red;
    word-wrap:break-word;
    white-space:pre-wrap;*/
    /*display:-webkit-box;*/
    /*-webkit-line-clamp:3;*/
    /*-webkit-box-orient:vertical;*/
}



    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="main">
    <br /><br />
    <form method="post">
    <div class="nav">
        
        <input type="text" name="number"  placeholder="Search Record using Mobile no." />
        <input type="submit" value="Search" />

    </div>
        </form>
  <%--  <%

        if (Request.Form["number"] != null)
        {
            int num = 0;

            if(int.TryParse(Request.Form["number"], out num))
            {
                 SqlConnection con = new SqlConnection("Data Source=DESKTOP-LQ7JDCH\\SQLEXPRESS;Initial Catalog=aadhar;Integrated Security=True");
            con.Open();
            SqlCommand cmmd = new SqlCommand("select * from registration where mobileno like '"+num+"';", con);
            SqlDataReader dr = cmmd.ExecuteReader();
            while (dr.Read())
                    {
                        %>
                      


                              <tr>
                <td><%=dr["id"] %></td>
                <td><%=dr["name"] %></td>
                <td><%=dr["gender"] %></td>
                <td><%=dr["dob"] %></td>
                <td><%=dr["address"] %></td>
                <td><%=dr["village"] %></td>
                <td><%=dr["postoffice"] %></td>
                <td><%=dr["district"] %></td>
                <td><%=dr["subdistrict"] %></td>
                <td><%=dr["state"] %></td>
                <td><%=dr["email"] %></td>
                <td><%=dr["mobileno"] %></td>
                <td><%=dr["pincode"] %></td>

                                  </tr>
    <%
                    }
            }
        }
        else
        {
            Response.Write("number null hai");
        }




    %>--%>




     <div class="con">

        <table class="table1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>DOB</th>
                <th>Address</th>
                <th>Village</th>
                <th>Post Office</th>
                <th>District</th>
                <th>Sub-District</th>
                <th>State</th>
                <th>Email</th>
                <th>Mobile no.</th>
                <th>Pin Code</th>
                <th>Edit info</th>
                <th>Delete info</th>
            </tr>

            <%
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-LQ7JDCH\\SQLEXPRESS;Initial Catalog=aadhar;Integrated Security=True");
                if (Request.Form["number"] != null)
                {
                    int num = 0;

                    if(int.TryParse(Request.Form["number"], out num))
                    {
                        con.Open();
                        SqlCommand cmmd = new SqlCommand("select * from registration where mobileno like '"+num+"';", con);
                        SqlDataReader dr = cmmd.ExecuteReader();
                        while (dr.Read())
                        {
                            %>
                      


                        <tr>
                            <td><%=dr["id"] %></td>
                            <td><%=dr["name"] %></td>
                            <td><%=dr["gender"] %></td>
                            <td><%=dr["dob"] %></td>
                            <td><%=dr["address"] %></td>
                            <td><%=dr["village"] %></td>
                            <td><%=dr["postoffice"] %></td>
                            <td><%=dr["district"] %></td>
                            <td><%=dr["subdistrict"] %></td>
                            <td><%=dr["state"] %></td>
                            <td><%=dr["email"] %></td>
                            <td><%=dr["mobileno"] %></td>
                            <td><%=dr["pincode"] %></td>
                            <td><a href="editinfo.aspx?b=<%=dr["id"] %>" class="btn btn-outline-primary">Edit</a></td>
                            <td><a href="deleteinfo.aspx?a=<%=dr["id"] %>" class="btn btn-outline-danger">Delete</a></td>
                        </tr>
    <%
                }
                con.Close();
            }
        }
        else
        {

            if (true)
            {

                con.Open();
                SqlCommand cmmd = new SqlCommand("select * from registration;", con);
                SqlDataReader dr = cmmd.ExecuteReader();
                while (dr.Read())
                {

                    %>

                    <tr>
                        <td><%=dr["id"] %></td>
                        <td><%=dr["name"] %></td>
                        <td><%=dr["gender"] %></td>
                        <td><%=dr["dob"] %></td>
                        <td><%=dr["address"] %></td>
                        <td><%=dr["village"] %></td>
                        <td><%=dr["postoffice"] %></td>
                        <td><%=dr["district"] %></td>
                        <td><%=dr["subdistrict"] %></td>
                        <td><%=dr["state"] %></td>
                        <td><%=dr["email"] %></td>
                        <td><%=dr["mobileno"] %></td>
                        <td><%=dr["pincode"] %></td>
                        <td><a href="editinfo.aspx?b=<%=dr["id"] %>" class="btn btn-outline-primary">Edit</a></td>
                        <td><a href="deleteinfo.aspx?a=<%=dr["id"] %>" class="btn btn-outline-danger">Delete</a></td>
                    </tr>


                    <%

                                }
                                con.Close();
                            }



                        }
                       



    %>












            </table>
         </div>

























   
</div>

</asp:Content>
