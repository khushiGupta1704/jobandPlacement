<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="hospitalServices.aspx.cs" Inherits="hospitalServices" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://localhost:55500/front-assets/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section style="background-image: url(front-assets/images/bg-full.jpg);" class="one-screen-page bg-gray-darker bg-image">
        <div class="shell">
           
            <div class="range range-sm-center">
                <div class="cell-sm-12" style="margin: 50px;">
                    <div class="block-shadow text-center">
                       <%-- <div class="block-inner" >
                            <p class="text-uppercase text-abbey text-bold">Terms & Condition</p>
                            <!-- <div class="offset-top-35"><span class="icon icon-xl icon-gray-base material-icons-face"></span></div> -->
                        </div>--%>
                        <div class="rd-mailform form-modern form-darker offset-top-22" style="color:black">
                            <div class="block-inner">
                               <h2 style="color:black"><strong>Terms and Conditions</strong></h2>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  
</asp:Content>
