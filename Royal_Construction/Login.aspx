<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    
    <asp:Login ID="Login1" runat="server">
    </asp:Login>

    <label> Not yet A Member?</label>    
    <label> 
    <br />
    <a href="Register.aspx">Sign up Here</a><br /></label>
    
</asp:Content>

