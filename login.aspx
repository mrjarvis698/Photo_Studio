<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Photo_Studio.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/LoginStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginform">
        <fieldset class="loginfield">
                    <legend>Login</legend>

                    <table class="tableform">
                        <tr>
                            <td>
                                <asp:Label ID="LoginEmailLabel" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="LoginEmailTextBox" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="LoginEmailRequiredFieldValidator" runat="server" ControlToValidate="LoginEmailTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="LoginEmailRegularExpressionValidator" runat="server" ControlToValidate="LoginEmailTextBox" ErrorMessage="Invalid Email." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LoginPasswordLabel" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="LoginPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="LoginPasswordRequiredFieldValidator" runat="server" ControlToValidate="LoginPasswordTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Login" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

        </fieldset>
    </div>
</asp:Content>
