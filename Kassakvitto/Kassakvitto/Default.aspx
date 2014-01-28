<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Basic.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <asp:Label ID="TextBoxLabel" runat="server" Text="Label" AssociatedControlId="MainTextBox">Total Köpesumma</asp:Label>
        <div id="form">
            
            <asp:TextBox ID="MainTextBox" runat="server" autofocus ="autofocus"></asp:TextBox>
            <asp:Label ID="KrLabel" runat="server" Text="Label" AssociatedControlId="MainTextBox">Kr</asp:Label>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The textbox can't be empty." ControlToValidate="MainTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The input has to be a number greater than 0." Operator="GreaterThan" Type="Double" ValueToCompare="0" ControlToValidate="MainTextBox" Display="Dynamic"></asp:CompareValidator>
            
        </div>
        <asp:Panel ID="recieptbox" runat="server" Visible="false">
            <div class="center">
                <p>Ost-co</p>
                <p>Tel: 0111-332-31-4</p>
                <p>Öppet: ALLTID 24/7</p>
            </div>
            <div id="reciept">
                <p>Totalt: <asp:Label ID="TotalLabel" runat="server" Text="Label" CssClass="right"></asp:Label></p>
                <p>Rabattsatts: <asp:Label ID="RabattsattsLabel" runat="server" Text="Label" CssClass="right"></asp:Label></p>
                <p>Rabatt: <asp:Label ID="RabattLabel" runat="server" Text="Label" CssClass="right"></asp:Label></p>
                <p>Att betala: <asp:Label ID="AttBetalaLabel" runat="server" Text="Label" CssClass="right"></asp:Label></p>
            </div>

        </asp:Panel>
            
    </div>
    </form>
</body>
</html>