<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tiles.aspx.cs" Inherits="Tiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Tiles
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/Gallery.css" rel="stylesheet" type="text/css" />
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div id="welcomeMsg">
    <div id="leftline"></div>
    <div id="textWelcome"><span>TILES</span></div>
    <div id="rightLine"></div>
    </div>
    <div>
        <!--<div> 
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Value="0">Floor Tiles</asp:ListItem>
        <asp:ListItem Value="1">Wall Tiles</asp:ListItem>
        </asp:DropDownList>
        </div>-->
        
        <asp:MultiView ID="MultiView1" runat="server">

            <asp:View ID="View1" runat="server">
                  <div>
        <asp:DataList ID="DataList1" RepeatDirection="Horizontal" RepeatColumns="3 " runat="server">
            <ItemTemplate>
                <table >
                    <span>
                    <tr id="row1" >
                    <td id="entry" > <img src= "<%#Eval("Tile_Image")%>" alt="Image1" height="250px" width="250px"/> </td>
                    </tr> </span>
                    <tr align="center">
                    <td id="text" ><%#Eval("Description")%><br />
                    <%#Eval("Price")%> </td>
                    </tr>
                  
                </table>

            </ItemTemplate>
        </asp:DataList>

    </div>
    <div class="clear">
    </div>
               

            </asp:View>
            <asp:View ID="View2" runat="server">
                    <div>
        <asp:DataList ID="DataList2" RepeatDirection="Horizontal" RepeatColumns="3 " runat="server">
            <ItemTemplate>
                <table >
                    <span>
                    <tr id="row1" >
                    <td id="entry" > <img src= "<%#Eval("Tile_Image")%>" alt="Image1" height="250px" width="250px"/> </td>
                    </tr> </span>
                    <tr align="center">
                    <td id="text" ><%#Eval("Description")%> <br />
                    <%#Eval("Price")%></td>
                    </tr>
                  
                </table>

            </ItemTemplate>
        </asp:DataList>

    </div>
    <div class="clear">
    </div>

            </asp:View>

        </asp:MultiView>
    </div>
  
</asp:Content>

