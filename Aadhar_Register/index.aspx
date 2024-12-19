<%@ Page Title="" Language="C#" MasterPageFile="~/Aadhar_Register.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Aadhar_Register.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .main{
            height:100%;
            width:100vw;
            background-color:#23527c;
            border:1px solid #23527c;
        }
        .main .info{
            height:100%;
            width:90vw;
            margin:60px;
            
        }
        .main .info span{
            font-size:26px;
            line-height:28px;
            color:#fff;
            font-weight:700;
        }
        .main .info .info1{
            height:auto;
            width:100%;
            border-top:5px solid #000046;
            margin-top:30px;
           padding-top:7px;
            
        }
        .main .info .info1 summary{
            font-size:20px;
            color:#cecccc;
            list-style-type:none;
            cursor:pointer;
        }
        .main .info .info1 p{
            font-size:14px;
            line-height:20px;
            margin-left:30px;
            margin-top:20px;
            color:#cecccc;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main">
        <div class="info">
            <span>Avail Aadhaar Services</span>
            <div class="info1">
                <details>
                    <summary>Verify Aadhaar ></summary>
                    <p>Aadhaar number can be verifed to acertain if the Aadhaar number is valid and is not deactivated.</p>
                </details>
            </div>

            <div class="info1">
                <details>
                    <summary>Verify Registered mobile or email id ></summary>
                    <p>You can verify your email address and mobile number that has been declared at the time of enrolment or during latest Aadhaar detail update.</p>
                </details>
            </div>

            <div class="info1">
                <details>
                    <summary>Retrieve Aadhaar ></summary>
                    <p>Lost your Aadhaar number? Retrieve it here on your registered mobile.</p>
                </details>
            </div>

            <div class="info1">
                <details>
                    <summary>Generate VID ></summary>
                    <p>VID is a temporary, revocable 16-digit random number mapped with the Aadhaar number. It can be used in lieu of Aadhaar number whenever authentication or e-KYC services are performed. It is not possible to derive Aadhaar number from VID.</p>
                </details>
            </div>

            <div class="info1">
                <details>
                    <summary>Offline Aadhaar Verification ></summary>
                    <p>Aadhaar Paperless e-KYC is a secure sharable document which can be used by any Aadhaar number holder for offline verification of Identification.</p>
                </details>
            </div>

            <div class="info1">
                <details>
                    <summary>Aadhaar Linking Status ></summary>
                    <p>View your Aadhaar and your Bank account linking status. Aadhaar Linking status is fetched from NPCI Server.</p>
                </details>
            </div>

            <div class="info1">
                <details>
                    <summary>Aadhaar Linking Status ></summary>
                    <p>View your Aadhaar and your Bank account linking status. Aadhaar Linking status is fetched from NPCI Server.</p>
                </details>
            </div>

            <div class="info1">
                <details>
                    <summary>Secure your Biometrics ></summary>
                    <p>Aadhaar number holders can secure their biometric authentication by locking their biometrics.</p>
                </details>
            </div>

            <div class="info1">
                <details>
                    <summary>Authentication History ></summary>
                    <p>View up to 50 previous authentication transactions on your Aadhaar.</p>
                </details>
            </div>

            <div class="info1">
                <details>
                    <summary>Aadhaar Lock/Unlock  ></summary>
                    <p>By Locking Aadhaar Number, Resident will not be able to perform any Authentication using Aadhaar Number. However, Resident can perform Authentication using Virtual ID.</p>
                </details>
            </div>

            <div class="info1">
                <details>
                    <summary>Aadhaar Services on SMS ></summary>
                    <p>You can avail Aadhaar Services by sending an SMS from Registered Mobile to 1947 in the format mentioned in the below link:</p>
                </details>
            </div>
            


        </div>
    </div>
</asp:Content>
