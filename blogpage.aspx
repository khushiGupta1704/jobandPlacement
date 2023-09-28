<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="blogpage.aspx.cs" Inherits="blogpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="front-assets/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section style="background-image: url(front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
            <div class="page-title">
                <h2>Blog</h2>
            </div>
        </div>
    </section>
    <section class="section-60 section-sm-75 section-lg-100">
        <%--<form action="" method="GET"--%>

        <%--</form>--%>
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

                    <asp:Repeater runat="server" ID="BlogRepeater">
                        <ItemTemplate>
                            <article class="post-modern">
                                <div class="post-header">
                                    <h6 class="text-bold"><a href="http://localhost:55500/BlogDetail/<%#Eval("id")%>"><%#Eval("title")%></a></h6>
                                </div>
                                <div class="post-body">
                                    <div class="post-inset">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    <img src='<%#Eval("image")%>' alt='<%#Eval("title")%>' />
                                                </div>
                                                <div class="col-md-9">
                                                    <%#Eval("meta_description")%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="post-footer">
                                    <div class="post-meta">
                                        <ul class="post-list">
                                            <li class="object-inline"><span
                                                class="icon icon-xxs icon-gray-base material-icons-query_builder"></span>
                                                <time datetime="2016-01-01">4 days ago</time>
                                            </li>
                                            <li class="object-inline"><span
                                                class="icon icon-xxs icon-gray-base material-icons-loyalty"></span>
                                                <ul class="list-tags-inline">
                                                    <li><a href="#">Facility</a></li>
                                                    <li><a href="#">Opportunity</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="post-type">
                                        <span class="icon icon-xxs icon-gray-base material-icons-audiotrack"></span>
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
                                    <h6 class="text-small-16 text-bold text-uppercase">Department Blogs</h6>
                                    <ul class="list-marked-bordered offset-top-5">
                                        <asp:Repeater runat="server" ID="Repeater1">
                                            <ItemTemplate>
                                                <li>
                                                 <asp:LinkButton ID="HyperLink1" runat="server" OnCommand="HyperLink1_Command" CommandArgument='<%#Eval("depart_id")%>'><span><%#Eval("exp1")%></span><span class="text-dusty-gray">(<%#Eval("blog_count")%>)</span></asp:LinkButton>                                                    
                                                    </li>
                                                <%--<li><a href="http://localhost:55500/Blogs"><span><%#Eval("exp1")%></span><span class="text-dusty-gray">(<%#Eval("blog_count")%>)</span></a></li>--%>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                                <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Popular posts</h6>
                                    <div class="offset-top-22">
                                        <asp:Repeater runat="server" ID="Repeater2">
                                            <ItemTemplate>
                                                <article class="post post-preview offset-top-15">
                                                    <a href="http://localhost:55500/BlogDetail/<%#Eval("id")%>">
                                                        <div class="unit unit-horizontal unit-spacing-sm">
                                                            <div class="unit-left">
                                                                <%--<figure class="post-image">
                                                                    <img src="images/post-preview-1-70x70.jpg" alt="" width="70"
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
                                <h6 class="text-small-16 text-bold text-uppercase">Twitter feed</h6>
                               
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
