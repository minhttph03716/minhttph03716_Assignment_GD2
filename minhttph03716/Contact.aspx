<%@ Page Title="Liên hệ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Trang liên hệ.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Số điện thoại:</h3>
        </header>
        <p>
            <span class="label">Số di động:</span>
            <span>+841648668881</span>
        </p>
        <p>
            <span class="label">Sô bàn:</span>
            <span>+046814790</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ:</span>
            <span><a href="mailto:Support@gmail.com">minhbanana96@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">CSKH:</span>
            <span><a href="mailto:General@example.com">CSKH@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29799.537844374387!2d105.87494897864744!3d20.994952705054065!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135aeb12127603f%3A0x2a55a986aff64bc!2zVGhhbmggVHLDrCwgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1456293604085" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </p>
    </section>
</asp:Content>