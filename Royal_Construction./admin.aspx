<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
     <div> <div id="welcomeMsg">
        <div id="leftline">
        </div>
        <div id="textWelcome">
            <span>Edit Data</span>
        </div>
        <div id="rightLine">
        </div>
    </div>
</div>
     <div align="center"><p><b>All data added here,will be reflected on the database as well as the Kitchen page.</b></p></div>





    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Conn %>" DeleteCommand="DELETE FROM [Kitchens] WHERE [kitchen_Id] = @original_kitchen_Id AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([image_id] = @original_image_id) OR ([image_id] IS NULL AND @original_image_id IS NULL))" InsertCommand="INSERT INTO [Kitchens] ([kitchen_Id], [description], [image_id]) VALUES (@kitchen_Id, @description, @image_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Kitchens]" UpdateCommand="UPDATE [Kitchens] SET [description] = @description, [image_id] = @image_id WHERE [kitchen_Id] = @original_kitchen_Id AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([image_id] = @original_image_id) OR ([image_id] IS NULL AND @original_image_id IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_kitchen_Id" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_image_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="kitchen_Id" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image_id" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image_id" Type="String" />
            <asp:Parameter Name="original_kitchen_Id" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_image_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <div align="center" style="height: 434px" >
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="kitchen_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="549px" Width="729px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="kitchen_Id" HeaderText="kitchen_Id" ReadOnly="True" SortExpression="kitchen_Id" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="image_id" HeaderText="image_id" SortExpression="image_id" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    </div>




    <br /><br /><br />
</asp:Content>

