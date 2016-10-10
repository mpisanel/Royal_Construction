<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Kitchens.aspx.cs" Inherits="Kitchens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Kitchens
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <link href="styles/Gallery.css" rel="stylesheet" type="text/css" />
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="welcomeMsg">
        <div id="leftline">
        </div>
        <div id="textWelcome">
            <span>KITCHENS</span>
        </div>
        <div id="rightLine">
        </div>
    </div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Value="0">Granite Sinks</asp:ListItem>
        <asp:ListItem Value="1">Stainless Steel Sinks</asp:ListItem>
         <asp:ListItem Value="2">Kitchens Decor</asp:ListItem>

    </asp:DropDownList>

    <div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                 <div>
        <asp:DataList ID="DataList1" RepeatDirection="Horizontal" RepeatColumns="3 " runat="server">
            <ItemTemplate>
                <table >
                    <span>
                    <tr id="row1" >
                    <td id="entry" > <img src= "<%#Eval("image_id")%>" alt="Image1" height="250px" width="250px"/> </td>
                    </tr> </span>
                    <tr align="center">
                    <td id="text" ><%#Eval("description")%> <br />
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
                       <asp:DataList ID="DataList2" runat="server" RepeatColumns="3 " RepeatDirection="Horizontal">
                           <ItemTemplate>
                               <table>
                                   <span>
                                   <tr id="row1">
                                       <td id="entry">
                                           <img src= "<%#Eval("image_id")%>" alt="Image1" height="250px" width="250px"/>
                                       </td>
                                   </tr>
                                   </span>
                                   <tr align="center">
                                       <td id="text"><%#Eval("description")%></td>
                                   </tr>
                               </table>
                           </ItemTemplate>
                       </asp:DataList>

    </div>
    <div class="clear">
    </div>
               
            </asp:View>



            <asp:View ID="View3" runat="server">
                 <div>
        <asp:DataList ID="DataList3" RepeatDirection="Horizontal" RepeatColumns="3 " runat="server">
            <ItemTemplate>
                <table >
                    <span>
                    <tr id="row1" >
                    <td id="entry" > <img src= "<%#Eval("image_Id")%>" alt="Image1" height="250px" width="250px"/> </td>
                    </tr> </span>
                    <tr align="center">
                    <td id="text" ><%#Eval("description")%> </td>
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
