<%@ Page Title="Miêu tả" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Đây là trang miêu tả.</h2>
    </hgroup>

    <article>
        <p>        
            Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide additional information.
        </p>
    </article>

    <aside>
        <h3>Ngoài tiêu đề</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Trang chủ</a></li>
            <li><a runat="server" href="~/About.aspx">Giới thiệu</a></li>
            <li><a runat="server" href="~/Contact.aspx">Liên hệ</a></li>
        </ul>
    </aside>
</asp:Content>