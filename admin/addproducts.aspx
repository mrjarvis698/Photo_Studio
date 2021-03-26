<%@ Page Title="" Language="C#" MasterPageFile="~/NestedAdmin.Master" AutoEventWireup="true" CodeBehind="addproducts.aspx.cs" Inherits="Photo_Studio.admin.addproducts" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">    
    <link href="~/style/LoginStyleSheet.css" rel="stylesheet" type="text/css" />
    <div class="loginform">
        <fieldset class="loginfield">
                    <legend>Add Products</legend>
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
        <fieldset class="loginfield">
                    <legend>View Products</legend>
            <table class="tableform">
                        <tr>
                            <td class="tbcenter1">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="gridviewofPRODUCTTABLE" Width="671px">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="gridviewofPRODUCTTABLE" runat="server" ConnectionString="<%$ ConnectionStrings:Photostudiodb %>" SelectCommand="SELECT * FROM [PRODUCTS]"></asp:SqlDataSource>
                            </td>
                        </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
