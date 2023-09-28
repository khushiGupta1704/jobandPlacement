<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageInd.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <script src="../ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="">
        <div class="col-12 grid-margin stretch-card">
            <div class="card remove-bg"  style="border:none">
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
                <asp:Label ID="title_msg" runat="server" class="card-title"><h4>Add Blog</h4></asp:Label>
                <%--<p class="card-description">
                    Basic form elements
                  </p>--%>
                <div class="forms-sample">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword4">Title</label>
                                <asp:TextBox runat="server" class="form-control" ID="inputTitle" placeholder="Title"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputTitle" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                         <div class="col-md-6">
                        <div class="form-group">
                                <label>Image</label>
                                <div class="input-group col-xs-12">
                                    <asp:FileUpload ID="blogImage" runat="server" class="form-control file-upload-info" placeholder="Upload Image"></asp:FileUpload>
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
                                <label for="exampleInputName1">Position</label>
                                <asp:TextBox runat="server" class="form-control" ID="inputPosition" placeholder="Position"></asp:TextBox>
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
                                <label for="exampleInputPassword4">Department</label>
                                <asp:DropDownList runat="server" ID="departments" DataValueField="id" DataTextField="title" class="form-control"></asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="departments" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputName1">Url</label>
                                <asp:TextBox runat="server" class="form-control" ID="textUrl" placeholder="Url"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textUrl" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>                      
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="exampleInputPassword4">Description</label>
                                <CKEditor:CKEditorControl ID="textDescription" BasePath="/ckeditor/" runat="server" data-constraints="@Required">
                                </CKEditor:CKEditorControl>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textDescription" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputName1">Meta Title</label>
                                <asp:TextBox runat="server" class="form-control" ID="textMetaTitle" placeholder="Meta Title"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleSelectGender">Meta Tag</label>
                                <asp:TextBox runat="server" class="form-control" ID="textMetaTag" placeholder="Meta Tag"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="exampleInputPassword4">Meta Description</label>
                                <asp:TextBox runat="server" class="form-control" ID="meta_description" placeholder="Meta Description" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="meta_description" ErrorMessage="*Required"></asp:RequiredFieldValidator>
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
