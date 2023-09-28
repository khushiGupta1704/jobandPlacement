<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="forgetPassword.aspx.cs" Inherits="forgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="front-assets/css/style.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <section style="background-image: url(front-assets/images/bg-full.jpg);" class="one-screen-page bg-gray-darker bg-image">
            
        <div class="shell">
             <div class="alert alert-success alert-dismissible fade show" role="alert" visible="false" id="lable_data" runat="server">
                <asp:Label ID="lable_msg" runat="server"></asp:Label>
                <asp:Button ID="btnTest" runat="server" Text="X" OnClick="btnTest_Click" />
            </div>
          <div class="range range-sm-center">
            <div class="cell-sm-7 cell-md-5 cell-lg-4" style="margin:50px">
              <div class="block-shadow text-center">
                <div class="block-inner">
                  <p class="text-uppercase text-abbey text-bold">Login to your account</p>
                  <!-- <div class="offset-top-40 offset-sm-top-60"><span class="icon icon-xl icon-gray-base material-icons-lock_open"></span></div> -->
                </div>
                <div class="rd-mailform form-modern form-darker offset-top-40">
                  <div class="block-inner">
                    <div class="form-group">
                      <asp:Textbox id="inputEmail" runat="server"
                        class="form-control" placeholder="Email"></asp:Textbox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputEmail" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                      <%--<label for="login-form-login" class="form-label">Login</label>--%>
                    </div>
                  </div>
                  <div class="offset-top-30 offset-sm-top-60">
                    <asp:Button runat="server" id="submit_button" onclick="submit_button_Click" class="btn btn-primary btn-block" Text="Send Request"></asp:button>
                  </div>
                </div>
              </div>
              <%--<div class="group-inline offset-top-15 text-center"><span class="text-white-08">Don't have an account
                  yet?</span><a href="" class="link link-primary-inverse">Sign up here.</a></div>--%>
            </div>
          </div>
        </div>
      </section>
      <section class="page-foot">
        <div class="page-foot-inner">
          <div class="shell text-center">
            <div class="range">
              <div class="cell-xs-12">
                <p class="rights text-small text-light"><span>Easy Audit</span><span>&nbsp;&#169;&nbsp;</span><span
                    id="copyright-year"></span><span>All Rights Reserved</span><br class="veil-sm">
                  <a href="#" class="link-primary-inverse">Terms of Use</a><span>and</span><a href="privacy-policy.html"
                    class="link-primary-inverse">Privacy Policy</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>
</asp:Content>
