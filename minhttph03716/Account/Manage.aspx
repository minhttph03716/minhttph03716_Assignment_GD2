<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Account_Manage" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<%@ Import Namespace="Microsoft.AspNet.Membership.OpenAuth" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>

    <section id="passwordForm">
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="message-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>

        <p>Bạn đang đăng nhập <strong><%: User.Identity.Name %></strong>.</p>

        <asp:PlaceHolder runat="server" ID="setPassword" Visible="false">
            <p>
                Bạn không có một mật khẩu địa phương cho trang web này. Thêm mật khẩu địa phương, do đó bạn có thể đăng nhập mà không có một đăng nhập bên ngoài.
            </p>
            <fieldset>
                <legend>Set Password Form</legend>
                <ol>
                    <li>
                        <asp:Label runat="server" AssociatedControlID="password">Mật khẩu</asp:Label>
                        <asp:TextBox runat="server" ID="password" TextMode="Password" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                            CssClass="field-validation-error" ErrorMessage="Yêu cầu nhập mật khẩu."
                            Display="Dynamic" ValidationGroup="SetPassword" />
                        
                        <asp:Label runat="server" ID="newPasswordMessage" CssClass="field-validation-error"
                            AssociatedControlID="password" />
                        
                    </li>
                    <li>
                        <asp:Label runat="server" AssociatedControlID="confirmPassword">Nhập lại mật khẩu</asp:Label>
                        <asp:TextBox runat="server" ID="confirmPassword" TextMode="Password" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmPassword"
                            CssClass="field-validation-error" Display="Dynamic" ErrorMessage="Yêu cầu nhập mật khẩu."
                            ValidationGroup="SetPassword" />
                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="confirmPassword"
                            CssClass="field-validation-error" Display="Dynamic" ErrorMessage="Mật khẩu nhập vào không hợp lệ."
                            ValidationGroup="SetPassword" />
                    </li>
                </ol>
                <asp:Button runat="server" Text="Đặt lại mật khẩu" ValidationGroup="Đặt lại mật khẩu" OnClick="setPassword_Click" />
            </fieldset>
        </asp:PlaceHolder>

        <asp:PlaceHolder runat="server" ID="changePassword" Visible="false">
            <h3>Đổi mật khẩu</h3>
            <asp:ChangePassword runat="server" CancelDestinationPageUrl="~/" ViewStateMode="Disabled" RenderOuterTable="false" SuccessPageUrl="Manage.aspx?m=ChangePwdSuccess">
                <ChangePasswordTemplate>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                    <fieldset class="changePassword">
                        <legend>Thay đổi chi tiết mật khẩu</legend>
                        <ol>
                            <li>
                                <asp:Label runat="server" ID="CurrentPasswordLabel" AssociatedControlID="CurrentPassword">Mật khẩu hiện tại</asp:Label>
                                <asp:TextBox runat="server" ID="CurrentPassword" CssClass="passwordEntry" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentPassword"
                                    CssClass="field-validation-error" ErrorMessage="Không được phép để trống." />
                            </li>
                            <li>
                                <asp:Label runat="server" ID="NewPasswordLabel" AssociatedControlID="NewPassword">Mật khẩu mới</asp:Label>
                                <asp:TextBox runat="server" ID="NewPassword" CssClass="passwordEntry" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword"
                                    CssClass="field-validation-error" ErrorMessage="Không được phép để trống." />
                            </li>
                            <li>
                                <asp:Label runat="server" ID="ConfirmNewPasswordLabel" AssociatedControlID="ConfirmNewPassword">Xác nhận mật khẩu mới</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmNewPassword" CssClass="passwordEntry" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword"
                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="Không được để trống." />
                                <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword"
                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="Mật khẩu nhập vào không chính xác." />
                            </li>
                        </ol>
                        <asp:Button runat="server" CommandName="Đổi mật khẩu" Text="Đổi mật khẩu" />
                    </fieldset>
                </ChangePasswordTemplate>
            </asp:ChangePassword>
        </asp:PlaceHolder>
    </section>

    <section id="externalLoginsForm">
        
        <asp:ListView runat="server" ID="externalLoginsList" ViewStateMode="Disabled"
            DataKeyNames="ProviderName,ProviderUserId" OnItemDeleting="externalLoginsList_ItemDeleting">
        
            <LayoutTemplate>
                <h3>Registered external logins</h3>
                <table>
                    <thead><tr><th>Service</th><th>User Name</th><th>Last Used</th><th>&nbsp;</th></tr></thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder"></tr>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    
                    <td><%# HttpUtility.HtmlEncode(Item<OpenAuthAccountData>().ProviderDisplayName) %></td>
                    <td><%# HttpUtility.HtmlEncode(Item<OpenAuthAccountData>().ProviderUserName) %></td>
                    <td><%# HttpUtility.HtmlEncode(ConvertToDisplayDateTime(Item<OpenAuthAccountData>().LastUsedUtc)) %></td>
                    <td>
                        <asp:Button runat="server" Text="Remove" CommandName="Delete" CausesValidation="false" 
                            ToolTip='<%# "Remove this " + Item<OpenAuthAccountData>().ProviderDisplayName + " login from your account" %>'
                            Visible="<%# CanRemoveExternalLogins %>" />
                    </td>
                    
                </tr>
            </ItemTemplate>
        </asp:ListView>

        <h3>Add an external login</h3>
        <uc:OpenAuthProviders runat="server" ReturnUrl="~/Account/Manage.aspx" />
    </section>
</asp:Content>
