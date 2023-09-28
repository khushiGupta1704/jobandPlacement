<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="interview_questions.aspx.cs" Inherits="interview_questions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="front-assets/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section style="background-image: url(front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>Interview Questions</h2>
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
                     <div class="row">
                         <div class="col-md-12">
                            <div class="form-group">
                                <label for="exampleInputPassword4" style="margin: 10px;color: black; font-size: 15px;">Department</label>
                                <asp:DropDownList runat="server" ID="departments" DataValueField="id" DataTextField="title" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="departments_SelectedIndexChanged" style="border: 1px solid #0f08081f !important"></asp:DropDownList>
                                 
                            </div>
                        </div>
                    </div>
                    <asp:Repeater runat="server" ID="DeaprtmentRepeater" OnItemDataBound="DeaprtmentRepeater_ItemDataBound">
                        <ItemTemplate>
                            <article class="post-modern">
                                <div class="post-header">
                                    <asp:Label ID="depart_id" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                                    <h6 class="text-bold"><a href="http://localhost:55500/Questions/<%#Eval("id")%>"><%#Eval("title")%>
                                        <div class="pull-right">
                                            Total Question:
                                            <asp:Label ID="count_lable" runat="server" Visible="false" Text=""></asp:Label>
                                        </div>
                                        </a>

                                    </h6>
                                    
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
                                    <h6 class="text-small-16 text-bold text-uppercase">Department Questions</h6>
                                    <ul class="list-marked-bordered offset-top-5">
                                        <asp:Repeater runat="server" ID="Repeater1">
                                            <ItemTemplate>
                                               <%-- <li>
                                                 <asp:LinkButton ID="HyperLink1" runat="server" OnCommand="HyperLink1_Command" CommandArgument='<%#Eval("depart_id")%>'><span><%#Eval("exp1")%></span><span class="text-dusty-gray">(<%#Eval("question_count")%>)</span></asp:LinkButton>                                                    
                                                    </li>--%>
                                                <li><a href="http://localhost:55500/Questions/<%#Eval("depart_id")%>"><span><%#Eval("exp1")%></span><span class="text-dusty-gray">(<%#Eval("question_count")%>)</span></a></li>                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                                
                            </div>
                            <div class="cell-sm-6 cell-md-12 offset-top-50 offset-sm-top-0">
                                <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Tags</h6>
                                    <ul class="list-tag-blocks offset-top-22">
                                         <asp:Repeater runat="server" ID="Repeater3">
                                            <ItemTemplate>
                                        <li><a href="<%#Eval("url")%>"><%#Eval("title")%></a></li>                                        
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
