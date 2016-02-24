<%@ Page Title="Trang chủ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2></h2>
            </hgroup>
            <p>
                
                <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum"></a>.
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>CHITIETHOADON<br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MAHD,MASP" DataSourceID="SqlDataSource1" Height="50px" Width="125px" AllowPaging="True">
                    <Fields>
                        <asp:BoundField DataField="MAHD" HeaderText="MAHD" ReadOnly="True" SortExpression="MAHD" />
                        <asp:BoundField DataField="MASP" HeaderText="MASP" ReadOnly="True" SortExpression="MASP" />
                        <asp:BoundField DataField="GIASP" HeaderText="GIASP" SortExpression="GIASP" />
                        <asp:BoundField DataField="SL" HeaderText="SL" SortExpression="SL" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Minhttph03716QLBHConnectionString %>" DeleteCommand="DELETE FROM [CHITIETHOADON] WHERE [MAHD] = @MAHD AND [MASP] = @MASP" InsertCommand="INSERT INTO [CHITIETHOADON] ([MAHD], [MASP], [GIASP], [SL]) VALUES (@MAHD, @MASP, @GIASP, @SL)" SelectCommand="SELECT * FROM [CHITIETHOADON]" UpdateCommand="UPDATE [CHITIETHOADON] SET [GIASP] = @GIASP, [SL] = @SL WHERE [MAHD] = @MAHD AND [MASP] = @MASP">
                    <DeleteParameters>
                        <asp:Parameter Name="MAHD" Type="String" />
                        <asp:Parameter Name="MASP" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MAHD" Type="String" />
                        <asp:Parameter Name="MASP" Type="String" />
                        <asp:Parameter Name="GIASP" Type="Decimal" />
                        <asp:Parameter Name="SL" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="GIASP" Type="Decimal" />
                        <asp:Parameter Name="SL" Type="Int32" />
                        <asp:Parameter Name="MAHD" Type="String" />
                        <asp:Parameter Name="MASP" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
           
        </li>
        <li class="two">
            <h5>HOADON<br />
                <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MAHD" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="MAHD" HeaderText="MAHD" ReadOnly="True" SortExpression="MAHD" />
                        <asp:BoundField DataField="MAKH" HeaderText="MAKH" SortExpression="MAKH" />
                        <asp:BoundField DataField="NGAY" HeaderText="NGAY" SortExpression="NGAY" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Minhttph03716QLBHConnectionString %>" DeleteCommand="DELETE FROM [HOADON] WHERE [MAHD] = @MAHD" InsertCommand="INSERT INTO [HOADON] ([MAHD], [MAKH], [NGAY]) VALUES (@MAHD, @MAKH, @NGAY)" SelectCommand="SELECT * FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [MAKH] = @MAKH, [NGAY] = @NGAY WHERE [MAHD] = @MAHD">
                    <DeleteParameters>
                        <asp:Parameter Name="MAHD" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MAHD" Type="String" />
                        <asp:Parameter Name="MAKH" Type="String" />
                        <asp:Parameter Name="NGAY" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MAKH" Type="String" />
                        <asp:Parameter Name="NGAY" Type="DateTime" />
                        <asp:Parameter Name="MAHD" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>

        </li>
        <li class="three">
            <h5>KHACHHANG<br />
                <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MAKH" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="MAKH" HeaderText="MAKH" ReadOnly="True" SortExpression="MAKH" />
                        <asp:BoundField DataField="TENKH" HeaderText="TENKH" SortExpression="TENKH" />
                        <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
                        <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Minhttph03716QLBHConnectionString %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [MAKH] = @MAKH" InsertCommand="INSERT INTO [KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [EMAIL]) VALUES (@MAKH, @TENKH, @DIACHI, @SDT, @EMAIL)" SelectCommand="SELECT * FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [TENKH] = @TENKH, [DIACHI] = @DIACHI, [SDT] = @SDT, [EMAIL] = @EMAIL WHERE [MAKH] = @MAKH">
                    <DeleteParameters>
                        <asp:Parameter Name="MAKH" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MAKH" Type="String" />
                        <asp:Parameter Name="TENKH" Type="String" />
                        <asp:Parameter Name="DIACHI" Type="String" />
                        <asp:Parameter Name="SDT" Type="String" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TENKH" Type="String" />
                        <asp:Parameter Name="DIACHI" Type="String" />
                        <asp:Parameter Name="SDT" Type="String" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                        <asp:Parameter Name="MAKH" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>

        </li>
        <li class="four">
            <h5>LOAISANPHAM<br />
                <asp:DetailsView ID="DetailsView4" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MASP" DataSourceID="SqlDataSource4" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="MASP" HeaderText="MASP" ReadOnly="True" SortExpression="MASP" />
                        <asp:BoundField DataField="TENLOAISP" HeaderText="TENLOAISP" SortExpression="TENLOAISP" />
                        <asp:BoundField DataField="SL" HeaderText="SL" SortExpression="SL" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Minhttph03716QLBHConnectionString %>" DeleteCommand="DELETE FROM [LOAISANPHAM] WHERE [MASP] = @MASP" InsertCommand="INSERT INTO [LOAISANPHAM] ([MASP], [TENLOAISP], [SL]) VALUES (@MASP, @TENLOAISP, @SL)" SelectCommand="SELECT * FROM [LOAISANPHAM]" UpdateCommand="UPDATE [LOAISANPHAM] SET [TENLOAISP] = @TENLOAISP, [SL] = @SL WHERE [MASP] = @MASP">
                    <DeleteParameters>
                        <asp:Parameter Name="MASP" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MASP" Type="String" />
                        <asp:Parameter Name="TENLOAISP" Type="String" />
                        <asp:Parameter Name="SL" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TENLOAISP" Type="String" />
                        <asp:Parameter Name="SL" Type="Int32" />
                        <asp:Parameter Name="MASP" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>

        </li>
        <li class="five">
            <h5>SANPHAM<br />
                <asp:DetailsView ID="DetailsView5" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MASP" DataSourceID="SqlDataSource5" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="MASP" HeaderText="MASP" ReadOnly="True" SortExpression="MASP" />
                        <asp:BoundField DataField="GIASP" HeaderText="GIASP" SortExpression="GIASP" />
                        <asp:BoundField DataField="MOTASP" HeaderText="MOTASP" SortExpression="MOTASP" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Minhttph03716QLBHConnectionString %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [MASP] = @MASP" InsertCommand="INSERT INTO [SANPHAM] ([MASP], [GIASP], [MOTASP]) VALUES (@MASP, @GIASP, @MOTASP)" SelectCommand="SELECT * FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [GIASP] = @GIASP, [MOTASP] = @MOTASP WHERE [MASP] = @MASP">
                    <DeleteParameters>
                        <asp:Parameter Name="MASP" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MASP" Type="String" />
                        <asp:Parameter Name="GIASP" Type="Decimal" />
                        <asp:Parameter Name="MOTASP" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="GIASP" Type="Decimal" />
                        <asp:Parameter Name="MOTASP" Type="String" />
                        <asp:Parameter Name="MASP" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>

        </li>
    </ol>
</asp:Content>