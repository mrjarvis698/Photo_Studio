<%@ Page Title="" Language="C#" MasterPageFile="~/UserNested.Master" AutoEventWireup="true" CodeBehind="useraccount.aspx.cs" Inherits="Photo_Studio.user.useraccount" %>
<%@ MasterType VirtualPath="~/UserNested.Master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="loginform">
        <fieldset class="loginfield">
                    <legend>My Account</legend>
                    <table class="tableform">
                        <tr>
                            <td style="text-align: right; width: 117px" class="tableform1">Username - </td>
                            <td style="text-align: left">
                                <asp:Label ID="MyAccountUsernameLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 117px" class="tableform1">Gender - </td>
                            <td style="text-align: left">
                                <asp:Label ID="MyAccountGenderLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 117px" class="tableform1">Address - </td>
                            <td style="text-align: left">
                                <asp:Label ID="MyAccountAddressLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 117px" class="tableform1">Contact - </td>
                            <td style="text-align: left">
                                <asp:Label ID="MyAccountContactLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 117px" class="tableform1">Email - </td>
                            <td style="text-align: left">
                                <asp:Label ID="MyAccountEmailLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
        </fieldset>
    </div>
</asp:Content>
