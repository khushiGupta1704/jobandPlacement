<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageInd.master" AutoEventWireup="true" CodeFile="appliedJobList.aspx.cs" Inherits="appliedJobList" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <script src="ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   <%--<div class="" >
        <div class="col-12 grid-margin stretch-card" >
            <div class="card remove-bg" style="border:none">                   
                    <div class="alert alert-success alert-dismissible fade show" role="alert" Visible="false" id="lable_data" runat="server">
                     <asp:Label ID="lable_msg" runat="server"></asp:Label>                       
                        <asp:Button ID="btnTest" runat="server" Text="X" onclick="btnTest_Click" />
                    </div>
                </div>
        </div>
    </div>--%>
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Applied Jobs</h4>
                     
                         <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:DropDownList runat="server" ID="jobs" DataValueField="id" DataTextField="title" AutoPostBack="true" OnSelectedIndexChanged="job_SelectedIndexChanged"></asp:DropDownList>
                                        </div>
                                    </div>
                    <%--<asp:Button id="delete_button" runat="server" class="btn btn-primary mr-2" Text="Delete" OnClick="delete_button_Click"></asp:Button><a href="form.aspx" class="btn btn-primary mr-2">Add New</a>--%>
                         
                     
                <%--<p class="card-description">
            

                </p>--%>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                
                                
                                <th>Job Title</th>
                                <th>Name</th>
                                <th>Profile</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        
                                         <td><%#Eval("job_title")%></td>
                                         <td><%#Eval("user_name")%></td>
                                         <td><a href="../<%#Eval("user_file")%>" target="_blank"> View Resume</a></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
   <%--     <div class="modal fade" id="popupmodal" role="dialog" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modaltitle">Delete Job</h5>
      </div>
      <div class="modal-body">
          Are you sure you want to delete this Job?
      </div>
      <div class="modal-footer">
          <asp:Button id="confirm_delete" runat="server" class="btn btn-primary" Text="Delete" OnClick="confirm_delete_Click"></asp:Button>
        <asp:Button class="btn btn-secondary" id="hide_popUp" runat="server" Text="Close" OnClick="hide_popUp_Click"></asp:Button>        
      </div>
    </div>
  </div>
</div>--%>
       
<%--<script type="text/javascript" language="javascript">
    function ShowPopup() { 
        $("#popupmodal").modal("show");
    }
    function hidepopup(id) {
        $("#pop_up_modal1"+id).modal("hide");
    }
    
</script>--%>
</asp:Content>
