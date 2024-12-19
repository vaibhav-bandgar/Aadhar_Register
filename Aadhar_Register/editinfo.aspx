<%@ Page Title="" Language="C#" MasterPageFile="~/Aadhar_Register.Master" AutoEventWireup="true" CodeBehind="editinfo.aspx.cs" Inherits="Aadhar_Register.editinfo" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/registerstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 


    <%
        int num =int.Parse(Request.Params["b"]);

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-LQ7JDCH\\SQLEXPRESS;Initial Catalog=aadhar;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from registration where id='"+num+"';", conn);
        SqlDataReader br = cmd.ExecuteReader();
        while (br.Read())
        {

%>
       <div class="main">

    <div class="head"><h4>UPDATE AADHAAR INFORMATION</h4></div>
    
    <div class="data">
        <form action="updateinfo.aspx" enctype="multipart/form-data" method="post">    
           
            <table>

                    <td><input type="hidden" name="id" value="<%=Request.QueryString["b"]%>" /></td>
                <tr>
                    <td>Full name<strong>*</strong> :</td>
                    <td><input type="text" name="name" value="<%=br["name"] %>" class="form-control" placeholder="Enter Full Name" required/></td>
                </tr>
                 <tr>
                    <td>Gender<strong>*</strong> :</td>
                    <td>
                        <input type="radio" name="gen" value="male" required/> Male
                        <input type="radio" name="gen" value="female" required/> Female
                        <input type="radio" name="gen" value="other" required/> Other<br />
                    </td>
                </tr>
                 <tr>
                    <td>Date of birth<strong>*</strong> :</td>
                    <td><input type="date" name="dob" value="<%=br["dob"] %>" class="form-control" required/></td>
                </tr>
                 <tr>
                    <td>Address<strong>*</strong> :</td>
                    <td><input type="text" name="fulladd" value="<%=br["address"] %>" class="form-control" placeholder="Enter Full Address" required/></td>
                </tr>
                 <tr>
                    <td>Village/town/city :</td>
                    <td><input type="text" name="village" value="<%=br["village"] %>" class="form-control" placeholder="Enter Village/Town/City Name" required/></td>
                </tr>
                 <tr>
                    <td>Post office :</td>
                    <td><input type="text" name="post" value="<%=br["postoffice"] %>" class="form-control" placeholder="Enter Post Office" required/></td>
                </tr>
                <tr>
                    <td>District :</td>
                    <td><input type="text" name="dist" value="<%=br["district"] %>" class="form-control" placeholder="Enter District" required/></td>
                </tr>
                <tr>
                    <td>Sub-District :</td>
                    <td><input type="text" name="subdist" value="<%=br["subdistrict"] %>" class="form-control" placeholder="Enter Sub-District" required/></td>
                </tr>
                <tr>
                    <td>State<strong>*</strong> :</td>
                    <td><input type="text" name="state" value="<%=br["state"] %>" class="form-control" placeholder="Enter State" required/></td>
                </tr>
                <tr>
                    <td>Email<strong>*</strong> :</td>
                    <td><input type="email" name="email" value="<%=br["email"] %>" class="form-control" placeholder="Enter Email" required/></td>
                </tr>
                <tr>
                    <td>Mobile No.<strong>*</strong> :</td>
                    <td><input type="number" name="mobnumber" value="<%=br["mobileno"] %>" class="form-control" placeholder="Enter Mobile No." required/></td>
                </tr>
                <tr>
                    <td>Pin Code<strong>*</strong> :</td>
                    <td><input type="number" name="pin" value="<%=br["pincode"] %>" class="form-control" placeholder="Enter Pin Code" required/></td>
                </tr>
               <%-- <tr>
                    <td>Upload Photo<strong>*</strong> :</td>
                    <td> <input type="file" name="photo"  class="form-control" id="photo" required/></td>
                </tr>--%>
            </table>
            <div class="btn"><input type="submit" value="Update"></div>
        </form>
    </div>

</div>

    <%

        }

    %>



</asp:Content>
