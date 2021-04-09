<%@ Page Title="" Language="C#" MasterPageFile="~/NestedAdmin.master" AutoEventWireup="true" CodeBehind="OrderList.aspx.cs" Inherits="Photo_Studio.admin.OrderList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="loginform">
        <fieldset class="loginfield">
                    <legend>User-Orders</legend>
        </fieldset>
    </div>
    <div class="loginform">
        <fieldset class="loginfield">
                    <legend>Users</legend>
                    <table class="tableform">
                        <tr>
                            <td class="tbcenter1">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:CommandField ShowSelectButton="True" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Photostudiodb %>" SelectCommand="SELECT [Id], [UserName], [email] FROM [USERS]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
        </fieldset>
    </div>
</asp:Content>
