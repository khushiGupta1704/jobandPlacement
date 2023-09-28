<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="userJobs.aspx.cs" Inherits="userJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="front-assets/css/style.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
          <section style="background-image: url(front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>Applied Jobs</h2>
          </div>
        </div>
      </section>
    <section style="background-image: url(front-assets/images/bg-full.jpg);" class="one-screen-page bg-gray-darker bg-image">
        <div class="shell">
            <div class="alert alert-success alert-dismissible fade show" role="alert" visible="false" id="lable_data" runat="server">
                <asp:Label ID="lable_msg" runat="server" style="color:white"></asp:Label>
                <asp:Button ID="btnTest" runat="server" Text="X" OnClick="btnTest_Click" />
            </div>
            <div class="range range-sm-center">
                <div class="cell-sm-12 cell-md-12 cell-lg-12" style="margin: 50px">
                    <div class="block-shadow text-center" style="padding-top: 7px">
                        <div class="block-inner">
                            <%--<p class="text-uppercase text-abbey text-bold">Profile</p>--%>
                            <!-- <div class="offset-top-35"><span class="icon icon-xl icon-gray-base material-icons-face"></span></div> -->
                        </div>
                        <div class="rd-mailform form-modern form-darker offset-top-22">

                            <div class="block-inner">                              
                                    <div class="" >
        <div class="col-12 grid-margin stretch-card" >
            <div class="card remove-bg" style="border:none">                   
                    <div class="alert alert-success alert-dismissible fade show" role="alert" Visible="false" id="Div1" runat="server">
                     <asp:Label ID="Label1" runat="server"></asp:Label>                       
                        <asp:Button ID="Button1" runat="server" Text="X" onclick="btnTest_Click" />
                    </div>
                </div>
        </div>
    </div>
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title" style="color:Black">Applied Jobs</h4>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                 
                                <th  style="text-align: center !important;padding: 14px 25px 16px">#</th>
                                <th  style="text-align: center !important;padding: 14px 25px 16px">Job Title</th>
                                <th  style="text-align: center !important;padding: 14px 25px 16px">Department Title</th>
                                <th  style="text-align: center !important;padding: 14px 25px 16px">Industry Title</th>
                                <th  style="text-align: center !important;padding: 14px 25px 16px">View Detail</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        
                                        <td><%#Eval("id")%>
                                            <asp:Label ID="lblUniqueID" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                                        </td>
                                        
                                         <td><%#Eval("job_title")%></td>
                                        <td><%#Eval("depart_title")%></td>
                                        <td><%#Eval("industry_title")%></td>
                                        <td><a href="jobDetail.aspx?id=<%#Eval("job_id")%>" style="color: #3e9cf6" target="_blank"> View Detail</a></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
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
                    </div>
                </div>
            </div>
        </div>
    </section>
    
</asp:Content>
