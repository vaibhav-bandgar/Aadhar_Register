<%@ Page Title="" Language="C#" MasterPageFile="~/Aadhar_Register.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Aadhar_Register.login" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/loginstyle.css" rel="stylesheet" />
   
    <style>
        .main{
            height:100vh;
        }
        .main span a{
            color:#fff;
            text-decoration:none;
        }
        .main span a:hover{
            /*color:#000046;*/
            border-bottom:2px solid #000046;
        }
        .main .acard{
            height:500px;
            width:100vw;
           
            display:flex;
            padding-left:80px;
            margin-top:30px;
        }
        .main .acard .front{
            height:300px;
            width:40vw;
          
        }
        .main .acard .front .header,.bheader{
            height:80px;
            width:100%;
           
        }
        .main .acard .front .header img{
            margin:0;
            padding:0;
            height:80px;
            width:100%;
        }
        .main .acard .front .maininfo{
            height:170px;
            width:100%;
           background-color:#fff;
            display:flex;
        }
        .main .acard .front .maininfo .pphoto{
            height:130px;
            width:100px;
           
            margin-top:20px;
            margin-left:40px;
            border-radius:10px;
        }
        .main .acard .front .maininfo .pphoto img{
            height:130px;
            width:100px;
            border-radius:10px;
        }
        .main .acard .front .maininfo .pinfo{
            height:130px;
            width:60%;
            margin-left:20px;
            margin-top:20px;
            
            font-weight:600;
        }
        .main .acard .front .footer,.bfooter{
            height:45px;
            width:100%;
           
            border-top:3px solid red;
        }
        .main .acard .front .footer img{
            height:45px;
            width:100% ;
            margin:0;
            padding:0;
        }
        .main .acard .back{
            height:300px;
            width:40vw;
          
            margin-left:70px;
        }
        .main .acard .back .bheader img{
            margin:0;
            padding:0;
            height:120px;
            width:100%;
        }
        .main .acard .bmaininfo{
            height:170px;
            width:100%;
           background-color:#fff;
            
            
        }
        .main .acard .bmaininfo .bmaininfotext{
            padding-top:20px;
            padding-left:20px;
            font-weight:600;
        }
        .main .acard .back .bfooter img{
            height:45px;
            width:100% ;
            margin:0;
            padding:0;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="main">

    

    <form method="post">
        <center><br /><br />
       <%-- <label for="userID"><h3>Enter User ID For Show Your Aadhaar Card:</h3></label><br />--%>
        <input type="text" id="userID" name="userID"  placeholder="Enter ID For Show Your Aadhaar Card" required style="width:400px; height:40px; margin-bottom:-40px;"/><br /><br />
        <span><a href="view.aspx" >Click here to view our id </a> </span><br />
            <input type="submit" value="Submit" style="width:100px; height:40px; margin-top:10px;"/>
            </center>

    </form>
   

    <section class="acard">
        <div class="front">
            <div class="header">
                <img src="image/aadhar/front%20header.png" />
            </div>

            <div class="maininfo">
                <div class="pphoto">
                    <img src="<%= GetUserImage() %>" />
                </div>
                <div class="pinfo">

                  <%


                      if (Request.Form["userID"] != null)
                      {
                          int userID = 0;
                          if (int.TryParse(Request.Form["userID"], out userID))
                          {
                              // Using a `using` statement for the connection
                              using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-LQ7JDCH\\SQLEXPRESS;Initial Catalog=aadhar;Integrated Security=True"))
                              {
                                  try
                                  {
                                      con.Open(); // Open the connection once here

                                      using (SqlCommand cmd = new SqlCommand("SELECT * FROM registration WHERE id=@UserID;", con))
                                      {
                                          cmd.Parameters.AddWithValue("@UserID", userID);

                                          // Execute the command and read the data
                                          using (SqlDataReader br = cmd.ExecuteReader())
                                          {
                                              while (br.Read())
                                              {
                                                  //Response.Write(br["id"]);
                                                  //Response.Write(br["name"]);
                                                  //Response.Write(br["address"]);

                                                    %>

                                                    <p><span><%=br["name"] %></span><br />
                                                    Date Of Birth:<span><%=br["dob"] %></span><br />
                                                    <span><%=br["gender"] %></span></p><br />
                                                    <h3>XXXX XXXX XXXX</h3>


                                                    <%


                                                }
                                            }
                                        }
                                    }
                                    catch (Exception ex)
                                    {
                                        // Handle any exceptions
                                        Response.Write("Error: " + ex.Message);
                                    }
                                } // Connection is automatically closed here
                            }
                            else
                            {
                                Response.Write("<script>alert('invalid number')</script>");
                            }
                      }




                      %>

    




                    
                </div>
            

           

            </div>
            <div class="footer">
                <img src="image/aadhar/front%20footer.png" />
            </div>

        </div>
        <div class="back">
            <div class="bheader">
                <img src="image/aadhar/back%20header.png" />
            </div>

             <div class="bmaininfo">
                
                  <%


                      if (Request.Form["userID"] != null)
                      {
                          int userID = 0;
                          if (int.TryParse(Request.Form["userID"], out userID))
                          {
                              // Using a `using` statement for the connection
                              using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-LQ7JDCH\\SQLEXPRESS;Initial Catalog=aadhar;Integrated Security=True"))
                              {
                                  try
                                  {
                                      con.Open(); // Open the connection once here

                                      using (SqlCommand cmd = new SqlCommand("SELECT * FROM registration WHERE id=@UserID;", con))
                                      {
                                          cmd.Parameters.AddWithValue("@UserID", userID);

                                          // Execute the command and read the data
                                          using (SqlDataReader br = cmd.ExecuteReader())
                                          {
                                              while (br.Read())
                                              {
                                                  //Response.Write(br["id"]);
                                                  //Response.Write(br["name"]);
                                                  //Response.Write(br["address"]);

                                                    %>

                                                   <div class="bmaininfotext">
                                                        <p>Address<br />
                                                        Village: <span><%=br["village"] %></span>,PO: <span><%=br["postoffice"] %></span>,<br />DIST: <span><%=br["district"] %></span>,<br /><span> <%=br["state"] %></span>-<span><%=br["pincode"] %></span></p>

                                                        <center><h3>XXXX XXXX XXXX</h3></center>
                                                    </div>
             


                                                    <%


                                                }
                                            }
                                        }
                                    }
                                    catch (Exception ex)
                                    {
                                        // Handle any exceptions
                                        Response.Write("Error: " + ex.Message);
                                    }
                                } // Connection is automatically closed here
                            }
                            else
                            {
                                Response.Write("Invalid user id format");
                            }
                      }




                      %>



             </div>

                 

             <div class="bfooter">
                 <img src="image/aadhar/back%20footer.png" />
            </div>
        </div>
    </section>

    

    <%


        string GetUserImage()
        {

            string imageSrc = "images/defaults.jpg";
            if (Request.Form["userID"] != null)
            {
                int userID = 0;
                if (int.TryParse(Request.Form["userID"],out userID))
                {
                    string connectionstring = "Data Source=DESKTOP-LQ7JDCH\\SQLEXPRESS;Initial Catalog=aadhar;Integrated Security=True";
                    string query = "select photodata from photo where id=@UserID";
                    byte[] imageBytes = null;
                    using(SqlConnection conn = new SqlConnection(connectionstring))
                    {
                        using(SqlCommand cmd= new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@UserID", userID);
                            try
                            {
                                conn.Open();
                                imageBytes = cmd.ExecuteScalar() as byte[];
                                conn.Close();
                            }
                            catch(Exception ex)
                            {
                                Response.Write("Error is :"+ex.Message);
                            }
                        }
                    }
                    if (imageBytes != null && imageBytes.Length>0)
                    {
                        imageSrc="data:image/jpeg;base64," + Convert.ToBase64String(imageBytes);
                    }
                    else
                    {
                        Response.Write("No image found for user id :" + userID);
                    }
                }
                else
                {
                    Response.Write("Invalid user id format");
                }
            }
            return imageSrc;
        }

       

    %>







</div>



</asp:Content>
