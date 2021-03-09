<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="userslist.aspx.cs" Inherits="Photo_Studio.admin.userslist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/style/LoginStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginform">
        <fieldset class="loginfield">
                    <legend>Registered Users</legend>
                    <table class="tableform">
                        <tr>
                            <td class="tbcenter1">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                        <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Photostudiodb %>" SelectCommand="SELECT [Id], [name], [address], [contact], [email] FROM [USERS]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
        </fieldset>
    </div>
    </asp:Content>
