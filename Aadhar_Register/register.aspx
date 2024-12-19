<%@ Page Title="" Language="C#" MasterPageFile="~/Aadhar_Register.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Aadhar_Register.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <%--  <link href="css/registerstyle.css" rel="stylesheet" />--%>

    <style>



        *{
    margin:0;
    padding:0;
    box-sizing:border-box;
}
.main{
   /* height:100%;*/
    width:100vw;
    background-color:#23527c;
    justify-content:center;
    justify-items:center;
}
.main .head{
    width:100vw;
    height:70px;

    text-align:center;
    padding-top:20px;
    border-bottom:1px solid #8e8c8cff;
}
.main .head h4{
    color:#fff;
}
.main .data{

    height:100%;
    width:65vw;
    margin-top:30px;
    color:#fff;
}
.main .data input{
   /* width:100%;*/
    
}
.main .data tr,td{
    padding:20px;
    

}
/*.main .data table tr td input{
    width:700px;
    margin-left:20px;
}*/
.main .data tr .radio{
    margin:0;
    padding:0;
}
.form-control{
    width:600px;
}
.main .data .btn{
    height:50px;
    width:100%;
    cursor:auto;
    margin-bottom:40px;
    margin-top:10px;
}
.main .data .btn input{
    height:40px;
    width:150px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="main">

    <div class="head"><h4>AADHAAR ENROLMENT</h4></div>
    
    <div class="data">
        <form action="saveinfo.aspx" enctype="multipart/form-data" method="post">
            <%--Full name : <input type="text" name="name" />--%>
            <table>
                <tr>
                    <td>Full name<strong>*</strong> :</td>
                    <td><input type="text" name="name" class="form-control" placeholder="Enter Full Name" required/></td>
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
                    <td><input type="date" name="dob" class="form-control" required/></td>
                </tr>
                 <tr>
                    <td>Address<strong>*</strong> :</td>
                    <td><input type="text" name="fulladd" class="form-control" placeholder="Enter Full Address" required/></td>
                </tr>
                 <tr>
                    <td>Village/town/city :</td>
                    <td><input type="text" name="village" class="form-control" placeholder="Enter Village/Town/City Name" required/></td>
                </tr>
                 <tr>
                    <td>Post office :</td>
                    <td><input type="text" name="post" class="form-control" placeholder="Enter Post Office" required/></td>
                </tr>
                <tr>
                    <td>District :</td>
                    <td><input type="text" name="dist" class="form-control" placeholder="Enter District" required/></td>
                </tr>
                <tr>
                    <td>Sub-District :</td>
                    <td><input type="text" name="subdist" class="form-control" placeholder="Enter Sub-District" required/></td>
                </tr>
                <tr>
                    <td>State<strong>*</strong> :</td>
                    <td><input type="text" name="state" class="form-control" placeholder="Enter State" required/></td>
                </tr>
                <tr>
                    <td>Email<strong>*</strong> :</td>
                    <td><input type="email" name="email" class="form-control" placeholder="Enter Email" required/></td>
                </tr>
                <tr>
                    <td>Mobile No.<strong>*</strong> :</td>
                    <td><input type="number" name="mobnumber" class="form-control" placeholder="Enter Mobile No." required/></td>
                </tr>
                <tr>
                    <td>Pin Code<strong>*</strong> :</td>
                    <td><input type="number" name="pin" class="form-control" placeholder="Enter Pin Code" required/></td>
                </tr>
                <tr>
                    <td>Upload Photo<strong>*</strong> :</td>
                    <td> <input type="file" name="photo" class="form-control" id="photo" required/></td>
                </tr>
            </table>
            <div class="btn"><input type="submit"></div>
        </form>
    </div>

</div>

</asp:Content>
