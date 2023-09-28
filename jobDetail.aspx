<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="jobDetail.aspx.cs" Inherits="jobDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="http://localhost:55500/front-assets/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section style="background-image: url(http://localhost:55500/front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>Job Detail</h2>
          </div>
        </div>
      </section>
 <section class="section-60 section-sm-75 section-lg-100">
      <div class="shell">
        <div class="range">
          <div class="cell-md-8 cell-lg-9">
            <article class="post post-single">
              <div class="post-image">
                 <figure> <asp:Image ID="image" runat="server" width="870" height="412" /></figure>
              </div>
              <div class="post-header">
               <h1> <asp:Label ID="lable_title" runat="server"  style="font-size:30px"></asp:Label></h1>
              </div>
              <div class="post-meta">
                <ul class="list-bordered-horizontal">
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Date</dt>
                      <dd>
                        <time datetime="2016-01-22"><asp:Label ID="time" runat="server" ></asp:Label></time>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Industry</dt>
                      <dd><asp:Label ID="industry" runat="server"></asp:Label></dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Department</dt>
                      <dd><asp:Label ID="department" runat="server" ></asp:Label></dd>
                    </dl>
                  </li>
                </ul>
              </div>
                <div class="post-meta">
                <ul class="list-bordered-horizontal">
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Experience</dt>
                      <dd>
                        <time datetime="2016-01-22"><asp:Label ID="experience" runat="server" ></asp:Label></time>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Work Mode</dt>
                      <dd><asp:Label ID="workMode" runat="server"></asp:Label></dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Qualification</dt>
                      <dd><asp:Label ID="Qualification" runat="server" ></asp:Label></dd>
                    </dl>
                  </li>
                </ul>
              </div>
                <div class="post-meta">
                <ul class="list-bordered-horizontal">
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Salary</dt>
                      <dd>
                        <time datetime="2016-01-22"><asp:Label ID="salary" runat="server" ></asp:Label></time>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Requirement</dt>
                      <dd><asp:Label ID="requirement" runat="server"></asp:Label></dd>
                    </dl>
                  </li>
              
                </ul>
              </div>
                <h6>Skills</h6>
              <div class="divider-fullwidth bg-gray-light offset-top-15"></div>
                <asp:Label ID="skills" runat="server"></asp:Label>
                <h6>Description</h6>
                <div class="divider-fullwidth bg-gray-light offset-top-15"></div>
              <div class="post-body">
                  <asp:Label ID="label_description" runat="server"></asp:Label>
              </div>
            </article>
            <div class="divider-fullwidth bg-gray-lighter offset-top-40"></div>
             <div class="offset-top-40">
              <%--<h4>3 Comments</h4>--%>
              <div class="comment-list inset-sm-right-60 inset-md-right-30 inset-lg-right-100 offset-top-30">
                   <asp:Repeater runat="server" ID="Repeater3" OnItemDataBound="Repeater3_ItemDataBound1">
                      <ItemTemplate>
                <div class="comment-group">
                  <article class="comment">
                    <div class="unit unit-spacing-md unit-xs-horizontal">
                      <div class="unit-left">
                        <figure><img src="../<%#Eval("user_image")%>" alt="" width="70" height="71"/> </figure>
                      </div>
                      <div class="unit-body">
                        <div class="comment-body">
                          <div class="comment-body-header">
                            <div class="comment-meta">
                              <p class="user"><%#Eval("user_name")%></p>
                              <ul class="list-inline list-icon-meta">
                                <%--<li><a href="#" class="link-group link-group-baseline"><span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-thumb-up-outline"></span><span>Like</span></a></li>
                                <li><a href="#" class="link-group"><span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-comment-outline"></span><span>Reply</span></a></li>--%>
                              </ul>
                            </div>
                            <div class="comment-time">
                              <div class="object-inline">
                                <time datetime="2016-02-16"><%#Eval("created_date")%></time>
                                <span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-clock"></span> </div>
                            </div>
                          </div>
                          <div class="comment-body-text">
                            <p class="text-gray-base"><%#Eval("comment_text")%></p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </article>
                  <div class="comment-group-reply">
                      <asp:Repeater runat="server" ID="Repeater4">
                      <ItemTemplate>                          
                    <article class="comment">
                      <div class="unit unit-spacing-md unit-xs-horizontal">
                        <div class="unit-left">
                          <figure><img src="../<%#Eval("profile")%>" alt="" width="70" height="71"/> </figure>
                        </div>
                        <div class="unit-body">
                          <div class="comment-body">
                            <div class="comment-body-header">
                              <div class="comment-meta">
                                <p class="user"><%#Eval("name")%></p>
                               <%-- <ul class="list-inline list-icon-meta">
                                  <li><a href="#" class="link-group link-group-baseline"><span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-thumb-up-outline"></span><span>Like</span></a></li>
                                  <li><a href="#" class="link-group"><span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-comment-outline"></span><span>Reply</span></a></li>
                                </ul>--%>
                              </div>
                              <div class="comment-time">
                                <div class="object-inline">
                                  <time datetime="2016-02-16"><%#Eval("created_date")%></time>
                                  <span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-clock"></span> </div>
                              </div>
                            </div>
                            <div class="comment-body-text">
                              <p class="text-gray-base"><%#Eval("reply_text")%></p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </article>
                          </ItemTemplate>
                                        </asp:Repeater> 
                      
                  </div>
                    <asp:Label ID="comment_id" runat="server" Visible="false" Text='<%#Eval("comment_id")%>'></asp:Label>
                    <div id="replySection" runat="server">
                      <asp:TextBox ID="reply_text" runat="server" class="form-control" style="border: 1px solid #e8e7e7;border-radius: 10px;margin-top:15px"></asp:TextBox>                    
                        <asp:Button ID="reply_message" runat="server" style="min-width: 79px;margin-top: 15px;" class="btn btn-primary" Text="Reply" oncommand="reply_message_Click" CommandArgument='<%#Eval("comment_id")%>' />
                        <%--<asp:Button ID="reply_message" runat="server" type="submit" style="min-width: 79px;margin-top: 15px;" class="btn btn-primary" onclick="Comment_message_Click" Text="Reply"></asp:Button>--%>
                    </div>
                    <%--<div id="replyText" runat="server" visible="true"> <a href="http://localhost:55500/Login" style="color:red">Login Here To Reply</a></div>--%>
                     
                </div>
                 </ItemTemplate>
                                        </asp:Repeater>                               

              </div>
           
            <div class="offset-top-45">
              <h4>Leave a comment</h4>             
                <%--<asp:LinkButton ID="rating" runat="server"><i class="fa fa-star></i></asp:LinkButton>--%>
              <div class="inset-sm-right-60 inset-md-right-30 inset-lg-right-100 offset-top-15 offset-lg-top-5">
                <div class="rd-mailform form-classic form-classic-bordered label-outside">
                    <div id="CommentSection" runat="server">
                  <div class="form-group">
                      <asp:Label ID="lable_id" runat="server" Visible="false"></asp:Label>
                    <asp:TextBox runat="server" id="message" name="message" class="form-control-textarea"  TextMode="MultiLine" Rows="10" Columns="100" placeholder="Message"></asp:TextBox>
                       
                  </div>
                  <div class="offset-top-35">
                    <asp:Button ID="Comment_message" runat="server" type="submit" style="min-width: 200px;" class="btn btn-primary" onclick="Comment_message_Click" Text="Submit"></asp:Button>
                  </div>
                        </div>
                   <%-- <div id="LoginComment" runat="server" visible="False">
                        <a href="http://localhost:55500/Login" style="color:red">Login Here To comment</a>
                    </div>--%>
                </div>
              </div>
            </div>
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
                                <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Popular Jobs</h6>
                                    <div class="offset-top-22">
                                        <asp:Repeater runat="server" ID="Repeater2">
                                            <ItemTemplate>
                                        <article class="post post-preview offset-top-15">
                                            <a href="blog-post.html">
                                                <div class="unit unit-horizontal unit-spacing-sm">
                                                    <div class="unit-left">
                                                        <%--<figure class="post-image">
                                                            <img src="../<%#Eval("image")%>" alt="" width="70"
                                                                height="70" />
                                                        </figure>--%>
                                                    </div>
                                                    <div class="unit-body">
                                                        <div class="post-header">
                                                            <p><%#Eval("title")%></p>
                                                        </div>
                                                        <div class="post-meta">
                                                            <ul class="list-meta">
                                                                <li>
                                                                    <time datetime="2016-12-23"><%#Eval("created_date","{0:MMM-dd-yyyy}")%></time>
                                                                </li>
                                                                <%--<li>4 Comment</li>--%>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </article>
                                                </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                            <div class="cell-sm-6 cell-md-12 offset-top-50 offset-sm-top-0 offset-md-top-45">
                                 <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Tags</h6>
                                    <ul class="list-tag-blocks offset-top-22">
                                        <asp:Repeater runat="server" ID="tagRepeater">
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
