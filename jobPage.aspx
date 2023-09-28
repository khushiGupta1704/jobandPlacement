<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="jobPage.aspx.cs" Inherits="jobPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://localhost:55500/front-assets/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section style="background-image: url(http://localhost:55500/front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
            <div class="page-title">
                <h2>Jobs</h2>
            </div>
        </div>
    </section>
    <section class="section-60 section-sm-75 section-lg-100">
        <div class="shell" style="max-width: 1400px !important">
            <div class="range">
                <div class="col-md-2 col-lg-2">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="exampleInputPassword4" style="margin: 10px; color: black; font-size: 15px;">Department</label>
                                <asp:DropDownList runat="server" ID="departments" DataValueField="id" DataTextField="title" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="departments_SelectedIndexChanged" Style="border: 1px solid #0f08081f !important"></asp:DropDownList>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="exampleInputPassword4" style="margin: 10px; color: black; font-size: 15px;">Industry</label>
                                <asp:DropDownList runat="server" ID="selectIndustry" DataValueField="id" DataTextField="name" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="industry_SelectedIndexChanged" Style="border: 1px solid #0f08081f !important" Placeholder="Industry"></asp:DropDownList>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label style="margin: 10px; color: black; font-size: 15px;">Experience</label>
                                <asp:DropDownList class="form-control" runat="server" ID="selectExperience" Style="border: 1px solid #0f08081f !important" AutoPostBack="true" OnSelectedIndexChanged="experience_SelectedIndexChanged">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="3 Month">3 Month</asp:ListItem>
                                    <asp:ListItem Value="6 Month">6 Month</asp:ListItem>
                                    <asp:ListItem Value="1 Year">1 Year</asp:ListItem>
                                    <asp:ListItem Value="2 Year">2 Year</asp:ListItem>
                                    <asp:ListItem Value="3 Year">3 Year</asp:ListItem>
                                    <asp:ListItem Value="4 Year">4 Year</asp:ListItem>
                                    <asp:ListItem Value="5 Year">5 Year</asp:ListItem>
                                    <asp:ListItem Value="More than 5 Year">More than 5 Year</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label style="margin: 10px; color: black; font-size: 15px;">Work Mode</label>
                                <asp:DropDownList class="form-control" runat="server" ID="selectWorkMode" Style="border: 1px solid #0f08081f !important" AutoPostBack="true" OnSelectedIndexChanged="experience_SelectedIndexChanged">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Work from Home">Work from Home</asp:ListItem>
                                    <asp:ListItem Value="Part time job">Part time job</asp:ListItem>
                                    <asp:ListItem Value="Full time job">Full time job</asp:ListItem>
                                    <asp:ListItem Value="Permanent Remote">Permanent Remote</asp:ListItem>
                                    <asp:ListItem Value="Hybrid">Hybrid</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                                <label for="exampleInputPassword4" style="margin: 10px; color: black; font-size: 15px;">Qualification</label>
                                <asp:TextBox runat="server" class="form-control" ID="textqualification" placeholder="Qualification" Style="border: 1px solid #0f08081f !important"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-2" style="padding-top: 50px">
                            <div class="form-group">
                                <asp:LinkButton ID="Button1" runat="server" OnClick="experience_SelectedIndexChanged" Style="min-width: 0px; padding: 15px 0px; font-size: 20px;"> <i class="fa fa-search"></i></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                                <label for="exampleInputPassword4" style="margin: 10px; color: black; font-size: 15px;">Salary</label>
                                <asp:TextBox runat="server" class="form-control" ID="textsalary" placeholder="Salary" Style="border: 1px solid #0f08081f !important">
                                                                 
                                </asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-2" style="padding-top: 50px">
                            <div class="form-group">
                                <asp:LinkButton ID="Button2" runat="server" OnClick="experience_SelectedIndexChanged" Text='' Style="min-width: 0px; padding: 15px 0px; font-size: 20px;"> <i class="fa fa-search"></i> </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-lg-8">
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
                    <asp:Repeater runat="server" ID="JobRepeater">
                        <ItemTemplate>
                            <article class="post-modern">
                                <div class="post-header">
                                    <h6 class="text-bold padding-text-15"><a href="http://localhost:55500/JobDetail/<%#Eval("id")%>"><%#Eval("title")%></a></h6>
                                </div>
                                <div class="post-body">
                                    <div class="post-inset">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    <img src='<%#Eval("image")%>' alt='<%#Eval("title")%>' />
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="post-meta">
                                                        <ul class="list-bordered-horizontal">
                                                            <li>
                                                                <dl class="list-terms-inline">
                                                                    <dt>Date</dt>
                                                                    <dd>
                                                                        <time datetime="2016-01-22"><%#Eval("created_date")%></time>
                                                                    </dd>
                                                                </dl>
                                                            </li>

                                                            <li>
                                                                <dl class="list-terms-inline">
                                                                    <dt>Department</dt>
                                                                    <dd><%#Eval("depart_title")%></dd>
                                                                </dl>
                                                            </li>
                                                            <li>
                                                                <dl class="list-terms-inline">
                                                                    <dt>Industry</dt>
                                                                    <dd><%#Eval("inustry_title")%></dd>
                                                                </dl>
                                                            </li>


                                                            <li>
                                                                <dl class="list-terms-inline">
                                                                    <dt>Experience</dt>
                                                                    <dd>
                                                                        <time datetime="2016-01-22"><%#Eval("experience")%></time>
                                                                    </dd>
                                                                </dl>
                                                            </li>
                                                            <li>
                                                                <dl class="list-terms-inline">
                                                                    <dt>Work Mode</dt>
                                                                    <dd><%#Eval("work_mode")%></dd>
                                                                </dl>
                                                            </li>
                                                            <li>
                                                                <dl class="list-terms-inline">
                                                                    <dt>Qualification</dt>
                                                                    <dd><%#Eval("qualification")%></dd>
                                                                </dl>
                                                            </li>

                                                            <li>
                                                                <dl class="list-terms-inline">
                                                                    <dt>Salary</dt>
                                                                    <dd>
                                                                        <%#Eval("salary")%>
                                                                    </dd>
                                                                </dl>
                                                            </li>
                                                            <li>
                                                                <dl class="list-terms-inline">
                                                                    <dt>Requirement</dt>
                                                                    <dd><%#Eval("no_of_employee")%></dd>
                                                                </dl>
                                                            </li>
                                                            <asp:Label ID="job_id" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post-footer">
                                        <div class="post-meta">
                                            <asp:Button ID="apply_button" runat="server" class="btn btn-primary mr-2" Text="Apply" Style="min-width: 57px; padding: 4px 44px" OnCommand="apply_button_Click" CommandArgument='<%#Eval("id")%>' />
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
                <div class="col-md-2 col-lg-2 offset-top-50 offset-md-top-0">
                    <div class="inset-md-left-15">
                        <div class="range">
                            <div class="cell-sm-6 cell-md-12">
                                <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Job Requirement</h6>
                                    <ul class="list-marked-bordered offset-top-5">
                                        <asp:Repeater runat="server" ID="Repeater1">
                                            <ItemTemplate>
                                                <li>
                                                   
                                                    <asp:LinkButton ID="HyperLink1" runat="server" OnCommand="HyperLink1_Command" CommandArgument='<%#Eval("depart_id")%>'><span><%#Eval("exp1")%></span><span class="text-dusty-gray">(<%#Eval("job_count")%>)</span></asp:LinkButton>        
                                                    </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                                <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Popular Jobs</h6>
                                    <div class="offset-top-22">
                                        <asp:Repeater runat="server" ID="Repeater3">
                                            <ItemTemplate>
                                        <article class="post post-preview offset-top-15">
                                            <a href="http://localhost:55500/JobDetail/<%#Eval("id")%>">
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
                                <%--<h6 class="text-small-16 text-bold text-uppercase">Twitter feed</h6>
                                <div data-twitter-username="templatemonster" class="twitter offset-top-30">
                                    <div data-twitter-type="tweet" class="twitter-item twitter-item-minimal">
                                        <div class="object-inline-baseline">
                                            <a href="#" data-url="href"
                                                class="icon icon-xxs icon-primary fa-twitter"></a>
                                            <time data-date="text,datetime" datetime="2016-04-20"></time>
                                        </div>
                                        <p data-tweet="text" class="tweet-text"></p>
                                        <p data-screen_name="text" data-user_name="href" class="tweet-user"></p>
                                    </div>
                                    <div data-twitter-type="tweet" class="twitter-item twitter-item-minimal">
                                        <div class="object-inline-baseline">
                                            <a href="#" data-url="href"
                                                class="icon icon-xxs icon-primary fa-twitter"></a>
                                            <time data-date="text,datetime" datetime="2016-04-20"></time>
                                        </div>
                                        <p data-tweet="text" class="tweet-text"></p>
                                        <p data-screen_name="text" data-user_name="href" class="tweet-user"></p>
                                    </div>
                                    <div data-twitter-type="tweet" class="twitter-item twitter-item-minimal">
                                        <div class="object-inline-baseline">
                                            <a href="#" data-url="href"
                                                class="icon icon-xxs icon-primary fa-twitter"></a>
                                            <time data-date="text,datetime" datetime="2016-04-20"></time>
                                        </div>
                                        <p data-tweet="text" class="tweet-text"></p>
                                        <p data-screen_name="text" data-user_name="href" class="tweet-user"></p>
                                    </div>
                                </div>--%>
                                <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Tags</h6>
                                    <ul class="list-tag-blocks offset-top-22">
                                         <asp:Repeater runat="server" ID="Repeater2">
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
