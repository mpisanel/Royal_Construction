<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Ragister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Register
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
   
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="281px">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>

     <label> Already A Member?</label>    
    <label> 
    <br />
    <a href="Login.aspx">Log in Here</a><br /></label>
   
</asp:Content>

