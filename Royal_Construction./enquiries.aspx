<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiries.aspx.cs" Inherits="enquiries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 725px">
        <div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem Selected="True">Choose An option Below</asp:ListItem>
        <asp:ListItem>Inquiry Form</asp:ListItem>
        <asp:ListItem>Let Us Contact You</asp:ListItem>
        <asp:ListItem>Request A Quote</asp:ListItem>
        </asp:DropDownList>
            <div>
            <asp:TextBox ID="nameTxt" runat="server" style="z-index: 1; left: 320px; top: 146px; position: absolute; width: 192px; height: 28px;"></asp:TextBox>
            <asp:TextBox ID="phTxt" runat="server" style="z-index: 1; left: 318px; top: 276px; position: absolute; height: 30px; width: 193px;"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 94px; top: 206px; position: absolute" Text="Surname"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 91px; top: 276px; position: absolute; height: 39px; width: 120px" Text="Cell Number"></asp:Label>
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 100px; top: 147px; position: absolute" Text="Name"></asp:Label>
                <asp:TextBox ID="Msgtxt" runat="server" style="z-index: 1; left: 263px; top: 416px; position: absolute; height: 136px; width: 293px" TextMode="MultiLine"></asp:TextBox>
                <asp:TextBox ID="emailTxt" runat="server" style="z-index: 1; left: 315px; top: 348px; position: absolute; width: 193px; height: 29px"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 90px; top: 477px; position: absolute" Text="Message"></asp:Label>
                <asp:Button ID="submitBtn" runat="server" style="z-index: 1; left: 370px; top: 604px; position: absolute; width: 80px" Text="Submit" OnClick="submitBtn_Click" />
            <asp:TextBox ID="lastNmTxt" runat="server" style="z-index: 1; left: 316px; top: 207px; position: absolute; height: 29px; width: 197px;"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 92px; top: 360px; position: absolute" Text="Email Address"></asp:Label>
                <a href="enquiries.aspx">enquiries.aspx</a></div>
            </div>

    


    
    </div>
    </form>
</body>
</html>
