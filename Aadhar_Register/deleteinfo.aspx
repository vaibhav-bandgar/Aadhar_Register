<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteinfo.aspx.cs" Inherits="Aadhar_Register.deleteinfo" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <%
        int s = int.Parse(Request.QueryString["a"]);

        try
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-LQ7JDCH\\SQLEXPRESS;Initial Catalog=aadhar;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from registration where id='"+s+"'", conn);
            SqlCommand cmmd = new SqlCommand("delete from photo where id='" + s + "'", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            cmmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("view.aspx");
        }
        catch(Exception ex)
        {
            Response.Write($"Error: {ex.Message}");
        }







    %>
   
</body>
</html>
