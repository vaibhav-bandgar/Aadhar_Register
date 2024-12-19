<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateinfo.aspx.cs" Inherits="Aadhar_Register.updateinfo" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <%


        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-LQ7JDCH\\SQLEXPRESS;Initial Catalog=aadhar;Integrated Security=True");
        conn.Open();

        SqlCommand cmd = new SqlCommand(" update registration set name='" + Request.Params["name"] + "',gender='" + Request.Params["gen"] + "',DOB='" + Request.Params["dob"] +"',address='" + Request.Params["fulladd"] +"',village='" + Request.Params["village"] +"',postoffice='" + Request.Params["post"] +"',district='" + Request.Params["dist"] +"',subdistrict='" + Request.Params["subdist"] +"',state='" + Request.Params["state"] +"',email='" + Request.Params["email"] +"',mobileno='" + Request.Params["mobnumber"] +"',pincode='" + Request.Params["pin"] +"' where id='" + Request.Params["id"] +"'", conn);

        cmd.ExecuteNonQuery();

        Response.Redirect("view.aspx");

    %>



</body>
</html>
