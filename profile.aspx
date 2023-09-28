<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="front-assets/css/style.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
          <section style="background-image: url(front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>Profile</h2>
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
                    <div class="block-shadow text-center">
                        <div class="block-inner">
                            <%--<p class="text-uppercase text-abbey text-bold">Profile</p>--%>
                            <!-- <div class="offset-top-35"><span class="icon icon-xl icon-gray-base material-icons-face"></span></div> -->
                        </div>
                        <div class="rd-mailform form-modern form-darker offset-top-22">

                            <div class="block-inner">                              
                                
                                <asp:Image ID="profile_image" runat="server" width="129"
                      height="129" alt="" class="img-circle"/>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="inputName" runat="server" placeholder="Name"
                                                class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputName" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="inputEmail" runat="server"
                                                class="form-control" placeholder="Email"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputEmail" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="inputEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:TextBox ID="inputPhone" runat="server"
                                                class="form-control" placeholder="Phone NO." type="number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputPhone" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputPhone" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="inputPhone" ErrorMessage="Value must be Number" /><br />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:TextBox ID="altPhoneNo" runat="server"
                                                class="form-control" placeholder="Alt Phone NO." type="number"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="altPhoneNo" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                                            
                                        </div>
                                    </div>

                                </div>
                                   <%-- <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:Lable ID="userrole" runat="server"
                                                class="form-control"></asp:Lable>
                                            
                                        </div>
                                    </div>
                                </div>--%>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:DropDownList runat="server" ID="departments" DataValueField="id" DataTextField="title" AutoPostBack="true" OnSelectedIndexChanged="departments_SelectedIndexChanged"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:DropDownList runat="server" ID="selectIndustry" DataValueField="id" DataTextField="name"></asp:DropDownList>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">                                               
                                            <asp:FileUpload ID="userImage" runat="server" type="text" class="form-control file-upload-info" placeholder="Upload Profile"></asp:FileUpload>
                                            <asp:Label ID="Label1" runat="server" Text="Upload Profile Image" style="color:red"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:FileUpload ID="FileUpload1" runat="server" type="text" class="form-control file-upload-info" placeholder="Upload Resume"></asp:FileUpload>
                                            <asp:Label ID="Label2" runat="server" Text="Upload Resume" style="color:red"></asp:Label>
                                             <div visible="false" id="Div1" runat="server">
                                             <a href="" target="_blank" style="color:black" id="resume_file" runat="server">View File</a>
                                                 </div>
                                        </div>
                                       
                                    </div>

                                </div>
                            <%--    <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:TextBox ID="inputPassword" runat="server"
                                                class="form-control" placeholder="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="inputPassword" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>--%>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:TextBox ID="address" runat="server"
                                                class="form-control" placeholder="Address"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textPinCode" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
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
                                        <div class="form-group offset-top-22">
                                            <asp:TextBox ID="textCity" runat="server"
                                                class="form-control" placeholder="City"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="textPinCode" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:TextBox ID="textPinCode" runat="server"
                                                class="form-control" placeholder="Pin Code" type="number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="textPinCode" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="textPinCode" ErrorMessage="Value must be Number" /><br />
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="offset-top-30 offset-sm-top-50">
                                <asp:Button runat="server" ID="submit_button" OnClick="submit_button_Click" class="btn btn-primary btn-block" Text="Update"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
</asp:Content>
