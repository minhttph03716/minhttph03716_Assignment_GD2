<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RegisterExternalLogin.aspx.cs" Inherits="Account_RegisterExternalLogin" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Đăng ký với <%: ProviderDisplayName %> tài khoản có sẵn</h1>
        <h2><%: ProviderUserName %>.</h2>
    </hgroup>

    
    <asp:Label runat="server" ID="providerMessage" CssClass="field-validation-error" />
    

    <asp:PlaceHolder runat="server" ID="userNameForm">
        <fieldset>
            <legend>Association Form</legend>
            <p>
                You've authenticated with <strong><%: ProviderDisplayName %></strong> as
                <strong><%: ProviderUserName %></strong>. Please enter a user name below for the current site
                and click the Log in button.
            </p>
            <ol>
                <li class="email">
                    <asp:Label runat="server" AssociatedControlID="userName">Tên đăng nhập</asp:Label>
                    <asp:TextBox runat="server" ID="userName" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="userName"
                        Display="Dynamic" ErrorMessage="Tên đăng nhập là cần thiết" ValidationGroup="NewUser" />
                    
                    <asp:Label runat="server" ID="userNameMessage" CssClass="field-validation-error" />
                    
                </li>
            </ol>
            <asp:Button runat="server" Text="Đăng nhập" ValidationGroup="NewUser" OnClick="logIn_Click" />
            <asp:Button runat="server" Text="Hủy bỏ" CausesValidation="false" OnClick="cancel_Click" />
        </fieldset>
    </asp:PlaceHolder>
</asp:Content>
