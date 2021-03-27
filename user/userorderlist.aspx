<%@ Page Title="" Language="C#" MasterPageFile="~/UserNested.Master" AutoEventWireup="true" CodeBehind="userorderlist.aspx.cs" Inherits="Photo_Studio.user.userorderlist" %>
<%@ MasterType VirtualPath="~/UserNested.Master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p>
        userorderlist</p>
<p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
</p>
</asp:Content>
