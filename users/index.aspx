<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageInd.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="" >
        <div class="col-12 grid-margin stretch-card" >
            <div class="card remove-bg" style="border:none">                   
                    <div class="alert alert-success alert-dismissible fade show" role="alert" Visible="false" id="lable_data" runat="server">
                     <asp:Label ID="lable_msg" runat="server"></asp:Label>                       
                        <asp:Button ID="btnTest" runat="server" Text="X" onclick="btnTest_Click" />
                    </div>
                </div>
        </div>
    </div>
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Users</h4>
                     <div class="pull-right">
                    <asp:Button id="delete_button" runat="server" class="btn btn-primary mr-2" Text="Delete" OnClick="delete_button_Click"></asp:Button><a href="form.aspx" class="btn btn-primary mr-2">Add New</a>
                         </div>
                     
                <%--<p class="card-description">
            

                </p>--%>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                 <th></th>
                                <th>#</th>
                                <th>Profile</th>
                                <th>File</th>
                                <th>Name</th>
                                <th>Department</th>
                                <th>Role</th>
                                 <th>Email</th>
                                <th>Phone No</th>
                                <th>Alternate Phone No</th>
                                <th>Address</th>
                                <th>State</th>
                                <th>City</th>
                                <th>Pin Code</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="delete_checkbox" runat="server"></asp:CheckBox></td>
                                        <td><%#Eval("id")%>
                                            <asp:Label ID="lblUniqueID" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                                        </td>
                                         <td>
                                            <img src='../../<%#Eval("image")%>' alt='<%#Eval("name")%>' style="height: 70px; width: auto" /></td>
                                        <td><a href="../../<%#Eval("user_file")%>" target="_blank">View File</a></td>
                                         <td><%#Eval("name")%></td>
                                         <td><%#Eval("depart_title")%></td>
                                         <td><%#Eval("role")%></td>
                                         <td><%#Eval("email")%></td>
                                         <td><%#Eval("phone_no")%></td>
                                        <td><%#Eval("alt_phone_no")%></td>
                                        <td><%#Eval("address")%></td>
                                        <td><%#Eval("state")%></td>
                                        <td><%#Eval("city")%></td>
                                        <td><%#Eval("pin_code")%></td>
                                        <td><%#Eval("status").ToString()=="1"?"Active":"Inactive"%></td>
                                        <td><a href="form.aspx?id=<%#Eval("id")%>"><i class="mdi mdi-table-edit"></i></a> | <a href="#"  data-toggle="modal" data-target='#pop_up_modal1<%#Eval("id") %>' ><i class="mdi mdi-delete"></i></a>
                                            <div class="modal fade" id="pop_up_modal1<%#Eval("id") %>" role="dialog" tabindex="-1">
                                              <div class="modal-dialog">
                                                <div class="modal-content">
                                                  <div class="modal-header">
                                                    <h5 class="modal-title" id="modaltitle1">Delete User</h5>
                                                  </div>
                                                  <div class="modal-body">
                                                      Are you sure you want to delete this User?
                                                  </div>
                                                  <div class="modal-footer">
                                                      <asp:LinkButton ID="confirm_delete_2" runat="server" class="btn btn-primary" OnCommand="confirm_delete_2_Click" CommandArgument='<%#Eval("id")%>'>Confirm</asp:LinkButton>
                                                      <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="hidepopup(<%#Eval("id") %>)">Close</button>     
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
        <div class="modal fade" id="popupmodal" role="dialog" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modaltitle">Delete User</h5>
      </div>
      <div class="modal-body">
          Are you sure you want to delete this User?
      </div>
      <div class="modal-footer">
          <asp:Button id="confirm_delete" runat="server" class="btn btn-primary" Text="Delete" OnClick="confirm_delete_Click"></asp:Button>
        <asp:Button class="btn btn-secondary" id="hide_popUp" runat="server" Text="Close" OnClick="hide_popUp_Click"></asp:Button>        
      </div>
    </div>
  </div>
</div>
       
<script type="text/javascript" language="javascript">
    function ShowPopup() { 
        $("#popupmodal").modal("show");
    }
    function hidepopup(id) {
        $("#pop_up_modal1"+id).modal("hide");
    }
    
</script>
</asp:Content>
