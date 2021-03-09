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
                            <td class="tbleft">
                                <asp:Label ID="LoginEmailLabel" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="LoginEmailTextBox" runat="server"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="LoginEmailRequiredFieldValidator" runat="server" ControlToValidate="LoginEmailTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="LoginEmailRegularExpressionValidator" runat="server" ControlToValidate="LoginEmailTextBox" ErrorMessage="Invalid Email." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="LoginPasswordLabel" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="LoginPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="LoginPasswordRequiredFieldValidator" runat="server" ControlToValidate="LoginPasswordTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft"></td>
                            <td class="tbcenter">
                                <asp:Button ID="Button1" runat="server" Text="Login" />
                            </td>
                            <td class="tbright"></td>
                        </tr>
                        <tr>
                            <td class="tbleft">&nbsp;</td>
                            <td class="tbcenter">&nbsp;</td>
                            <td class="tbright">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="tbleft">&nbsp;</td>
                            <td class="tbcenter">&nbsp;</td>
                            <td class="tbright">&nbsp;</td>
                        </tr>
                    </table>

        </fieldset>
    </div>
</asp:Content>
