<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Select.aspx.cs" Inherits="WebApplication1.Select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" aria-multiline="False" aria-orientation="horizontal">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem Text="Просмотр" Value="Просмотр"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Delete.aspx" Text="Удаление" Value="Удаление"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Update.aspx" Text="Изменение" Value="Изменение"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Insert.aspx" Text="Добавление" Value="Добавление"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <p style="text-align: center">
            Таблица roster содержит следующие данные:</p>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="playerid" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="playerid" HeaderText="playerid" ReadOnly="True" SortExpression="playerid" />
                <asp:BoundField DataField="jersey" HeaderText="jersey" SortExpression="jersey" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                <asp:BoundField DataField="position" HeaderText="position" SortExpression="position" />
                <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday" />
                <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
                <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
                <asp:BoundField DataField="birthcity" HeaderText="birthcity" SortExpression="birthcity" />
                <asp:BoundField DataField="birthstate" HeaderText="birthstate" SortExpression="birthstate" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="C:\Users\Misha\Documents\CRITTERS.accdb" DeleteCommand="DELETE FROM `roster` WHERE `playerid` = ?" InsertCommand="INSERT INTO `roster` (`playerid`, `jersey`, `fname`, `sname`, `position`, `birthday`, `weight`, `height`, `birthcity`, `birthstate`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `playerid`, `jersey`, `fname`, `sname`, `position`, `birthday`, `weight`, `height`, `birthcity`, `birthstate` FROM `roster`" UpdateCommand="UPDATE `roster` SET `jersey` = ?, `fname` = ?, `sname` = ?, `position` = ?, `birthday` = ?, `weight` = ?, `height` = ?, `birthcity` = ?, `birthstate` = ? WHERE `playerid` = ?">
            <DeleteParameters>
                <asp:Parameter Name="playerid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="playerid" Type="String" />
                <asp:Parameter Name="jersey" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="birthday" Type="DateTime" />
                <asp:Parameter Name="weight" Type="Int32" />
                <asp:Parameter Name="height" Type="Int32" />
                <asp:Parameter Name="birthcity" Type="String" />
                <asp:Parameter Name="birthstate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="jersey" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="birthday" Type="DateTime" />
                <asp:Parameter Name="weight" Type="Int32" />
                <asp:Parameter Name="height" Type="Int32" />
                <asp:Parameter Name="birthcity" Type="String" />
                <asp:Parameter Name="birthstate" Type="String" />
                <asp:Parameter Name="playerid" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </form>
</body>
</html>
