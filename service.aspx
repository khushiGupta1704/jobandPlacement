<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="front-assets/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section style="background-image: url(front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>Services</h2>
          </div>
        </div>
      </section>
      <section class="section-60 section-sm-75 section-lg-100">
        <div class="shell">
          <div class="range">
            <div class="cell-md-8 cell-lg-9">
                                    <div class="row">
                        <div class="col-md-9">
                            <div class="rd-search rd-search-classic">
                                <div class="form-group">
                                    <asp:TextBox ID="search_text" runat="server" autocomplete="off" class="form-control" placeholder="Search..."></asp:TextBox>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="search_submit" runat="server" OnClick="search_submit_Click" class="btn btn-primary mr-2" Text="Search"></asp:Button>
                        </div>
                    </div>
                <asp:Repeater runat="server" ID="ServicRepeater">
                    <ItemTemplate >
                        <article class="post-modern">
                <div class="post-header">
                  <h6 class="text-bold padding-text-15"><a href="#"><%#Eval("title")%></a></h6>
                </div>
                <div class="post-body">
                  <div class="post-inset">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="col-md-3">
                          <img src='<%#Eval("image")%>' alt='<%#Eval("title")%>' />
                        </div>
                        <div class="col-md-9">
                          <%#Eval("description")%>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
                    </ItemTemplate>                    
                </asp:Repeater>            
                                    <div class="row" style="text-align: center;margin-top: 20px;">
                       
                            <asp:Button ID="lbtnFirst" runat="server"
                                class="btn btn-primary" Text="First" OnClick="lbtnFirst_Click"
                               style="min-width: 0px;padding: 0px 12px"></asp:Button>
                            <asp:Button ID="lbtnPrev" runat="server"
                                class="btn btn-primary" Text="Prev"
                                OnClick="lbtnPrev_Click" style="margin-top: 0px;min-width: 0px;padding: 0px 12px"></asp:Button>
                            <asp:Button ID="lbtnNext" runat="server"
                                class="btn btn-primary" Text="Next"
                                OnClick="lbtnNext_Click" style="margin-top: 0px;min-width: 0px;padding: 0px 12px"></asp:Button>
                            <asp:Button ID="lbtnLast" runat="server"
                                class="btn btn-primary" Text="Last"
                                OnClick="lbtnLast_Click" style="margin-top: 0px;min-width: 0px;padding: 0px 12px"></asp:Button>
                    </div>
                    <div class="row" style="text-align: center;margin-top: 20px;">
                        
                    <asp:Label ID="lblStatus" runat="server" style="text-align:center"></asp:Label>
                        </div>
            </div>
              <div class="cell-md-4 cell-lg-3 offset-top-50 offset-md-top-0">
                    <div class="inset-md-left-15">
                        <div class="range">
                            <div class="cell-sm-6 cell-md-12">
                                <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Job Requirement</h6>
                                    <ul class="list-marked-bordered offset-top-5">
                                        <asp:Repeater runat="server" ID="Repeater1">
                                            <ItemTemplate>
                                                <li><a href="http://localhost:55500/Jobs"><span><%#Eval("exp1")%></span><span class="text-dusty-gray">(<%#Eval("job_count")%>)</span></a></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
          </div>
        </div>
      </section>
</asp:Content>
