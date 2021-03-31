<%@ Page Title="" Language="C#" MasterPageFile="~/UserNested.master" AutoEventWireup="true" CodeBehind="usercheckout.aspx.cs" Inherits="Photo_Studio.user.usercheckout" %>
<%@ MasterType VirtualPath="~/UserNested.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="loginform">
        <fieldset class="loginfield">
                    <legend>Checkout</legend>
                    <table class="tableform">
                        <tr>
                            <td style="text-align: right; width: 180px" class="tableform1">Username - </td>
                            <td style="text-align: left">
                                <asp:Label ID="UserCheckoutUsernameLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 180px" class="tableform1">Gender - </td>
                            <td style="text-align: left">
                                <asp:Label ID="UserCheckoutGenderLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 180px" class="tableform1">Shipping Address - </td>
                            <td style="text-align: left">
                                <asp:Label ID="UserCheckoutShippingAddressLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 180px" class="tableform1">Contact - </td>
                            <td style="text-align: left">
                                <asp:Label ID="UserCheckoutContactLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 180px" class="tableform1">Email - </td>
                            <td style="text-align: left">
                                <asp:Label ID="UserCheckoutEmailLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>

                    <table class="tableform">
                        <tr>
                            <td style="width: 348px">
                                <div>
                                    <Fieldset>
                                        <legend>Products</legend>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
    OnPageIndexChanging="OnPageIndexChanging" OnRowDataBound="pricedatabound" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" />
                            <asp:BoundField DataField="Description" HeaderText="Description" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                                    </fieldset>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <Fieldset style="text-align: center">
                                        <legend>Total Price</legend>
                                        <asp:Label ID="TotalPriceLabel" runat="server"></asp:Label>
                                        <br />
                                        <asp:Button ID="UserCheckoutButton" runat="server" Text="Checkout" OnClick="UserCheckoutButton_Click" />
                                    </Fieldset>
                                </div>
                            </td>
                        </tr>
                    </table>

                    <br />
        </fieldset>
    </div>
</asp:Content>
