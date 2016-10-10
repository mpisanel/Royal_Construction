<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Taps.aspx.cs" Inherits="Taps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Taps
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/Gallery.css" rel="stylesheet" type="text/css" />
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div id="welcomeMsg">
        <div id="leftline">
        </div>
        <div id="textWelcome">
            <span>TAPS</span>
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
                    <td id="entry" > <img src= "<%#Eval("Tap_Image")%>" alt="Image1" height="250px" width="250px"/> </td>
                    </tr> </span><br />
                    <tr align="center">
                    <td id="text" ><%#Eval("Desrciption")%> <br />
                    <%#Eval("Price")%> </td>
                    </tr>
                    
                  
                </table>

            </ItemTemplate>
        </asp:DataList>

    </div>
    <div class="clear">
    </div>
         
</asp:Content>

