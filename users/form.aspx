<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageInd.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../ckeditor/ckeditor.js"></script>
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

    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <asp:Label ID="title_msg" runat="server" class="card-title"><h4>Add User</h4></asp:Label>
                <%--<p class="card-description">
                    Basic form elements
                  </p>--%>
                <div class="forms-sample">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword4">Name</label>
                                <asp:TextBox runat="server" class="form-control" ID="inputName" placeholder="Name"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputName" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Profile</label>
                                <div class="input-group col-xs-12">
                                    <asp:FileUpload ID="userImage" runat="server" type="text" class="form-control file-upload-info" placeholder="Upload Image"></asp:FileUpload>
                                    <span class="input-group-append">
                                        <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword4">Department</label>
                                <asp:DropDownList runat="server" ID="departments" DataValueField="id" DataTextField="title" class="form-control"></asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="departments" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>                       
                          
                             <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputName1">Email</label>
                                <asp:TextBox runat="server" class="form-control" ID="inputEmail" placeholder="Email"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="inputEmail" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="inputEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                     <div class="row">
                         <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputName1">Phone NO</label>
                                <asp:TextBox runat="server" class="form-control" ID="inputPhone" placeholder="Phone No" type="number"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="inputPhone" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputPhone" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 

                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputName1">Alternate Phone NO</label>
                                <asp:TextBox runat="server" class="form-control" ID="altPhoneNo" placeholder="Phone No" type="number"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="altPhoneNo" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                            </div>
                        </div>
                    </div>
                                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>File</label>
                                <div class="input-group col-xs-12">
                                    <asp:FileUpload ID="FileUpload1" runat="server" type="text" class="form-control file-upload-info" placeholder="Upload Image"></asp:FileUpload>
                                    <span class="input-group-append">
                                        <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                      <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleSelectGender">Status</label>
                                <asp:DropDownList class="form-control" runat="server" ID="selectStatus">
                                    <asp:ListItem Value="1">Active</asp:ListItem>
                                    <asp:ListItem Value="0">Inactive</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                   <div class="row">
                     <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword4">Address</label>
                                <asp:TextBox runat="server" class="form-control" ID="address" placeholder="Address"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="address" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword4">State</label>
                                <asp:DropDownList class="form-control" runat="server" ID="selectState">
                                    <asp:ListItem Value="haryana">Haryana</asp:ListItem>
                                    <asp:ListItem Value="punjab">Punjab</asp:ListItem>
                                    <asp:ListItem Value="delhi">Delhi</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                   <div class="row">                       
                     <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword4">City</label>
                                <asp:TextBox runat="server" class="form-control" ID="textCity" placeholder="City"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textCity" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword4">Pin Code</label>
                                <asp:TextBox runat="server" class="form-control" ID="textPinCode" placeholder="Pin Code" type="number"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="textPinCode" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>  
                    </div>
                    
                    <asp:Button ID="submit_slider" runat="server" class="btn btn-primary mr-2" Text="Submit" OnClick="submit_slider_Click" />
                    <asp:Button class="btn btn-light" ID="cancel_submit" runat="server" Text="Cancel"></asp:Button>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
