<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSDL.aspx.cs" Inherits="ASP.CSDL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">Loại sản phẩm</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Maloai" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Maloai" HeaderText="Maloai" ReadOnly="True" SortExpression="Maloai">
                                <ItemStyle Width="15%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Tenloai" HeaderText="Tenloai" SortExpression="Tenloai">
                                <ItemStyle Width="70%" />
                                </asp:BoundField>
                                <asp:CheckBoxField DataField="Tinhtrang" HeaderText="Tinhtrang" SortExpression="Tinhtrang">
                                <ItemStyle Width="15%" />
                                </asp:CheckBoxField>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QUANLYKHACHHANG_ASPConnectionString %>" DeleteCommand="DELETE FROM [LOAISANPHAM] WHERE [Maloai] = @original_Maloai AND (([Tenloai] = @original_Tenloai) OR ([Tenloai] IS NULL AND @original_Tenloai IS NULL)) AND (([Tinhtrang] = @original_Tinhtrang) OR ([Tinhtrang] IS NULL AND @original_Tinhtrang IS NULL))" InsertCommand="INSERT INTO [LOAISANPHAM] ([Maloai], [Tenloai], [Tinhtrang]) VALUES (@Maloai, @Tenloai, @Tinhtrang)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [LOAISANPHAM]" UpdateCommand="UPDATE [LOAISANPHAM] SET [Tenloai] = @Tenloai, [Tinhtrang] = @Tinhtrang WHERE [Maloai] = @original_Maloai AND (([Tenloai] = @original_Tenloai) OR ([Tenloai] IS NULL AND @original_Tenloai IS NULL)) AND (([Tinhtrang] = @original_Tinhtrang) OR ([Tinhtrang] IS NULL AND @original_Tinhtrang IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Maloai" Type="String" />
                                <asp:Parameter Name="original_Tenloai" Type="String" />
                                <asp:Parameter Name="original_Tinhtrang" Type="Boolean" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Maloai" Type="String" />
                                <asp:Parameter Name="Tenloai" Type="String" />
                                <asp:Parameter Name="Tinhtrang" Type="Boolean" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Tenloai" Type="String" />
                                <asp:Parameter Name="Tinhtrang" Type="Boolean" />
                                <asp:Parameter Name="original_Maloai" Type="String" />
                                <asp:Parameter Name="original_Tenloai" Type="String" />
                                <asp:Parameter Name="original_Tinhtrang" Type="Boolean" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Sản phẩm</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MASP" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" ShowFooter="True" Width="100%" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField CancelText="Huỷ" DeleteText="Xoá" EditText="Sửa" InsertText="Thêm" NewText="Mới" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Cập nhật" />
                                <asp:TemplateField HeaderText="MASP" SortExpression="MASP">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MASP") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MASP") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txt_add_masp" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                    <FooterStyle Width="10%" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="TENSP" SortExpression="TENSP">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TENSP") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENSP") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txt_add_tensp" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DVT" SortExpression="DVT">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DVT") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("DVT") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txt_add_dvt" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="NUOCSX" SortExpression="NUOCSX">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("NUOCSX") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("NUOCSX") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txt_add_nuocsx" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="GIA" SortExpression="GIA">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("GIA") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("GIA") %>'></asp:Label>
                                    </ItemTemplate><FooterTemplate>
                                        <asp:TextBox ID="txt_add_gia" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="LOAISP" SortExpression="LOAISP">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("LOAISP") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("LOAISP") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txt_add_loaisp" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="HINH" SortExpression="HINH">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("HINH") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("HINH") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:FileUpload ID="fu_add_hinh" runat="server" />
                                    </FooterTemplate>
                                </asp:TemplateField>
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QUANLYKHACHHANG_ASPConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [SANPHAM] WHERE [MASP] = @original_MASP AND [TENSP] = @original_TENSP AND (([DVT] = @original_DVT) OR ([DVT] IS NULL AND @original_DVT IS NULL)) AND (([NUOCSX] = @original_NUOCSX) OR ([NUOCSX] IS NULL AND @original_NUOCSX IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([LOAISP] = @original_LOAISP) OR ([LOAISP] IS NULL AND @original_LOAISP IS NULL)) AND (([HINH] = @original_HINH) OR ([HINH] IS NULL AND @original_HINH IS NULL))" InsertCommand="INSERT INTO [SANPHAM] ([MASP], [TENSP], [DVT], [NUOCSX], [GIA], [LOAISP], [HINH]) VALUES (@MASP, @TENSP, @DVT, @NUOCSX, @GIA, @LOAISP, @HINH)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [SANPHAM] SET [TENSP] = @TENSP, [DVT] = @DVT, [NUOCSX] = @NUOCSX, [GIA] = @GIA, [LOAISP] = @LOAISP, [HINH] = @HINH WHERE [MASP] = @original_MASP AND [TENSP] = @original_TENSP AND (([DVT] = @original_DVT) OR ([DVT] IS NULL AND @original_DVT IS NULL)) AND (([NUOCSX] = @original_NUOCSX) OR ([NUOCSX] IS NULL AND @original_NUOCSX IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([LOAISP] = @original_LOAISP) OR ([LOAISP] IS NULL AND @original_LOAISP IS NULL)) AND (([HINH] = @original_HINH) OR ([HINH] IS NULL AND @original_HINH IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_MASP" Type="String" />
                                <asp:Parameter Name="original_TENSP" Type="String" />
                                <asp:Parameter Name="original_DVT" Type="String" />
                                <asp:Parameter Name="original_NUOCSX" Type="String" />
                                <asp:Parameter Name="original_GIA" Type="Decimal" />
                                <asp:Parameter Name="original_LOAISP" Type="String" />
                                <asp:Parameter Name="original_HINH" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="MASP" Type="String" />
                                <asp:Parameter Name="TENSP" Type="String" />
                                <asp:Parameter Name="DVT" Type="String" />
                                <asp:Parameter Name="NUOCSX" Type="String" />
                                <asp:Parameter Name="GIA" Type="Decimal" />
                                <asp:Parameter Name="LOAISP" Type="String" />
                                <asp:Parameter Name="HINH" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="TENSP" Type="String" />
                                <asp:Parameter Name="DVT" Type="String" />
                                <asp:Parameter Name="NUOCSX" Type="String" />
                                <asp:Parameter Name="GIA" Type="Decimal" />
                                <asp:Parameter Name="LOAISP" Type="String" />
                                <asp:Parameter Name="HINH" Type="String" />
                                <asp:Parameter Name="original_MASP" Type="String" />
                                <asp:Parameter Name="original_TENSP" Type="String" />
                                <asp:Parameter Name="original_DVT" Type="String" />
                                <asp:Parameter Name="original_NUOCSX" Type="String" />
                                <asp:Parameter Name="original_GIA" Type="Decimal" />
                                <asp:Parameter Name="original_LOAISP" Type="String" />
                                <asp:Parameter Name="original_HINH" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
