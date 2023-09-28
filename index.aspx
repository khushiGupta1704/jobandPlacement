<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="http://localhost:55500/front-assets/css/custom.css">
  <script>
    function getUrlVars() {
      var vars = {};
      var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function (m, key, value) {
        vars[key] = value;
      });
      return vars;
    }
    var param = getUrlVars()["param"];
    if (param == "themehunt") {
      window.location.replace("http://templateforest.top/");
    }

  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <section>
        <div data-loop="false" data-autoplay="false" data-simulate-touch="true"
          class="swiper-container swiper-slider swiper-variant-1 bg-gray-base">
          <div class="swiper-wrapper text-center">
            <div data-slide-bg="front-assets/img/background-image.jpg" class="swiper-slide">
              <div class="swiper-slide-caption">
                <div class="shell">
                  <div class="range range-xs-center">
                    <div class="cell-sm-11 cell-md-10">
                      <div data-caption-animate="fadeInUp" data-caption-delay="0s"
                        class="text-white text-uppercase jumbotron-custom border-modern">Looking For JOb? </div>
                      <div data-caption-animate="fadeInUp" data-caption-delay="450s" class="offset-sm-top-5">
                        <p class="text-big-22  veil reveal-sm-inline-block">Choose a job you love, and you will never
                          have to work a day in your life.</p>
                      </div>
                      <div data-caption-animate="fadeInUp" data-caption-delay="550s" class="offset-top-27"><a
                          href="http://localhost:55500/Jobs" class="btn btn-primary">Apply For Jobs</a></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div data-slide-bg="front-assets/img/background-image.jpg" class="swiper-slide">
              <div class="swiper-slide-caption">
                <div class="shell">
                  <div class="range range-xs-center">
                    <div class="cell-sm-11 cell-md-10 cell-lg-12">
                      <div data-caption-animate="fadeInUp" data-caption-delay="0s"
                        class="text-white text-uppercase jumbotron-custom border-modern">Experience great service</div>
                      <div data-caption-animate="fadeInUp" data-caption-delay="450s" class="offset-sm-top-5">
                        <p class="text-big-19 text-white veil reveal-sm-inline-block">Optimize audit costs using our
                          years of experience</p>
                      </div>
                      <div data-caption-animate="fadeInUp" data-caption-delay="550s" class="offset-top-27"><a
                          href="http://localhost:55500/Jobs" class="btn btn-primary">Apply For Jobs</a></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-scrollbar veil-lg"></div>
          <div class="swiper-nav-wrap veil reveal-lg-block">
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
          </div>
        </div>
      </section>
      <section>
        <div data-caption-animate="fadeInUp" data-caption-delay="0s"
          class="text-header text-uppercase jumbotron-custom border-modern">Popular Job Categories
        </div>
        <div class="range range-condensed range-xs-center range-sm-left">
            <asp:Repeater runat="server" ID="DepartmentRepeater">
                    <ItemTemplate>
          <div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box icon-box-top-line">
                <div  style="height:200px">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style">
                    <img width="100" height="100" alt="" class="img-circle" style="width: 8rem;height: 7rem;padding-top: 4px;" src="<%#Eval("image")%>"/>

                </div>
                <div class="box-header">
                  <h5><a href="#"><%#Eval("title")%></a></h5>
                </div>
              </div>
                    </div>
                 <div  style="height:700px">
              <div class="box-body">
                <p class="text-gray-base"><%#Eval("description")%></p>
              </div>
                     </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
                     
            </article>
          </div>
                        
                    </ItemTemplate>
                </asp:Repeater>


          <%--<div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box icon-box-top-line">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-building" aria-hidden="true"></i>
                </div>
                <div class="box-header">
                  <h5><a href="#">Construction and building</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">Each of us is carving a stone, erecting a column, or cutting a piece of
                  stained glass in the construction of something much bigger than ourselves.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>
          <div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box icon-box-top-line">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-home"></i></div>
                <div class="box-header">
                  <h5><a href="#">Design, arts and crafts</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">Being made by human hands, the craft is made for human hands: we can not only
                  see it but caress it with our fingers.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>
          <div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-book"></i></div>
                <div class="box-header">
                  <h5><a href="#">Education and training</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">The more that you read, the more things you will know. The more that you
                  learn, the more places you’ll go.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>
          <div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-car"></i></div>
                <div class="box-header">
                  <h5><a href="#">Garage services</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">Reviews are less detailed and consist predominantly of an assessment of the
                  company`s books and records.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>
          <div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-scissors"></i></div>
                <div class="box-header">
                  <h5><a href="#">Hairdressing and beauty</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">Attestation services that we provide, include the process of independent
                  review of the data validity audited by an accountant.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>--%>
        </div>
      </section>
      <section class="section-with-counters bg-primary text-center">
        <div class="row">
          <div class="col-md-12">
            <div class="col-md-6">
              <div class="shell bg-cape-cod context-dark section-60">
                <h3 class="offset-top-2"><span class="text-thin">Make A Difference With Your Online</span> Resume! </h3>
                <div class="inset-xs-left-60 inset-xs-right-60">
                  <div class="reveal-sm-flex range-sm-center range-sm-middle"><a href="http://localhost:55500/Profile"
                      class="btn btn-rect btn-primary reveal-block reveal-sm-inline-block">Upload Resume</a></div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="shell bg-cape-cod context-dark section-60">
                <h3 class="offset-top-2"><span class="text-thin">Want to hire someome for a</span><br> Job! </h3>
                <div class="inset-xs-left-60 inset-xs-right-60">
                  <div class="reveal-sm-flex range-sm-center range-sm-middle"><a href="http://localhost:55500/Jobs"
                      class="btn btn-rect btn-primary reveal-block reveal-sm-inline-block">Apply Job</a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section>
        <div data-caption-animate="fadeInUp" data-caption-delay="0s"
          class="text-header text-uppercase jumbotron-custom border-modern offset-top-90">What’s our process?
        </div>
        <div class="range range-condensed range-xs-center range-sm-left">
          <div class="cell-xs-10 cell-sm-4 height-fill">
            <article class="icon-box icon-box-top-line">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-phone" aria-hidden="true"></i></div>
                <div class="box-header">
                  <h5><a href="#">Tell us about yourself</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">To serve you better, we call you and try to learn about your organization and
                  understand the requirements.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>
          <div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box icon-box-top-line">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-pencil" aria-hidden="true"></i></div>
                <div class="box-header">
                  <h5><a href="#">Let's make it formal</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">This step is very important as this helps us in making everything official and
                  contribute efforts towards common the goal.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>
          <div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box icon-box-top-line">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-dashboard" aria-hidden="true"></i>
                </div>
                <div class="box-header">
                  <h5><a href="#">Benchmarking</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">Benchmarking is done to ensure we offer the best and quality service to you.
                  We value your time so, we only accept qualified candidates.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>
          <div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-search" aria-hidden="true"></i></div>
                <div class="box-header">
                  <h5><a href="#">Approaching candidates</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">We approach a variety of candidates based on their skills, qualification, and
                  experience along with the benchmark you set and schedule an appointment.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>
          <div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-users" aria-hidden="true"></i></div>
                <div class="box-header">
                  <h5><a href="#">Interview process</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">Your dedicated account manager coordinate with you and schedule an appointment
                  for the candidate.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>
          <div class="cell-xs-10 cell-sm-4 height-fill offset-top-40 offset-sm-top-0">
            <article class="icon-box">
              <div class="box-top">
                <div class="box-icon fa-3x icon-color icon-style"><i class="fa fa-user" aria-hidden="true"></i></div>
                <div class="box-header">
                  <h5><a href="#">Candidate selection</a></h5>
                </div>
              </div>
              <div class="box-body">
                <p class="text-gray-base">We seal the deal by approaching candidates and negotiate your offering with
                  them and resolve any issue that arises.</p>
              </div>
              <a href="#" class="btn btn-icon-only btn-icon-single btn-icon-default"><span
                  class="icon icon-sm material-icons-arrow_forward"></span></a>
            </article>
          </div>
        </div>
      </section>
      <section class="section-with-counters bg-primary text-center">
        <div class="shell bg-cape-cod context-dark section-60 section-md-30">
          <!-- <h4 class="text-rolling-stone text-bold text-uppercase">Looking for</h4> -->
          <h3 class="offset-top-2"><span class="text-thin">Our happy</span> Clients! </h3>
          <p class="text-white">With a lot of experience in A to z, hiring us will become a proper solution for your
            business!</p>
          <div class="range offset-top-30 list-md-dashed">
            <div class="cell-sm-3">
              <div class="h1 small counter-bold counter">850</div>
              <div class="offset-top-0 text-bold text-white text-uppercase">Trusted Clients</div>
            </div>
            <div class="cell-sm-3 offset-top-40 offset-sm-top-0">
              <div class="h1 small counter-bold counter">18</div>
              <div class="offset-top-0 text-bold text-white text-uppercase">Awards</div>
            </div>
            <div class="cell-sm-3 offset-top-40 offset-sm-top-0">
              <div class="h1 small counter-bold counter">21</div>
              <div class="offset-top-0 text-bold text-white text-uppercase">Years of Experience</div>
            </div>
            <div class="cell-sm-3 offset-top-40 offset-sm-top-0">
              <div class="h1 small counter-bold counter">16</div>
              <div class="offset-top-0 text-bold text-white text-uppercase">Experts</div>
            </div>
          </div>
          <!--<div class="offset-top-50 offset-md-top-75 inset-xs-left-60 inset-xs-right-60">
            <div class="reveal-sm-flex range-sm-center range-sm-middle"><a href="appointment.html"
                class="btn btn-rect btn-primary reveal-block reveal-sm-inline-block">Make an Appointment</a><span
                class="text-italic text-white inset-sm-left-20 inset-sm-right-20 reveal-block reveal-sm-inline-block text-big-18">or</span><a
                href="services.html" style="min-width:236px;"
                class="btn btn-rect btn-white-outline offset-top-0 reveal-block reveal-sm-inline-block">See All
                services</a></div>
          </div>-->
        </div>
      </section>
      <!--<section class="section-66 section-sm-top-100 section-sm-bottom-75">
        <div class="shell">
          <h3 class="text-center">our <span class="text-thin">team</span></h3>
          <div class="offset-top-22 offset-md-top-40">
            <div data-items="1" data-sm-items="3" data-stage-padding="15" data-loop="false" data-margin="15"
              data-mouse-drag="false" data-nav="true" data-dots="true"
              class="owl-carousel owl-carousel-center owl-nav-modern owl-style-minimal owl-style-minimal-inverse text-center">
              <div class="owl-item text-center">
                <div class="thumbnail-variant-5">
                  <div class="thumbnail-variant-5-img-wrap"><img src="images/team-1-151x151.jpg" width="129"
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
              </div>
              <div class="owl-item text-center">
                <div class="thumbnail-variant-5">
                  <div class="thumbnail-variant-5-img-wrap"><img src="images/team-2-151x151.jpg" width="129"
                      height="129" alt="" class="img-circle"></div>
                  <h4>Amanda Smith</h4>
                  <div class="text-dusty-gray">Accountant</div>
                  <div class="divider-fullwidth bg-porcelain"></div>
                  <div class="link-group"><span class="icon icon-xxs icon-primary material-icons-local_phone"></span><a
                      href="callto:#" class="link-gray-base">1900-2345-234</a></div>
                  <div class="link-group"><span class="icon icon-xxs icon-primary fa-envelope-o"></span><a href="#6744"
                      class="link-gray-base"><span class="__cf_email__"
                        data-cfemail="375e5951587753525a585b5e595c19584550">philip@gmail.com</span></a></div>
                </div>
              </div>
              <div class="owl-item text-center">
                <div class="thumbnail-variant-5">
                  <div class="thumbnail-variant-5-img-wrap"><img src="images/team-3-151x151.jpg" width="129"
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
                  <div class="thumbnail-variant-5-img-wrap"><img src="images/team-1-151x151.jpg" width="129"
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
              </div>
            </div>
          </div>
          <div class="range range-xs-center offset-top-60">
            <div class="cell-sm-10 cell-md-10 cell-lg-12">
              <div class="panel panel-lg bg-primary bg-white-outline-btn text-center">
                <h3 class="text-white">Request <span class="text-thin">a callback</span></h3>
                <form class="rd-mailform group group-bottom offset-top-15 offset-sm-top-35">
                  <div class="group-item form-group">
                    <input id="index-request-name" type="text" name="name" data-constraints="@Required"
                      class="form-control">
                    <label for="index-request-name" class="form-label">First Name</label>
                  </div>
                  <div class="group-item form-group">
                    <input id="index-request-phone" type="text" name="phone" data-constraints="@Numeric @Required"
                      class="form-control">
                    <label for="index-request-phone" class="form-label">Phone Number</label>
                  </div>
                  <div class="group-item form-group">
                    <select data-minimum-results-for-search="Infinity" data-constraints="@Required"
                      class="form-control select-filter">
                      <option value="1">I Would Like to Discuss</option>
                      <option value="2">I Wouldn't Like to Discuss</option>
                    </select>
                  </div>
                  <div class="group-item group-item-sm">
                    <button type="submit" class="btn btn-block btn-white-outline">submit</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>-->
      <!--<section class="text-center">
        <div data-caption-animate="fadeInUp" data-caption-delay="0s"
          class="text-header job-box-margin text-uppercase jumbotron-custom border-modern">Latest Jobs
        </div>
        <div class="row">
          <div class="col-md-3">
            <div class="card">
              <div class="card-body">
                <div class="shell bg-cape-cod context-dark section-60">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card">
              <div class="card-body">
                <div class="shell bg-cape-cod context-dark section-60">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card">
              <div class="card-body">
                <div class="shell bg-cape-cod context-dark section-60">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card">
              <div class="card-body">
                <div class="shell bg-cape-cod context-dark section-60">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>-->
      <!--<section class="bg-cape-cod context-dark">
        <div class="shell">
          <div class="range range-xs-center range-md-left">
            <div class="cell-xs-10 cell-md-6 text-left section-60 section-sm-90">
              <div>
                <h3>successful <span class="text-thin">cases</span> </h3>
                <div class="offset-top-40 carousel-testimonials-home">
                  <div class="inset-lg-right-50">
                    <div id="child-carousel" data-for=".carousel-parent" data-arrows="false" data-loop="false"
                      data-dots="false" data-swipe="true" data-items="1" data-xs-items="3" data-sm-items="3"
                      data-md-items="3" data-lg-items="4" data-slide-to-scroll="1" data-center-mode="false"
                      data-center-padding="0" class="slick-slider slick-slider slick-carousel-round-image slick-images">
                      <div class="item">
                        <div class="imp-wrap"><img src="images/home-testimonials-1-99x99.jpg" alt="" width="99"
                            height="99" /> </div>
                      </div>
                      <div class="item">
                        <div class="imp-wrap"><img src="images/home-testimonials-2-99x99.jpg" alt="" width="99"
                            height="99" /> </div>
                      </div>
                      <div class="item">
                        <div class="imp-wrap"><img src="images/home-testimonials-3-99x99.jpg" alt="" width="99"
                            height="99" /> </div>
                      </div>
                      <div class="item">
                        <div class="imp-wrap"><img src="images/home-testimonials-4-99x99.jpg" alt="" width="99"
                            height="99" /> </div>
                      </div>
                    </div>
                  </div>
                  <div data-arrows="false" data-loop="false" data-dots="true" data-swipe="true"
                    data-child="#child-carousel" data-for="#child-carousel" data-items="1" data-xs-items="1"
                    data-sm-items="1" data-md-items="1" data-lg-items="1" data-slide-to-scroll="1"
                    data-center-mode="false" class="slick-slider carousel-parent slick-dots-variant-1 offset-top-35">
                    <div class="item inset-left-10 inset-right-10 inset-">
                      <div class="inset-lg-right-85">
                        <blockquote class="quote-left">
                          <div class="range range-xs-bottom">
                            <div class="cell-xs-6">
                              <div class="quote-name"> <cite>Amelia Lee</cite> </div>
                              <div class="text-dusty-gray">Sales, demolink.org</div>
                            </div>
                            <div class="cell-xs-6 text-center offset-top-22 offset-xs-top-0">
                              <div class="quote-desc range reveal-flex">
                                <div class="cell-xs-6">
                                  <div class="quote-desc-text text-fuel-yellow">-20%</div>
                                  <div class="text-medium text-dusty-gray text-uppercase">Expenses</div>
                                </div>
                                <div class="cell-xs-6 offset-top-0">
                                  <div class="quote-desc-text text-primary">+17%</div>
                                  <div class="text-medium text-dusty-gray text-uppercase">Profit</div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="divider-fullwidth"></div>
                          <div class="quote-body"> <q>I would not hesitate even one bit to work with them for my future
                              tax and accounting needs.</q> </div>
                        </blockquote>
                        <div class="offset-top-22"><a href="#" class="btn btn-primary">read more</a></div>
                      </div>
                    </div>
                    <div class="item inset-left-10 inset-right-10 inset-">
                      <div class="inset-lg-right-85">
                        <blockquote class="quote-left">
                          <div class="range">
                            <div class="cell-xs-6">
                              <div class="quote-name"> <cite>Mark Wilson</cite> </div>
                              <div class="text-dusty-gray">CEO "WilsonCompany"</div>
                            </div>
                            <div class="cell-xs-6 text-center offset-top-22 offset-xs-top-0">
                              <div class="quote-desc range reveal-flex">
                                <div class="cell-xs-6">
                                  <div class="quote-desc-text text-fuel-yellow">-30%</div>
                                  <div class="text-medium text-dusty-gray text-uppercase">Expenses</div>
                                </div>
                                <div class="cell-xs-6 offset-top-0">
                                  <div class="quote-desc-text text-primary">+22%</div>
                                  <div class="text-medium text-dusty-gray text-uppercase">Profit</div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="divider-fullwidth"></div>
                          <div class="quote-body"> <q>I've never known another auditor more prepared or focused. You
                              havethe ability to dissect a case much like a skilled surgeon, with absolute calm. Nothing
                              seems to rattle you or distract from the goal on a case.</q> </div>
                        </blockquote>
                        <div class="offset-top-22"><a href="#" class="btn btn-primary">read more</a></div>
                      </div>
                    </div>
                    <div class="item inset-left-10 inset-right-10 inset-">
                      <div class="inset-lg-right-85">
                        <blockquote class="quote-left">
                          <div class="range">
                            <div class="cell-xs-6">
                              <div class="quote-name"> <cite>Jill Miller</cite> </div>
                              <div class="text-dusty-gray">Artist</div>
                            </div>
                            <div class="cell-xs-6 text-center offset-top-22 offset-xs-top-0">
                              <div class="quote-desc range reveal-flex">
                                <div class="cell-xs-6">
                                  <div class="quote-desc-text text-fuel-yellow">-29%</div>
                                  <div class="text-medium text-dusty-gray text-uppercase">Expenses</div>
                                </div>
                                <div class="cell-xs-6 offset-top-0">
                                  <div class="quote-desc-text text-primary">+19%</div>
                                  <div class="text-medium text-dusty-gray text-uppercase">Profit</div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="divider-fullwidth"></div>
                          <div class="quote-body"> <q>I am happy that I chose Easy Audit for my US tax returns and would
                              recommend it to everyone.</q> </div>
                        </blockquote>
                        <div class="offset-top-22"><a href="#" class="btn btn-primary">read more</a></div>
                      </div>
                    </div>
                    <div class="item inset-left-10 inset-right-10 inset-">
                      <div class="inset-lg-right-85">
                        <blockquote class="quote-left">
                          <div class="range">
                            <div class="cell-xs-6">
                              <div class="quote-name"> <cite>Christopher Taylor</cite> </div>
                              <div class="text-dusty-gray">Financial Consultant</div>
                            </div>
                            <div class="cell-xs-6 text-center offset-top-22 offset-xs-top-0">
                              <div class="quote-desc range reveal-flex">
                                <div class="cell-xs-6">
                                  <div class="quote-desc-text text-fuel-yellow">-28%</div>
                                  <div class="text-medium text-dusty-gray text-uppercase">Expenses</div>
                                </div>
                                <div class="cell-xs-6 offset-top-0">
                                  <div class="quote-desc-text text-primary">+21%</div>
                                  <div class="text-medium text-dusty-gray text-uppercase">Profit</div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="divider-fullwidth"></div>
                          <div class="quote-body"> <q>Over the last 6 years I have found their services to be reliable
                              and their advice to be practical and clear.</q> </div>
                        </blockquote>
                        <div class="offset-top-22"><a href="#" class="btn btn-primary">read more</a></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="cell-md-6 section-image-aside section-image-aside-right">
              <div style="background-image: url(images/home-4-946x689.jpg)"
                class="section-image-aside-img veil reveal-md-block"></div>
            </div>
          </div>
        </div>
      </section>-->
      <section class="section-50 section-sm-60 section-sm-bottom-100">
        <div class="shell text-center">
          <a href="http://localhost:55500/Jobs">
<h3>Latest <span class="text-thin">Jobs</span></h3>
          </a>
          <div class="range range-xs-center offset-top-40">
               <asp:Repeater runat="server" ID="JobRepeater">
                    <ItemTemplate>
            <div class="cell-xs-8 cell-sm-7 cell-md-4">
              <div class="post-boxed reveal-lg-inline-block">
                <div class="post-boxed-img-wrap"><a href="#"><img src="<%#Eval("image")%>" alt=""
                      width="322" height="219" /></a></div>
                <div class="post-boxed-caption">
                  <div class="post-boxed-title text-bold"><a href="http://localhost:55500/JobDetail/<%#Eval("id")%>"><%#Eval("title")%></a></div>
                  <div class="offset-top-5">
                    <ul class="list-inline list-inline-dashed text-uppercase">
                      <li><%#Eval("created_date")%></li>
                      <%--<li><span>by <a href="#" class="text-primary">Sam Kromstain</a></span></li>--%>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
                        </ItemTemplate>
                </asp:Repeater>
<%--            <div class="cell-xs-8 cell-sm-7 cell-md-4 offset-top-40 offset-md-top-0">
              <div class="post-boxed reveal-lg-inline-block">
                <div class="post-boxed-img-wrap"><a href="blog-post.html"><img src="front-assets/images/home-2-322x219.jpg" alt=""
                      width="322" height="219" /></a></div>
                <div class="post-boxed-caption">
                  <div class="post-boxed-title text-bold"><a href="blog-post.html">Top 3 Concerns When Choosing a Cloud
                      Vendor</a></div>
                  <div class="offset-top-5">
                    <ul class="list-inline list-inline-dashed text-uppercase">
                      <li>JUNE 20, 2016</li>
                      <li><span>by <a href="#" class="text-primary">Vanessa Ives</a></span></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="cell-xs-8 cell-sm-7 cell-md-4 offset-top-40 offset-md-top-0">
              <div class="post-boxed reveal-lg-inline-block">
                <div class="post-boxed-img-wrap"><a href="blog-post.html"><img src="front-assets/images/home-3-322x219.jpg" alt=""
                      width="322" height="219" /></a></div>
                <div class="post-boxed-caption">
                  <div class="post-boxed-title text-bold"><a href="blog-post.html">Audit Data Analytics: Why Auditors
                      Should Care</a></div>
                  <div class="offset-top-5">
                    <ul class="list-inline list-inline-dashed text-uppercase">
                      <li>JUNE 23, 2016</li>
                      <li><span>by <a href="#" class="text-primary">Amanda Smith</a></span></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>--%>
          </div>
        </div>
      </section>
       <div class="modal" id="popupmodal" role="dialog" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top:150px">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modaltitle"><asp:Label ID="ModalTitle" runat="server"></asp:Label></h5>
      </div>
      <div class="modal-body">
          <asp:HyperLink id="Offer_image" runat="server" >             
          </asp:HyperLink>
          
      </div>
      <div class="modal-footer">         
        <asp:Button class="btn btn-primary" id="hide_popUp" runat="server" Text="Close" OnClick="hide_popUp_Click"></asp:Button>        
      </div>
    </div>
  </div>
</div>
       
<script type="text/javascript" language="javascript">
    function ShowPopup() {
       $("#popupmodal").modal("show");
    }
    
</script>
</asp:Content>
