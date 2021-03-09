<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Photo_Studio.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
    <link href="style/LoginStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginform">
        <fieldset class="loginfield">
                    <legend>Signup</legend>

                    <table class="tableform">
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="SignupNameTextBox" runat="server"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="SignupNameRequiredFieldValidator" runat="server" ControlToValidate="SignupNameTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="GenderLabel" runat="server" Text="Gender"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:RadioButtonList ID="SignupGenderRadioButtonList" runat="server" RepeatDirection="Horizontal" Width="201px">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SignupGenderRadioButtonList" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="AddressLabel" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="SignupAddressTextBox" runat="server" TextMode="MultiLine" Height="102px" Width="187px"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="SignupAddressRequiredFieldValidator" runat="server" ControlToValidate="SignupAddressTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="Label1" runat="server" Text="Contact"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="SignupContactTextBox" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="SignupContactRequiredFieldValidator" runat="server" ControlToValidate="SignupContactTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="SignupContactRegularExpressionValidator" runat="server" ControlToValidate="SignupContactTextBox" ErrorMessage="Enter Valid Contact." ForeColor="Red" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="SignupEmailTextBox" runat="server"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="SignupEmailRequiredFieldValidator" runat="server" ControlToValidate="SignupEmailTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="SingupEmailRegularExpressionValidator" runat="server" ControlToValidate="SignupEmailTextBox" ErrorMessage="Invalid Email." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="SignupPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="SignupPasswordRequiredFieldValidator" runat="server" ControlToValidate="SignupPasswordTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="SignupConfirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:CompareValidator ID="SignupConfirmPasswordCompareValidator" runat="server" ControlToCompare="SignupPasswordTextBox" ControlToValidate="SignupConfirmPasswordTextBox" ErrorMessage="Password Not Matched." ForeColor="Red"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">&nbsp;</td>
                            <td class="tbcenter">
                                <asp:Button ID="SignupButton" runat="server" Text="Signup" />
                            </td>
                            <td class="tbright">&nbsp;</td>
                        </tr>
                    </table>

        </fieldset>
    </div>
</asp:Content>
