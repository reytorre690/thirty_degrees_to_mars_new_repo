<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dataview.aspx.cs" Inherits="_30DegreesToMars_v2.Dataview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Fitler by Name:"></asp:Label>
            <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
            <asp:Button ID="ButtonFilter" runat="server" Text="Filter" OnClick="ButtonFilter_Click" />
            <asp:Button ID="ButtonClear" runat="server" Text="Clear Filter" OnClick="ButtonClear_Click"/>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowSorting="true" OnSorting="GridView1_Sorting">
        <Columns>
            <asp:BoundField DataField="ProductKey" HeaderText="ProductKey" SortExpression="ProductKey" />
            <asp:BoundField DataField="ProductAlternateKey" HeaderText="ProductAlternateKey" SortExpression="ProductAlternateKey" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            <asp:BoundField DataField="Style" HeaderText="Style" SortExpression="Style" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        </asp:GridView>
    </form>
</body>
</html>
