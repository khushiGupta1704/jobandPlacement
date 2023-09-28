<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="front-assets/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section style="background-image: url(front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>Gallery</h2>
          </div>
        </div>
      </section>
     <section class="section-50 section-sm-100">
        <div class="shell isotope-wrap">
          <div class="range">
            <div class="cell-xs-12">
                 <%--<div class="row">
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
                    </div>--%>
             <div class="row">
                         <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword4" style="margin: 10px;color: black; font-size: 15px;">Department</label>
                                <asp:DropDownList runat="server" ID="departments" DataValueField="id" DataTextField="title" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="departments_SelectedIndexChanged" style="border: 1px solid #0f08081f !important"></asp:DropDownList>
                            </div>
                        </div>   
                         <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword4" style="margin: 10px;color: black; font-size: 15px;">Industry</label>
                                <asp:DropDownList runat="server" ID="selectIndustry" DataValueField="id" DataTextField="name" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="industry_SelectedIndexChanged" style="border: 1px solid #0f08081f !important" Placeholder="Industry"></asp:DropDownList>                                
                            </div>
                        </div>
                    </div>

            </div>
            <div class="cell-xs-12 offset-top-40">
              <div class="row">
                <div data-isotope-layout="fitRows" data-isotope-group="gallery" data-photo-swipe-gallery="gallery"
                  class="isotope isotope-gutter-default">
                     <asp:Repeater runat="server" ID="Repeater1">
                    <ItemTemplate >
                  <div data-filter="Category <%#Eval("id")%>" class="col-xs-12 col-sm-6 col-md-4 isotope-item">
                    <div class="thumbnail thumbnail-variant-3"><a href="gallery-item.html"
                        class="link link-external"><span class="icon icon-sm fa fa-link"></span></a>
                      <figure><img src='../<%#Eval("image")%>' alt='<%#Eval("title")%>'  style="height:250px;width:auto"/></td> </figure>
                      <div class="caption"><a href="../<%#Eval("image")%>"
                          data-photo-swipe-item="" data-size="1170x780" class="link link-original"></a></div>
                    </div>
                  </div>
                     </ItemTemplate>                    
                </asp:Repeater>

                </div>
              </div>
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
      </section>

</asp:Content>
