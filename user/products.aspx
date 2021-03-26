﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Photo_Studio.user.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 376px;
    }
        .auto-style3 {
            width: 111px;
            text-align: right;
        }
        .auto-style5 {
            width: 476px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        products.user</p>
    <div class="loginform">
        <fieldset class="auto-style5">
            <legend>Product View</legend>
            <table class="tableform">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="ProductNameLabel" runat="server">Product Name -</asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ProductNameSqlLabel" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="ProductDescriptionLabel" runat="server">Description -</asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="ProductDescriptionSqlLabel" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="ProductPriceLabel" runat="server">Product Price -</asp:Label>
                    </td>
                    <td>
                        ₹<asp:Label ID="ProductPriceSqlLabel" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="QuantityLabel" runat="server">Quantity -</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="QuantityTextBox" runat="server" TextMode="Number" Width="41px" Wrap="False">1</asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="AddToCartButton" runat="server" OnClick="AddToCartButton_Click" Text="Add to Cart" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </fieldset><br />
        <br />
&nbsp;<fieldset class="auto-style5">
            <legend>Products</legend>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="465px" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Photostudiodb %>" SelectCommand="SELECT * FROM [PRODUCTS]"></asp:SqlDataSource>
        </fieldset>
    </div>
</asp:Content>
