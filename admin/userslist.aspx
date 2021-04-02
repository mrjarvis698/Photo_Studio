<%@ Page Title="" Language="C#" MasterPageFile="~/NestedAdmin.Master" AutoEventWireup="true" CodeBehind="userslist.aspx.cs" Inherits="Photo_Studio.admin.userslist" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">    
    <link href="~/style/LoginStyleSheet.css" rel="stylesheet" type="text/css" />
    <div>
    <asp:Button ID="GridViewTableListButton" runat="server" Text="List all Tables on server" 
        onclick="GridViewTableListButton_Click"  />
    <asp:GridView ID="GridViewTableList" runat="server">
    </asp:GridView>
</div>
    <div class="loginform">
        <fieldset class="loginfield">
                    <legend>Registered Users</legend>
                    <table class="tableform">
                        <tr>
                            <td class="tbcenter1">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                        <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Photostudiodb %>" SelectCommand="SELECT [Id], [UserName], [address], [contact], [email] FROM [USERS]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
        </fieldset>
    </div>
    </asp:Content>
