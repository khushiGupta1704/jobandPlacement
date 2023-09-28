<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="front-assets/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section style="background-image: url(front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>About Us</h2>
          </div>
        </div>
      </section>
      <section style="background-image: url(front-assets/images/about-1.jpg);"
        class="section-60 section-sm-90 section-sm-bottom-100 bg-white bg-image bg-image-1">
        <div class="shell">
          <div class="range range-sm-center range-md-right">
            <div class="cell-sm-8 cell-md-6 cell-lg-5">
              <h3>Why <span class="text-thin">Choose Us</span> </h3>
              <div class="offset-top-22">
                <h6>We Love Startups</h6>
                <p class="text-gray-base-05">Most of the time employment services agency aims for a well established business to make more money but here at Yunic Solutions, we view every business as an equal opportunity to help business grow.</p>
                <!-- <a href="our-team.html" class="">Read more</a> -->
              </div>
              <hr>
              <div class="offset-top-22">
                <h6>We are Process Oriented</h6>
                <p class="text-gray-base-05">Processes are very important as they helps you in designing your way to success. Our innovative processes are customized based on the requirements of the businesses and they industry they serve in.</p>
                <!-- <a href="our-team.html" class="">Read more</a> -->
              </div>
              <hr>
              <div class="offset-top-22">
                <h6>Best HR Consultancy Services</h6>
                <p class="text-gray-base-05">We are one of the best employment services in the market this is not what we say, it's our clients who refers us as the best employment agencies in India.</p>
                <!-- <a href="our-team.html" class="">Read more</a> -->
              </div>
            </div>
            <div class="cell-md-1"></div>
          </div>
        </div>
      </section>
      <section class="section-66 section-sm-top-100 section-sm-bottom-75">
        <div class="shell">
          <h3 class="text-center"><span class="text-thin">What</span>Client <span class="text-thin">says</span></h3>
          <div class="offset-top-22 offset-md-top-40">
              <div class="col-md-12"> 
            <div data-items="1" data-sm-items="3" data-stage-padding="15" data-loop="false" data-margin="15"
              data-mouse-drag="false" data-nav="true" data-dots="true"
              class="owl-carousel owl-carousel-center owl-nav-modern owl-style-minimal owl-style-minimal-inverse text-center">
              <%--<div class="owl-item text-center">
                <div class="thumbnail-variant-5">
                  <div class="thumbnail-variant-5-img-wrap"><img src="front-assets/images/team-1-151x151.jpg" width="129"
                      height="129" alt="" class="img-circle"></div>
                  <h4>John Doe</h4>
                  <div class="text-dusty-gray">Managing Director</div>
                  <div class="divider-fullwidth bg-porcelain"></div>
                  <div class="link-group"><span class="icon icon-xxs icon-primary material-icons-local_phone"></span><a
                      href="callto:#" class="link-gray-base">1900-2345-234</a></div>
                  <div class="link-group"><span class="icon icon-xxs icon-primary fa-envelope-o"></span><a href="#b497"
                      class="link-gray-base"><span class="__cf_email__"
                        data-cfemail="e980878f86a98d8c848685808782c7869b8e">philip@gmail.com</span></a></div>
                </div>
              </div>--%>
                <asp:Repeater runat="server" ID="testimonialRepeater">
                    <ItemTemplate >
                        
              <div class="owl-item text-center">
                <div class="thumbnail-variant-5">
                  <div class="thumbnail-variant-5-img-wrap"><img src="<%#Eval("image")%>" width="129"
                      height="129" alt="" class="img-circle"></div>
                  <h4><%#Eval("name")%></h4>
                  <div class="text-dusty-gray"><%#Eval("profession")%></div>
                  <div class="divider-fullwidth bg-porcelain"></div>
                    <%--<p><%#Eval("Comment")%></p>--%>
                    <div  style="overflow-wrap: break-word; width:200px">
                        <p><%#Eval("Comment")%></p>
                    </div>
                   
                  <%--<div class="link-group"><span class="icon icon-xxs icon-primary material-icons-local_phone"></span><a
                      href="callto:#" class="link-gray-base">1900-2345-234</a></div>
                  <div class="link-group"><span class="icon icon-xxs icon-primary fa-envelope-o"></span><a href="#6744"
                      class="link-gray-base"><span class="__cf_email__"
                        data-cfemail="375e5951587753525a585b5e595c19584550">philip@gmail.com</span></a></div>--%>
                </div>
              </div>
                            
                        </ItemTemplate>                    
                </asp:Repeater>
<%--              <div class="owl-item text-center">
                <div class="thumbnail-variant-5">
                  <div class="thumbnail-variant-5-img-wrap"><img src="front-assets/images/team-3-151x151.jpg" width="129"
                      height="129" alt="" class="img-circle"></div>
                  <h4>David Nicholson</h4>
                  <div class="text-dusty-gray">Audit Manager</div>
                  <div class="divider-fullwidth bg-porcelain"></div>
                  <div class="link-group"><span class="icon icon-xxs icon-primary material-icons-local_phone"></span><a
                      href="callto:#" class="link-gray-base">1900-2345-234</a></div>
                  <div class="link-group"><span class="icon icon-xxs icon-primary fa-envelope-o"></span><a href="#7350"
                      class="link-gray-base"><span class="__cf_email__"
                        data-cfemail="b6dfd8d0d9f6d2d3dbd9dadfd8dd98d9c4d1">philip@gmail.com</span></a></div>
                </div>
              </div>
              <div class="owl-item text-center">
                <div class="thumbnail-variant-5">
                  <div class="thumbnail-variant-5-img-wrap"><img src="front-assets/images/team-1-151x151.jpg" width="129"
                      height="129" alt="" class="img-circle"></div>
                  <h4>John Doe</h4>
                  <div class="text-dusty-gray">Managing Director</div>
                  <div class="divider-fullwidth bg-porcelain"></div>
                  <div class="link-group"><span class="icon icon-xxs icon-primary material-icons-local_phone"></span><a
                      href="callto:#" class="link-gray-base">1900-2345-234</a></div>
                  <div class="link-group"><span class="icon icon-xxs icon-primary fa-envelope-o"></span><a href="#9ebd"
                      class="link-gray-base"><span class="__cf_email__"
                        data-cfemail="f990979f96b99d9c949695909792d7968b9e">philip@gmail.com</span></a></div>
                </div>
              </div>--%>
            </div>
          </div>
          </div>

        </div>
      </section>
     
      <section class="section-66 section-sm-90 section-lg-bottom-120">
        <div class="shell">
          <div class="range">
            <div class="cell-xs-12">
              <h3>Who <span class="text-thin">we are</span> </h3>
            </div>
          </div>
          <div class="range range-lg-justify offset-top-40">
            <div class="cell-sm-6 cell-lg-5 text-secondary">
              <div class="inset-sm-right-15 inset-lg-right-0">
                <div class="text-gray-darker">
                <h6 class="offset-top-15 text-color">OUR VISION</h6>                  
                  <p>Growth is the most benign aspect of any business organization. We don’t think differently either. To expand our horizon in exploration of new avenues, we are driven by our aspirations to breach the geographical boundaries and work on a global platform.</p></div>
                <div class="text-gray-darker">
                  <h6 class="offset-top-15 text-color">OUR MISSION</h6> 
                  <p>We believe that every efficient employee is the asset of an organization and every job is tailor made for a job seeker. Hence, as jobs consultant, we try to make both these ends meet with our perseverance, commitment, and precision. We envision matching right candidates with companies they are inclined to work at with our unique search efficiency.</p></div>
              </div>
            </div>
            <div class="cell-sm-6 offset-top-40 offset-sm-top-0">
              <div class="shift-sm-top-1">
                <ul class="list-progress">
                  <li>
                    <p class="animated fadeIn text-gray-darker h7">Quality</p>
                    <div data-value="70" data-stroke="4" data-easing="linear" data-counter="true" data-duration="1000"
                      data-trail="100" class="progress-bar-js text-bold progress-bar-horizontal progress-bar-primary">
                    </div>
                  </li>
                  <li>
                    <p class="animated fadeIn text-gray-darker h7">Integrity</p>
                    <div data-value="54" data-stroke="4" data-easing="linear" data-counter="true" data-duration="1000"
                      data-trail="100" class="progress-bar-js text-bold progress-bar-horizontal progress-bar-old-gold">
                    </div>
                  </li>
                  <li>
                    <p class="animated fadeIn text-gray-darker h7">Key to success</p>
                    <div data-value="87" data-stroke="4" data-easing="linear" data-counter="true" data-duration="1000"
                      data-trail="100"
                      class="progress-bar-js text-bold progress-bar-horizontal progress-bar-bermuda-gray"></div>
                  </li>
                  <li>
                    <p class="animated fadeIn text-gray-darker h7">Expertise</p>
                    <div data-value="90" data-stroke="4" data-easing="linear" data-counter="true" data-duration="1000"
                      data-trail="100" class="progress-bar-js text-bold progress-bar-horizontal progress-bar-contessa">
                    </div>
                  </li>
                  <li>
                    <p class="animated fadeIn text-gray-darker h7">Honesty</p>
                    <div data-value="70" data-stroke="4" data-easing="linear" data-counter="true" data-duration="1000"
                      data-trail="100" class="progress-bar-js text-bold progress-bar-horizontal progress-bar-primary">
                    </div>
                  </li>
                  <li>
                    <p class="animated fadeIn text-gray-darker h7">Responsiveness</p>
                    <div data-value="54" data-stroke="4" data-easing="linear" data-counter="true" data-duration="1000"
                      data-trail="100" class="progress-bar-js text-bold progress-bar-horizontal progress-bar-old-gold">
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
</asp:Content>
