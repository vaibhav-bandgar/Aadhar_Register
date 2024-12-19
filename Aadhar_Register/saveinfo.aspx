<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="saveinfo.aspx.cs" Inherits="Aadhar_Register.saveinfo" %>
<%@ Import Namespace="System.Data.SqlClient"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
   


    <%

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-LQ7JDCH\\SQLEXPRESS;Initial Catalog=aadhar;Integrated Security=True");
        conn.Open();

        SqlCommand cmd = new SqlCommand("insert into registration values ('" + Request.Params["name"] + "','" + Request.Params["gen"] + "','" + Request.Params["dob"] + "','" + Request.Params["fulladd"] + "','" + Request.Params["village"] + "','" + Request.Params["post"] + "','" + Request.Params["dist"] + "','" + Request.Params["subdist"] + "','" + Request.Params["state"] + "','" + Request.Params["email"] + "','" + Request.Params["mobnumber"] + "','" + Request.Params["pin"] + "');", conn);
        cmd.ExecuteNonQuery();

        conn.Close();

       

    %>



    <%



        //              byte[] photoData;
        //          using (var binaryReader = new System.IO.BinaryReader(file.InputStream))
        //          {
        //              photoData = binaryReader.ReadBytes(file.ContentLength);
        //          }    

        // conn.Open();
        //              string query = "insert into photos (photodata) values (@PhotoData)";

        // cmd.Parameters.AddWithValue("@PhotoData", photoData);
        //cmd.ExecuteNonQuery();

        //conn.Close();

        //Response.Write("file upload successfully");



        var uploadedFile = Request.Files["photo"];

        if(uploadedFile!= null && uploadedFile.ContentLength > 0)
        {
            byte[] fileData;
            using(System.IO.BinaryReader reader = new System.IO.BinaryReader(uploadedFile.InputStream))
            {
                fileData = reader.ReadBytes(uploadedFile.ContentLength);
            }



            string query = "insert into photo (photodata) values (@PhotoData)";

            using(SqlCommand cmmd = new SqlCommand(query, conn))
            {
                cmmd.Parameters.AddWithValue("@PhotoData", fileData);
                conn.Open();
                cmmd.ExecuteNonQuery();
            }



        }


         Response.Redirect("register.aspx");



    %>




</body>
</html>
