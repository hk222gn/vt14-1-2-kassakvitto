<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Basic.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="TextBoxLabel" runat="server" Text="Label" AssociatedControlId="MainTextBox">Total Köpesumma</asp:Label>
        <div>
            <asp:TextBox ID="MainTextBox" runat="server" autofocus ="autofocus"></asp:TextBox>
            <asp:Label ID="KrLabel" runat="server" Text="Label" AssociatedControlId="MainTextBox">Kr</asp:Label>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" />
        </div>
    </div>
    </form>
</body>
</html>
