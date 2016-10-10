<%@ Page  Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <link href="styles/Gallery.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="welcomeMsg">
        <div id="leftline">
        </div>
        <div id="textWelcome">
            <span>HOME</span>
        </div>
        <div id="rightLine">
        </div>
    </div>


    <div>


        <asp:DataList ID="DataList1" RepeatDirection="Horizontal" RepeatColumns="3 " runat="server">
            <ItemTemplate>
                <table >
                    <span>
                    <tr id="row1" >
                    <td id="entry" > <img src= "<%#Eval("imageID")%>" alt="Image1" height="250px" width="250px"/> </td>
                    </tr> </span><br />
                    <tr align="center">
                    <td id="text" ><%#Eval("description")%> </td>
                    </tr>
                    
                  
                </table>

            </ItemTemplate>
        </asp:DataList>

    </div>
    <div class="clear">
    </div>

</asp:Content>
