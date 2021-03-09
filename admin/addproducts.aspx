<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addproducts.aspx.cs" Inherits="Photo_Studio.admin.addproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/style/LoginStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginform">
        <fieldset class="loginfield">
                    <legend>Add Product</legend>

                    <table class="tableform">
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="AddProductNameLabel" runat="server" Text="Product Name"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="AddProductNameTextBox" runat="server"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="AddProductNameRequiredFieldValidator" runat="server" ControlToValidate="AddProductNameTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="AddProductDescriptionLabel" runat="server" Text="Product Description"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="AddProductDescriptionTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="AddProductDescriptionRequiredFieldValidator" runat="server" ControlToValidate="AddProductDescriptionTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">
                                <asp:Label ID="AddProductPriceLabel" runat="server" Text="Product Price"></asp:Label>
                            </td>
                            <td class="tbcenter">
                                <asp:TextBox ID="AddProductPriceTextBox" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="tbright">
                                <asp:RequiredFieldValidator ID="AddProductPriceRequiredFieldValidator" runat="server" ControlToValidate="AddProductPriceTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tbleft">&nbsp;</td>
                            <td class="tbcenter">
                                <asp:Button ID="AddProductButton" runat="server" Text="Add" OnClick="Button1_Click" />
                            </td>
                            <td class="tbright">
                                <asp:Label ID="AddLabel" runat="server" ForeColor="Red"></asp:Label>
                            </td>
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
