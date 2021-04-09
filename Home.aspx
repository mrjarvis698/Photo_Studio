<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Photo_Studio.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            text-decoration: underline;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        <strong>Welcome To PhotoStudio.</strong></p>
    <p class="auto-style2">
        Here you will get a Photography Studio Prints, Being at Home.</p>
    <p class="auto-style2">
        &nbsp;</p>
    <p>
        New User?<asp:Button ID="Button1" runat="server" CausesValidation="False" PostBackUrl="~/signup.aspx" Text="Signup" />
        / Already a User?<asp:Button ID="Button2" runat="server" CausesValidation="False" PostBackUrl="~/login.aspx" Text="Login" />
    </p>
</asp:Content>
