<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="industryRegister.aspx.cs" Inherits="industryRegister" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://localhost:55500/front-assets/css/style.css">
     <script src="http://localhost:55500/ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section style="background-image: url(front-assets/images/bg-full.jpg);" class="one-screen-page bg-gray-darker bg-image">
        <div class="shell">
            <div class="alert alert-success alert-dismissible fade show" role="alert" visible="false" id="lable_data" runat="server">
                <asp:Label ID="lable_msg" runat="server"></asp:Label>
                <asp:Button ID="btnTest" runat="server" Text="X" OnClick="btnTest_Click" />
            </div>
            <div class="range range-sm-center">
                <div class="cell-sm-12" style="margin: 50px">
                    <div class="block-shadow text-center">
                        <div class="block-inner">
                            <p class="text-uppercase text-abbey text-bold">Create your account</p>
                            <!-- <div class="offset-top-35"><span class="icon icon-xl icon-gray-base material-icons-face"></span></div> -->
                        </div>
                        <div class="rd-mailform form-modern form-darker offset-top-22">
                            <div class="block-inner">
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
                                            <asp:FileUpload ID="industryImage" runat="server" type="text" class="form-control file-upload-info" placeholder="Upload Profile"></asp:FileUpload>
                                            <asp:Label ID="Label1" runat="server" Text="Upload Profile Image" Style="color: red"></asp:Label>
                                        </div>
                                    </div>


                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="inputEmail" runat="server"
                                                class="form-control" placeholder="Email"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputEmail" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="inputEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="inputPhone" runat="server"
                                                class="form-control" placeholder="Phone NO."></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputPhone" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="inputPhone" ErrorMessage="Value must be Number" /><br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputPhone" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:DropDownList runat="server" ID="departments" DataValueField="id" DataTextField="title"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:TextBox ID="address" runat="server"
                                                class="form-control" placeholder="Address"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address" ErrorMessage="*Required"></asp:RequiredFieldValidator>
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="textCity" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <asp:TextBox ID="textPinCode" runat="server"
                                                class="form-control" placeholder="Pin Code"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="textPinCode" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="textPinCode" ErrorMessage="Value must be Number" /><br />
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <label for="exampleInputName1">Website</label>
                                            <asp:TextBox runat="server" class="form-control" ID="inputWebsite" placeholder="Website"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="inputWebsite" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group offset-top-22">
                                            <label for="exampleInputName1">No. of Employees</label>
                                            <asp:TextBox runat="server" class="form-control" ID="textEmployee" placeholder="No of Employees"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="exampleInputPassword4">Description</label>
                                            <ckeditor:ckeditorcontrol id="textDescription" basepath="/ckeditor/" runat="server">
                                            </ckeditor:ckeditorcontrol>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="textDescription" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="offset-top-22 text-left text-secondary">
                                    <label class="checkbox-inline checkbox-small">
                                       <asp:CheckBox ID="MyCheckBox" runat="server" name="input-checkbox" value="checkbox-1" type="checkbox" />
                                         I agree with the&nbsp;<a href="privacy-policy.html" class="link-primary-inline">Terms of use</a>.
                                         <asp:CustomValidator runat="server" ID="CheckBoxRequired" EnableClientScript="true" ClientValidationFunction="ValidateCheckBox">
                                             
                                       
                                             </asp:CustomValidator>
                                        <div style="color:red;display:none" id="checkbox_requuired">*Required</div>
                                    </label>
                                </div>
                            </div>
                            <div class="offset-top-30 offset-sm-top-50">
                                <asp:Button runat="server" ID="submit_button" OnClick="submit_button_Click" class="btn btn-primary btn-block" Text="Sign up"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="page-foot">
        <div class="page-foot-inner">
            <div class="shell text-center">
                <div class="range">
                    <div class="cell-xs-12">
                        <p class="rights text-small text-light">
                            <span>Easy Audit</span><span>&nbsp;&#169;&nbsp;</span><span
                                id="copyright-year"></span><span>All Rights Reserved</span><br class="veil-sm">
                            <a href="http://localhost:55500/TermsAndConditions" class="link-primary-inverse">Terms of Use</a><span>and</span><a href="privacy-policy.html"
                                class="link-primary-inverse">Privacy Policy</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
 <script type = "text/javascript">
    function ValidateCheckBox(sender, args) {  
            if (document.getElementById("<%=MyCheckBox.ClientID %>").checked == true) {
                args.IsValid = true;
                $("#checkbox_requuired").hide();
            } else {
                args.IsValid = false;
                $("#checkbox_requuired").show();
            }
        }
 </script>
</asp:Content>
