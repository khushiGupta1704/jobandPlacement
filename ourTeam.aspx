<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="ourTeam.aspx.cs" Inherits="ourTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="front-assets/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section style="background-image: url(front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>Our Team</h2>
          </div>
        </div>
      </section>
      <section class="section-60 section-sm-90 section-sm-bottom-100 bg-white bg-image bg-image-1" style="padding-bottom:450px">
        <div class="shell">
            <h3 class="text-center"><span class="text-thin">Our</span>Team</h3>
          <div class="offset-top-22 offset-md-top-40">
              <div class="col-md-12"> 
            <div data-items="1" data-sm-items="3" data-stage-padding="15" data-loop="false" data-margin="15"
              data-mouse-drag="false" data-nav="true" data-dots="true"
              class="owl-carousel owl-carousel-center owl-nav-modern owl-style-minimal owl-style-minimal-inverse text-center">
              
                <asp:Repeater runat="server" ID="testimonialRepeater">
                    <ItemTemplate >
                        
              <div class="owl-item text-center">
                <div class="thumbnail-variant-5">
                  <div class="thumbnail-variant-5-img-wrap"><img src="<%#Eval("image")%>" width="129"
                      height="129" alt="" class="img-circle"></div>
                  <h4><%#Eval("name")%></h4>
                  <div class="text-dusty-gray"><%#Eval("designation")%></div>
                  <div class="text-dusty-gray">Working Interval <%#Eval("working_interval")%></div>
                  <div class="divider-fullwidth bg-porcelain"></div>                   
                   
                  <div class="link-group"><span class="icon icon-xxs icon-primary material-icons-local_phone"></span><a
                      href="callto:#" class="link-gray-base"><%#Eval("phone_no")%></a></div>
                  <div class="link-group"><span class="icon icon-xxs icon-primary fa-envelope-o"></span><a href="#6744"
                      class="link-gray-base"><span class="__cf_email__"
                        data-cfemail="375e5951587753525a585b5e595c19584550"><%#Eval("email")%></span></a></div>
                </div>
              </div>
                            
                        </ItemTemplate>                    
                </asp:Repeater>
            </div>
          </div>
          </div>

        </div>
      </section>
</asp:Content>