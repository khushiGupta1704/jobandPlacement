<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="front-assets/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section style="background-image: url(front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>FAQs</h2>
          </div>
        </div>
      </section>


                   <section class="section-60 section-sm-90 section-lg-bottom-120 bg-athens-lighten">
        <div class="shell">
          <div class="range range-sm-center">
            <div class="cell-sm-10 cell-md-12">
              <div class="range">
                <div class="cell-md-12">
                  <h3>General <span class="text-thin">Questions</span></h3>
                  <div class="offset-top-22">
                    <p class="text-big">All you need to know about Starbis design studio and how to get Support.</p>
                  </div>
                  <div class="offset-top-40">
                    <div id="accordionOne" role="tablist" aria-multiselectable="true"
                      class="panel-group panel-group-custom panel-group-corporate">
                                         <asp:Repeater runat="server" ID="BlogRepeater">
                    <ItemTemplate >
                      <div class="panel panel-custom panel-corporate">
                        <div id="accordionOneHeading1" role="tab" class="panel-heading">
                          <div class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordionOne"
                              href="#<%#Eval("id")%>" aria-controls="accordionOneCollapse1" class="collapsed"
                              ><%#Eval("question")%>
                              <div class="panel-arrow"></div>
                            </a> </div>
                        </div>
                        <div id="<%#Eval("id")%>" role="tabpanel" aria-labelledby="accordionOneHeading1"
                          class="panel-collapse collapse in">
                          <div class="panel-body">
                            <p><%#Eval("answer")%></p>
                          </div>
                        </div>
                      </div>

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
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
      </section>

</asp:Content>
